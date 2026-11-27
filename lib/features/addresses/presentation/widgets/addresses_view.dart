import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/delivery_address.dart';
import '../bloc/addresses_cubit.dart';
import 'street_map.dart';

/// «Адреса» (UI_DESIGN §7.24): cards with a map thumbnail, the default
/// badge, an overflow menu; «Добавить адрес» at the bottom.
/// Expects [AddressesCubit].
class AddressesView extends StatelessWidget {
  const AddressesView({
    required this.onReload,
    required this.onAdd,
    required this.onEdit,
    super.key,
  });

  final Future<void> Function() onReload;
  final VoidCallback onAdd;
  final ValueChanged<DeliveryAddress> onEdit;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocConsumer<AddressesCubit, AddressesState>(
      listenWhen: (a, b) =>
          b.actionFailure != null && a.actionFailure != b.actionFailure,
      listener: (context, state) {
        if (state.actionFailure case final failure?) {
          showAppToast(context, message: actionFailureText(l10n, failure));
        }
      },
      builder: (context, state) {
        final failure = state.failure;
        return Scaffold(
          appBar: AppBar(title: Text(l10n.profileAddresses)),
          body: switch (state) {
            AddressesState(isLoading: true) => const SkeletonList(itemCount: 2),
            _ when failure != null => Center(
              child: SingleChildScrollView(
                child: FailureView(failure: failure, onRetry: onReload),
              ),
            ),
            AddressesState(addresses: []) => Center(
              child: EmptyState(
                icon: AppIcons.address,
                title: l10n.addressesEmpty,
                message: l10n.addressesEmptyText,
              ),
            ),
            AddressesState(:final addresses) => RefreshIndicator(
              onRefresh: onReload,
              child: ListView.separated(
                padding: const EdgeInsets.all(AppSpacing.screen),
                itemCount: addresses.length,
                separatorBuilder: (_, _) =>
                    const SizedBox(height: AppSpacing.x12),
                itemBuilder: (context, i) => _AddressCard(
                  address: addresses[i],
                  onEdit: () => onEdit(addresses[i]),
                ),
              ),
            ),
          },
          bottomNavigationBar: state.isLoading || failure != null
              ? null
              : StickyActionBar(
                  primary: PrimaryButton(
                    label: l10n.addressesAdd,
                    onPressed: onAdd,
                  ),
                ),
        );
      },
    );
  }
}

enum _Action { edit, makeDefault, delete }

class _AddressCard extends StatelessWidget {
  const _AddressCard({required this.address, required this.onEdit});

  final DeliveryAddress address;
  final VoidCallback onEdit;

  static const double _thumb = 72;

  Future<void> _delete(BuildContext context) async {
    final l10n = context.l10n;
    final cubit = context.read<AddressesCubit>();
    final isConfirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.addressesDeleteTitle),
        content: Text(address.address),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(l10n.actionCancel),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(l10n.actionRemove),
          ),
        ],
      ),
    );
    if (!(isConfirmed ?? false)) return;
    await cubit.delete(address.id);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final cubit = context.read<AddressesCubit>();
    return ContentCard(
      onTap: onEdit,
      padding: AppSpacing.cardPadding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: AppRadii.imageBorder,
            child: SizedBox.square(
              dimension: _thumb,
              child: StreetMap(center: address.point, pinSize: AppSizes.icon),
            ),
          ),
          const SizedBox(width: AppSpacing.x12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (address.isDefault) ...[
                  StatusChip(
                    label: l10n.addressesDefault,
                    tone: StatusTone.brand,
                    icon: AppIcons.check,
                  ),
                  const SizedBox(height: AppSpacing.x4),
                ],
                Text(address.address, style: context.text.bodyStrong),
                if (address.details.isNotEmpty)
                  Text(
                    address.details,
                    style: context.text.body.copyWith(color: c.inkSecondary),
                  ),
                Text(
                  address.region,
                  style: context.text.caption.copyWith(color: c.inkTertiary),
                ),
              ],
            ),
          ),
          PopupMenuButton<_Action>(
            icon: const Icon(AppIcons.more),
            tooltip: l10n.addressesMenu,
            onSelected: (action) => switch (action) {
              _Action.edit => onEdit(),
              _Action.makeDefault => cubit.setDefault(address.id),
              _Action.delete => _delete(context),
            },
            itemBuilder: (_) => [
              PopupMenuItem(
                value: _Action.edit,
                child: Text(l10n.addressesEdit),
              ),
              if (!address.isDefault)
                PopupMenuItem(
                  value: _Action.makeDefault,
                  child: Text(l10n.addressesMakeDefault),
                ),
              PopupMenuItem(
                value: _Action.delete,
                child: Text(
                  l10n.actionRemove,
                  style: TextStyle(color: c.danger),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
