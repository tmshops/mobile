import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/region/region_cubit.dart';
import '../../../../core/region/region_picker_sheet.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/money_format.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/checkout.dart';
import '../bloc/checkout_bloc.dart';
import 'checkout_section.dart';

/// 1. Recipient: a summary with «Изменить» when filled in before, else
/// the three fields (TZ §5.12.1).
class RecipientSection extends StatefulWidget {
  const RecipientSection({
    required this.recipient,
    required this.showError,
    super.key,
  });

  final Recipient recipient;
  final bool showError;

  @override
  State<RecipientSection> createState() => _RecipientSectionState();
}

class _RecipientSectionState extends State<RecipientSection> {
  late final _first = TextEditingController(text: widget.recipient.firstName);
  late final _last = TextEditingController(text: widget.recipient.lastName);
  late final _phone = TextEditingController(
    text: TmPhoneFormatter.format(widget.recipient.phone),
  );

  /// Saved data starts folded; new customers see the fields.
  late bool _isEditing = !widget.recipient.isValid;

  @override
  void didUpdateWidget(RecipientSection oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Saved data arrives after the first frame: fill the fields once.
    if (!oldWidget.recipient.isValid &&
        widget.recipient.isValid &&
        _first.text.isEmpty) {
      _first.text = widget.recipient.firstName;
      _last.text = widget.recipient.lastName;
      _phone.text = TmPhoneFormatter.format(widget.recipient.phone);
      setState(() => _isEditing = false);
    }
  }

  @override
  void dispose() {
    _first.dispose();
    _last.dispose();
    _phone.dispose();
    super.dispose();
  }

  void _edit(Recipient Function(Recipient r) change) =>
      editDraft(context, (d) => d.copyWith(recipient: change(d.recipient)));

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final r = widget.recipient;
    final error = widget.showError && !r.isValid
        ? l10n.checkoutRecipientError
        : null;
    return CheckoutSection(
      number: 1,
      title: l10n.checkoutRecipient,
      error: error,
      child: !_isEditing && r.isValid
          ? Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Names are data, not a sentence: a plain join is fine.
                      Text(
                        '${r.firstName} ${r.lastName}',
                        style: context.text.bodyStrong,
                      ),
                      Text(
                        '${PhoneField.countryCode} ${TmPhoneFormatter.format(r.phone)}',
                        style: context.text.caption.copyWith(
                          color: context.colors.inkSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
                TertiaryButton(
                  label: l10n.checkoutEdit,
                  onPressed: () => setState(() => _isEditing = true),
                ),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppTextField(
                  controller: _first,
                  label: l10n.checkoutFirstName,
                  textInputAction: TextInputAction.next,
                  autofillHints: const [AutofillHints.givenName],
                  onChanged: (v) => _edit((r) => r.copyWith(firstName: v)),
                ),
                const SizedBox(height: AppSpacing.x12),
                AppTextField(
                  controller: _last,
                  label: l10n.checkoutLastName,
                  textInputAction: TextInputAction.next,
                  autofillHints: const [AutofillHints.familyName],
                  onChanged: (v) => _edit((r) => r.copyWith(lastName: v)),
                ),
                const SizedBox(height: AppSpacing.x12),
                PhoneField(
                  controller: _phone,
                  onChanged: (digits) =>
                      _edit((r) => r.copyWith(phone: digits)),
                ),
              ],
            ),
    );
  }
}

/// 2. Receiving: Курьер / Самовывоз, region, address or pickup point.
class ReceivingSection extends StatelessWidget {
  const ReceivingSection({
    required this.draft,
    required this.preview,
    required this.showErrors,
    required this.savedAddresses,
    required this.onAddAddress,
    super.key,
  });

  final CheckoutDraft draft;
  final CheckoutPreview? preview;
  final bool showErrors;

  /// The account's addresses; empty: the fields to type one in.
  final List<SavedAddress> savedAddresses;

