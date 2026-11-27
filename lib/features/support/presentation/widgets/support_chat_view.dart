import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/product/domain/product_summary.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/chat.dart';
import '../bloc/support_chat_cubit.dart';
import 'chat_bubbles.dart';
import 'chat_input_bar.dart';
import 'chat_sheets.dart';

/// Support chat screen (UI_DESIGN §7.22). Expects [SupportChatCubit].
class SupportChatView extends StatelessWidget {
  const SupportChatView({
    required this.contacts,
    required this.onOpenProduct,
    required this.onOpenOrder,
    required this.onFindForMe,
    super.key,
  });

  final SupportChannels contacts;
  final ValueChanged<ProductSummary> onOpenProduct;
  final ValueChanged<String> onOpenOrder;
  final Future<ChatMessage?> Function() onFindForMe;

  Future<void> _findForMe(BuildContext context) async {
    final cubit = context.read<SupportChatCubit>();
    final card = await onFindForMe();
    if (card != null) cubit.showRequest(card);
  }

  Future<void> _attach(BuildContext context) async {
    final cubit = context.read<SupportChatCubit>();
    final option = await showAttachSheet(context);
    if (option == null || !context.mounted) return;
    final state = cubit.state;
    switch (option) {
      // Until a camera package is approved, «taking a photo» picks one
      // of the device photos (see DevicePhotos).
      case ChatAttachment.camera || ChatAttachment.gallery:
        final photos = await showPhotoPicker(
          context,
          photos: state.photos,
          max: option == ChatAttachment.camera ? 1 : _maxPhotos,
        );
        if (photos != null) await cubit.send(ChatDraft(images: photos));
      case ChatAttachment.order:
        final order = await showOrderPicker(context, state.orders);
        if (order == null) return;
        await cubit.send(ChatDraft(orderNumber: order.number));
      case ChatAttachment.findForMe:
        await _findForMe(context);
    }
  }

  static const _maxPhotos = 4;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SupportChatCubit>();
    return Scaffold(
      appBar: _ChatAppBar(
        onMore: contacts.isEmpty
            ? null
            : () => showContactsSheet(context, contacts),
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<SupportChatCubit, SupportChatState>(
              builder: (context, state) => switch (state) {
                SupportChatState(isLoading: true) => const Center(
                  child: CircularProgressIndicator(),
                ),
                SupportChatState(:final failure?) => Center(
                  child: SingleChildScrollView(
                    child: FailureView(
                      failure: failure,
                      onRetry: () => cubit.load(
                        context.read<LocaleCubit>().state.languageCode,
                      ),
                    ),
                  ),
                ),
                SupportChatState(messages: []) => _EmptyChat(
                  onSend: (text) => cubit.send(ChatDraft(text: text)),
                  onFindForMe: () => _findForMe(context),
                ),
                _ => _MessageList(
                  state: state,
                  onOpenProduct: onOpenProduct,
                  onOpenOrder: onOpenOrder,
                ),
              },
            ),
          ),
          ChatInputBar(
            onAttach: () => _attach(context),
            onSend: (text) => cubit.send(ChatDraft(text: text)),
          ),
        ],
      ),
    );
  }
}

class _ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _ChatAppBar({required this.onMore});

  final VoidCallback? onMore;

  static const double _avatar = 36;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final more = onMore;
    return AppBar(
      titleSpacing: 0,
      title: Row(
        children: [
          CircleAvatar(
            radius: _avatar / 2,
            backgroundColor: c.primarySoft,
            child: Icon(AppIcons.support, color: c.primary),
          ),
          const SizedBox(width: AppSpacing.x12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(l10n.supportTitle, style: context.text.bodyStrong),
                Text(
                  l10n.supportHours,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.text.micro.copyWith(color: c.inkSecondary),
                ),
              ],
            ),
          ),
        ],
      ),
      actions: [
        if (more != null)
          IconButton(
            icon: const Icon(AppIcons.more),
            tooltip: l10n.supportOtherWays,
            onPressed: more,
          ),
      ],
    );
  }
}

/// Newest at the bottom; older pages load when the top comes near.
class _MessageList extends StatelessWidget {
  const _MessageList({
    required this.state,
    required this.onOpenProduct,
    required this.onOpenOrder,
  });

  final SupportChatState state;
  final ValueChanged<ProductSummary> onOpenProduct;
  final ValueChanged<String> onOpenOrder;

  static const double _loadOlderAt = 400;

  static bool _sameDay(DateTime a, DateTime b) =>
      a.year == b.year && a.month == b.month && a.day == b.day;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SupportChatCubit>();
    final messages = state.messages;
    final now = DateTime.now();
    return NotificationListener<ScrollNotification>(
      onNotification: (n) {
        if (n.metrics.extentAfter < _loadOlderAt) cubit.loadOlder();
        return false;
      },
      child: ListView.builder(
        reverse: true,
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.screen,
          vertical: AppSpacing.x12,
        ),
        itemCount: messages.length + (state.hasOlder ? 1 : 0),
        itemBuilder: (context, i) {
          if (i == messages.length) {
            return const Padding(
              padding: EdgeInsets.all(AppSpacing.x16),
              child: Center(child: CircularProgressIndicator()),
            );
          }
          final message = messages[i];
          final older = i + 1 < messages.length ? messages[i + 1] : null;
          final startsDay =
              (older == null && !state.hasOlder) ||
              (older != null && !_sameDay(older.sentAt, message.sentAt));
          return Padding(
            padding: const EdgeInsets.only(top: AppSpacing.x8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (startsDay) DaySeparator(date: message.sentAt, now: now),
                MessageBubble(
                  key: ValueKey(message.id),
                  message: message,
                  onRetry: () => cubit.retry(message.id),
                  onOpenProduct: onOpenProduct,
                  onOpenOrder: onOpenOrder,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

/// «Напишите нам» with quick-start chips.
class _EmptyChat extends StatelessWidget {
  const _EmptyChat({required this.onSend, required this.onFindForMe});

  final ValueChanged<String> onSend;
  final VoidCallback onFindForMe;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Center(
      child: SingleChildScrollView(
        padding: AppSpacing.screenPadding,
        child: Column(
          children: [
            EmptyState(
              icon: AppIcons.chat,
              title: l10n.chatEmptyTitle,
              message: l10n.supportHours,
            ),
            const SizedBox(height: AppSpacing.x16),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: AppSpacing.x8,
              runSpacing: AppSpacing.x8,
              children: [
                for (final text in [
                  l10n.chatQuickWhereOrder,
                  l10n.chatQuickSurcharge,
                ])
                  AppChip(label: text, onTap: () => onSend(text)),
                AppChip(
                  label: l10n.photoFindForMe,
                  icon: AppIcons.sparkle,
                  onTap: onFindForMe,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
