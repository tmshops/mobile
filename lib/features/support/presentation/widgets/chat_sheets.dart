import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/external_links.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/chat.dart';

/// Support contacts besides the chat (TZ §5.17), from the config.
class SupportChannels {
  const SupportChannels({this.phone, this.telegram, this.whatsapp});

  final String? phone;
  final String? telegram;
  final String? whatsapp;

  bool get isEmpty => phone == null && telegram == null && whatsapp == null;
}

/// What the «+» button attaches.
enum ChatAttachment { camera, gallery, order, findForMe }

/// «+» sheet: Камера / Галерея / Заказ / Найдите мне товар.
Future<ChatAttachment?> showAttachSheet(BuildContext context) {
  final l10n = context.l10n;
  return showAppBottomSheet<ChatAttachment>(
    context: context,
    builder: (context) => AppBottomSheet(
      title: l10n.chatAttach,
      child: MenuGroup(
        children: [
          for (final (option, icon, title) in [
            (ChatAttachment.camera, AppIcons.camera, l10n.chatAttachCamera),
            (ChatAttachment.gallery, AppIcons.image, l10n.chatAttachGallery),
            (ChatAttachment.order, AppIcons.order, l10n.chatAttachOrder),
            (ChatAttachment.findForMe, AppIcons.sparkle, l10n.photoFindForMe),
          ])
            MenuRow(
              icon: icon,
              title: title,
              onTap: () => Navigator.of(context).pop(option),
            ),
        ],
      ),
    ),
  );
}

/// Phone, Telegram, WhatsApp.
Future<void> showContactsSheet(BuildContext context, SupportChannels ways) {
  final l10n = context.l10n;
  final (phone, telegram, whatsapp) = (
    ways.phone,
    ways.telegram,
    ways.whatsapp,
  );
  return showAppBottomSheet<void>(
    context: context,
    builder: (context) => AppBottomSheet(
      title: l10n.supportOtherWays,
      child: MenuGroup(
        children: [
          if (phone != null)
            MenuRow(
              icon: AppIcons.phone,
              title: '${l10n.supportCall} · $phone',
              onTap: () => ExternalLinks.call(context, phone),
            ),
          if (telegram != null)
            MenuRow(
              icon: AppIcons.telegram,
              title: l10n.infoTelegram,
              onTap: () => ExternalLinks.url(context, telegram),
            ),
          if (whatsapp != null)
            MenuRow(
              icon: AppIcons.whatsapp,
              title: l10n.infoWhatsapp,
              onTap: () => ExternalLinks.url(context, whatsapp),
            ),
        ],
      ),
    ),
  );
}

/// Picks one of the customer's orders; `null` when closed.
Future<OrderRef?> showOrderPicker(BuildContext context, List<OrderRef> orders) {
  final l10n = context.l10n;
  return showAppBottomSheet<OrderRef>(
    context: context,
    builder: (context) => AppBottomSheet(
      title: l10n.chatPickOrder,
      child: orders.isEmpty
          ? Padding(
              padding: const EdgeInsets.symmetric(vertical: AppSpacing.x24),
              child: Text(
                l10n.chatNoOrders,
                textAlign: TextAlign.center,
                style: context.text.body.copyWith(
                  color: context.colors.inkSecondary,
                ),
              ),
            )
          : MenuGroup(
              children: [
                for (final order in orders)
                  MenuRow(
                    icon: AppIcons.order,
                    title: '${l10n.chatOrder(order.number)} · ${order.status}',
                    onTap: () => Navigator.of(context).pop(order),
                  ),
              ],
            ),
    ),
  );
}

/// Picks up to [max] of [photos]; `null` when closed.
Future<List<String>?> showPhotoPicker(
  BuildContext context, {
  required List<String> photos,
  required int max,
}) => showAppBottomSheet<List<String>>(
  context: context,
  builder: (_) => _PhotoPickerSheet(photos: photos, max: max),
);

class _PhotoPickerSheet extends StatefulWidget {
  const _PhotoPickerSheet({required this.photos, required this.max});

  final List<String> photos;
  final int max;

  @override
  State<_PhotoPickerSheet> createState() => _PhotoPickerSheetState();
}

class _PhotoPickerSheetState extends State<_PhotoPickerSheet> {
  final _chosen = <String>[];

  void _toggle(String url) => setState(() {
    if (_chosen.remove(url)) return;
    // One photo at a time (the camera) swaps instead of refusing.
    if (widget.max == 1) _chosen.clear();
    if (_chosen.length < widget.max) _chosen.add(url);
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AppBottomSheet(
      title: l10n.chatPickPhotos,
      action: PrimaryButton(
        label: l10n.chatSendPhotos(_chosen.length),
        onPressed: _chosen.isEmpty
            ? null
            : () => Navigator.of(context).pop(List<String>.of(_chosen)),
      ),
      child: PhotoGrid(
        photos: widget.photos,
        chosen: _chosen,
        onToggle: _toggle,
      ),
    );
  }
}

/// Device photos as squares; a chosen one is outlined and numbered.
class PhotoGrid extends StatelessWidget {
  const PhotoGrid({
    required this.photos,
    required this.chosen,
    required this.onToggle,
    super.key,
  });

  final List<String> photos;
  final List<String> chosen;
  final ValueChanged<String> onToggle;

  static const int _columns = 3;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return GridView.count(
      crossAxisCount: _columns,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: AppSpacing.x4,
      crossAxisSpacing: AppSpacing.x4,
      children: [
        for (final photo in photos)
          Semantics(
            button: true,
            selected: chosen.contains(photo),
            child: GestureDetector(
              onTap: () => onToggle(photo),
              child: ClipRRect(
                borderRadius: AppRadii.imageBorder,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    AppNetworkImage(url: photo),
                    if (chosen.contains(photo))
                      DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: AppRadii.imageBorder,
                          border: Border.all(
                            color: c.primary,
                            width: AppSizes.selectedBorder * 2,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional.topEnd,
                          child: Padding(
                            padding: const EdgeInsets.all(AppSpacing.x4),
                            child: CircleAvatar(
                              radius: AppSizes.iconSmall / 2 + AppSpacing.x2,
                              backgroundColor: c.primary,
                              child: Text(
                                '${chosen.indexOf(photo) + 1}',
                                style: context.text.micro.copyWith(
                                  color: c.onPrimary,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}