  /// Opens the address map; completes with the new address id, `null`
  /// when nothing was saved.
  final Future<String?> Function() onAddAddress;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final isCourier = draft.method == ReceivingMethod.courier;
    final problems = draft.problems(preview);
    final error = !showErrors
        ? null
        : isCourier && problems.contains(DraftProblem.address)
        ? l10n.checkoutAddressError
        : !isCourier && problems.contains(DraftProblem.pickupPoint)
        ? l10n.checkoutPickupError
        : null;
    return CheckoutSection(
      number: 2,
      title: l10n.checkoutReceiving,
      error: error,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppSegmentedControl<ReceivingMethod>(
            segments: [
              (ReceivingMethod.courier, l10n.checkoutCourier),
              (ReceivingMethod.pickup, l10n.checkoutPickup),
            ],
            selected: draft.method,
            onChanged: (m) => editDraft(context, (d) => d.copyWith(method: m)),
          ),
          const SizedBox(height: AppSpacing.x12),
          const _RegionRow(),
          const SizedBox(height: AppSpacing.x8),
          if (isCourier) ...[
            _CourierPrice(preview: preview),
            const SizedBox(height: AppSpacing.x8),
            if (savedAddresses.isEmpty)
              _TypedAddress(address: draft.address)
            else
              _SavedAddresses(
                addresses: savedAddresses,
                current: draft.address,
              ),
            const SizedBox(height: AppSpacing.x8),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: TertiaryButton(
                label: savedAddresses.isEmpty
                    ? l10n.checkoutAddressOnMap
                    : l10n.addressesAdd,
                icon: AppIcons.mapPin,
                onPressed: () async {
                  final bloc = context.read<CheckoutBloc>();
                  final id = await onAddAddress();
                  bloc.add(CheckoutEvent.addressesRequested(selectId: id));
                },
              ),
            ),
          ] else
            _PickupPoints(
              points: preview?.pickupPoints ?? const [],
              selectedId: draft.pickupPointId,
            ),
        ],
      ),
    );
  }
}

class _RegionRow extends StatelessWidget {
  const _RegionRow();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<RegionCubit, RegionState>(
      builder: (context, region) {
        final name = region.selectedName;
        if (name == null) return const SizedBox.shrink();
        return Align(
          alignment: AlignmentDirectional.centerStart,
          child: Semantics(
            hint: l10n.regionChange,
            child: AppChip(
              label: name,
              icon: AppIcons.chevronDown,
              onTap: () async {
                final cubit = context.read<RegionCubit>();
                final id = await showRegionPicker(
                  context,
                  regions: region.regions,
                  selectedId: region.selectedId,
                );
                if (id != null) await cubit.select(id);
              },
            ),
          ),
        );
      },
    );
  }
}

/// «Курьер — N TMT · бесплатно от …».
class _CourierPrice extends StatelessWidget {
  const _CourierPrice({required this.preview});

  final CheckoutPreview? preview;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final preview = this.preview;
    if (preview == null) return const SizedBox.shrink();
    final freeFrom = preview.courierFreeFrom;
    return Text.rich(
      TextSpan(
        text: l10n.checkoutCourierPrice(
          MoneyFormat.tmt(l10n, preview.courierPrice),
        ),
        children: [
          if (freeFrom != null) ...[
            const TextSpan(text: ' · '),
            TextSpan(
              text: l10n.checkoutCourierFree(MoneyFormat.tmt(l10n, freeFrom)),
            ),
          ],
        ],
      ),
      style: context.text.caption.copyWith(color: context.colors.inkSecondary),
    );
  }
}

/// The account's addresses as radio cards, and «Другой адрес» with the
/// fields to type one in.
class _SavedAddresses extends StatelessWidget {
  const _SavedAddresses({required this.addresses, required this.current});

