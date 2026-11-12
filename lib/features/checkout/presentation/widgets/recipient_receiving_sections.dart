import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/region/region_cubit.dart';
import '../../../../core/region/region_picker_sheet.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/money_format.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/checkout.dart';
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
    super.key,
  });

  final CheckoutDraft draft;
  final CheckoutPreview? preview;
  final bool showErrors;

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
          if (isCourier)
            _CourierFields(address: draft.address, preview: preview)
          else
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

class _CourierFields extends StatefulWidget {
  const _CourierFields({required this.address, required this.preview});

  final CourierAddress address;
  final CheckoutPreview? preview;

  @override
  State<_CourierFields> createState() => _CourierFieldsState();
}

class _CourierFieldsState extends State<_CourierFields> {
  late final _street = TextEditingController(text: widget.address.street);
  late final _details = TextEditingController(text: widget.address.details);

  @override
  void didUpdateWidget(_CourierFields oldWidget) {
    super.didUpdateWidget(oldWidget);
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
    final preview = widget.preview;
    final freeFrom = preview?.courierFreeFrom;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (preview != null)
          Text.rich(
            TextSpan(
              text: l10n.checkoutCourierPrice(
                MoneyFormat.tmt(l10n, preview.courierPrice),
              ),
              children: [
                if (freeFrom != null) ...[
                  const TextSpan(text: ' · '),
                  TextSpan(
                    text: l10n.checkoutCourierFree(
                      MoneyFormat.tmt(l10n, freeFrom),
                    ),
                  ),
                ],
              ],
            ),
            style: context.text.caption.copyWith(
              color: context.colors.inkSecondary,
            ),
          ),
        const SizedBox(height: AppSpacing.x8),
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
