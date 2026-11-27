import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/delivery_address.dart';
import '../bloc/address_editor_cubit.dart';
import 'street_map.dart';

/// Address on the map (UI_DESIGN §7.9): the map with a fixed pin,
/// «Моё местоположение», and a bottom card with the address, «квартира /
/// ориентир» and «Сохранить адрес». Expects [AddressEditorCubit].
class AddressEditorView extends StatelessWidget {
  const AddressEditorView({
    required this.isNew,
    required this.initialDetails,
    required this.onSaved,
    super.key,
  });

  final bool isNew;
  final String initialDetails;
  final ValueChanged<DeliveryAddress> onSaved;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final cubit = context.read<AddressEditorCubit>();
    return BlocListener<AddressEditorCubit, AddressEditorState>(
      listenWhen: (a, b) => a.saved == null && b.saved != null,
      listener: (context, state) {
        if (state.saved case final saved?) onSaved(saved);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(isNew ? l10n.addressNewTitle : l10n.addressEditTitle),
        ),
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned.fill(
                    child:
                        BlocSelector<
                          AddressEditorCubit,
                          AddressEditorState,
                          GeoPoint?
                        >(
                          selector: (s) => s.center,
                          builder: (context, center) => center == null
                              ? const Center(child: CircularProgressIndicator())
                              : StreetMap(center: center, onMoved: cubit.moved),
                        ),
                  ),
                  PositionedDirectional(
                    top: AppSpacing.x12,
                    start: AppSpacing.screen,
                    end: AppSpacing.screen,
                    child: _Hint(text: l10n.addressMoveHint),
                  ),
                  PositionedDirectional(
                    bottom: AppSpacing.x16,
                    end: AppSpacing.screen,
                    child: IconCircleButton(
                      icon: AppIcons.myLocation,
                      semanticLabel: l10n.addressMyLocation,
                      style: IconCircleStyle.light,
                      onPressed: cubit.myLocation,
                    ),
                  ),
                ],
              ),
            ),
            Material(
              color: c.background,
              child: SafeArea(
                top: false,
                child: _BottomCard(initialDetails: initialDetails),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Hint extends StatelessWidget {
  const _Hint({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: c.graphite.withValues(alpha: AppOpacity.overlayPanel),
        borderRadius: AppRadii.chipBorder,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.x16,
          vertical: AppSpacing.x8,
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: context.text.caption.copyWith(color: c.onGraphite),
        ),
      ),
    );
  }
}

class _BottomCard extends StatefulWidget {
  const _BottomCard({required this.initialDetails});

  final String initialDetails;

  @override
  State<_BottomCard> createState() => _BottomCardState();
}

class _BottomCardState extends State<_BottomCard> {
  late final _details = TextEditingController(text: widget.initialDetails);

  @override
  void dispose() {
    _details.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final cubit = context.read<AddressEditorCubit>();
    return BlocBuilder<AddressEditorCubit, AddressEditorState>(
      builder: (context, state) {
        final place = state.place;
        final saveFailure = state.saveFailure;
        return Padding(
          padding: const EdgeInsets.all(AppSpacing.screen),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Semantics(
                liveRegion: true,
                child: switch (state) {
                  _ when place != null => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(place.address, style: context.text.h3),
                      Text(
                        l10n.addressRegion(place.region),
                        style: context.text.caption.copyWith(
                          color: c.inkSecondary,
                        ),
                      ),
                    ],
                  ),
                  AddressEditorState(placeFailure: _?) => Row(
                    children: [
                      Icon(AppIcons.error, color: c.danger),
                      const SizedBox(width: AppSpacing.x8),
                      Expanded(
                        child: Text(
                          l10n.addressLookupFailed,
                          style: context.text.body,
                        ),
                      ),
                      TertiaryButton(
                        label: l10n.actionRetry,
                        onPressed: cubit.retryLookup,
                      ),
                    ],
                  ),
                  _ => Text(
                    l10n.addressLocating,
                    style: context.text.h3.copyWith(color: c.inkTertiary),
                  ),
                },
              ),
              const SizedBox(height: AppSpacing.x12),
              AppTextField(
                controller: _details,
                label: l10n.checkoutAddressDetails,
                textInputAction: TextInputAction.done,
                onChanged: cubit.detailsChanged,
              ),
              SwitchListTile.adaptive(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  l10n.addressesMakeDefault,
                  style: context.text.body,
                ),
                value: state.isDefault,
                onChanged: (v) => cubit.defaultChanged(isDefault: v),
              ),
              if (saveFailure != null) ...[
                Text(
                  actionFailureText(l10n, saveFailure),
                  style: context.text.caption.copyWith(color: c.danger),
                ),
                const SizedBox(height: AppSpacing.x8),
              ],
              PrimaryButton(
                label: l10n.addressSave,
                isLoading: state.isSaving,
                onPressed: state.canSave ? cubit.save : null,
              ),
            ],
          ),
        );
      },
    );
  }
}