  final List<SavedAddress> addresses;
  final CourierAddress current;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final isTyped = current.savedId == null;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (final address in addresses)
          _AddressOption(
            isSelected: address.id == current.savedId,
            onTap: () => editDraft(
              context,
              (d) => d.copyWith(address: address.asCourier),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(address.street, style: context.text.bodyStrong),
                if (address.details.isNotEmpty)
                  Text(address.details, style: context.text.body),
                if (address.isDefault)
                  Text(
                    l10n.addressesDefault,
                    style: context.text.caption.copyWith(color: c.primary),
                  ),
              ],
            ),
          ),
        _AddressOption(
          isSelected: isTyped,
          onTap: () {
            if (isTyped) return;
            editDraft(
              context,
              (d) => d.copyWith(address: const CourierAddress()),
            );
          },
          child: Text(
            l10n.checkoutOtherAddress,
            style: context.text.bodyStrong,
          ),
        ),
        if (isTyped) ...[
          const SizedBox(height: AppSpacing.x12),
          _TypedAddress(address: current),
        ],
      ],
    );
  }
}

class _AddressOption extends StatelessWidget {
  const _AddressOption({
    required this.isSelected,
    required this.onTap,
    required this.child,
  });

  final bool isSelected;
  final VoidCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Padding(
      padding: const EdgeInsets.only(top: AppSpacing.x8),
      child: Semantics(
        inMutuallyExclusiveGroup: true,
        checked: isSelected,
        child: Material(
          color: isSelected ? c.primarySoft : c.surface,
          borderRadius: AppRadii.cardBorder,
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: onTap,
            child: Padding(
              padding: AppSpacing.cardPadding,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      end: AppSpacing.x12,
                      top: AppSpacing.x2,
                    ),
                    child: RadioMark(isSelected: isSelected),
                  ),
                  Expanded(child: child),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Street and «квартира / ориентир» typed by hand.
class _TypedAddress extends StatefulWidget {
  const _TypedAddress({required this.address});

  final CourierAddress address;

  @override
  State<_TypedAddress> createState() => _TypedAddressState();
}

class _TypedAddressState extends State<_TypedAddress> {
  late final _street = TextEditingController(text: widget.address.street);
  late final _details = TextEditingController(text: widget.address.details);

  @override
  void didUpdateWidget(_TypedAddress oldWidget) {
    super.didUpdateWidget(oldWidget);
    // The address saved on the device arrives after the first frame.
    if (_street.text.isEmpty && widget.address.street.isNotEmpty) {
      _street.text = widget.address.street;
      _details.text = widget.address.details;
    }
  }

  @override
  void dispose() {
    _street.dispose();
    _details.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AppTextField(
          controller: _street,
          label: l10n.checkoutStreet,
          textInputAction: TextInputAction.next,
          autofillHints: const [AutofillHints.streetAddressLine1],
          onChanged: (v) => editDraft(
            context,
            (d) => d.copyWith(address: d.address.copyWith(street: v)),
          ),
        ),
        const SizedBox(height: AppSpacing.x12),
        AppTextField(
          controller: _details,
          label: l10n.checkoutAddressDetails,
          onChanged: (v) => editDraft(
            context,
            (d) => d.copyWith(address: d.address.copyWith(details: v)),
          ),
        ),
      ],
    );
  }
}

class _PickupPoints extends StatelessWidget {
  const _PickupPoints({required this.points, required this.selectedId});

  final List<PickupPoint> points;
  final String? selectedId;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final meta = context.text.caption.copyWith(color: c.inkSecondary);
    return Column(
      children: [
        for (final point in points)
          Padding(
            padding: const EdgeInsets.only(top: AppSpacing.x8),
            child: Semantics(
              inMutuallyExclusiveGroup: true,
              checked: point.id == selectedId,
              child: Material(
                color: point.id == selectedId ? c.primarySoft : c.surface,
                borderRadius: AppRadii.cardBorder,
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: () => editDraft(
                    context,
                    (d) => d.copyWith(pickupPointId: point.id),
                  ),
                  child: Padding(
                    padding: AppSpacing.cardPadding,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(
                            end: AppSpacing.x12,
                            top: AppSpacing.x2,
                          ),
                          child: RadioMark(isSelected: point.id == selectedId),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(point.name, style: context.text.bodyStrong),
                              Text(point.address, style: context.text.body),
                              Text(point.hours, style: meta),
                              Text(point.phone, style: meta),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
