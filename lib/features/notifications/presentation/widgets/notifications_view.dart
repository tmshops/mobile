import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/notifications/notifications_counter.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/app_dates.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/app_notification.dart';
import '../bloc/notifications_cubit.dart';

/// «Уведомления» (UI_DESIGN §7.21): «Сегодня / Ранее», unread in bold
/// with a dot, swipe to mark read, «Прочитать все». Expects
/// [NotificationsCubit] and the global [NotificationsCounterCubit].
class NotificationsView extends StatelessWidget {
  const NotificationsView({required this.onOpen, this.now, super.key});

  /// Opens a notification's link.
  final ValueChanged<String> onOpen;

  /// Clock for the groups and «5 мин назад»; tests pass a fixed one.
  final DateTime? now;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final cubit = context.read<NotificationsCubit>();
    String language() => context.read<LocaleCubit>().state.languageCode;
    return BlocConsumer<NotificationsCubit, NotificationsState>(
      // The tab dot and the Home bell follow this screen.
      listenWhen: (a, b) => !b.isLoading && a.unreadCount != b.unreadCount,
      listener: (context, state) =>
          context.read<NotificationsCounterCubit>().set(state.unreadCount),
      builder: (context, state) => Scaffold(
        appBar: AppBar(title: Text(l10n.profileNotifications)),
        body: switch (state) {
          NotificationsState(items: [], isLoading: true) =>
            const SkeletonList(),
          NotificationsState(items: [], :final failure?) => Center(
            child: SingleChildScrollView(
              child: FailureView(
                failure: failure,
                onRetry: () => cubit.load(language()),
              ),
            ),
          ),
          NotificationsState(items: []) => Center(
            child: SingleChildScrollView(
              child: EmptyState(
                icon: AppIcons.bell,
                title: l10n.notificationsEmptyTitle,
                message: l10n.notificationsEmptyText,
              ),
            ),
          ),
          _ => Column(
            children: [
              // Under the app bar, not in it: «Прочитать все» does not fit
              // there in Turkmen at large text sizes.
              if (state.unreadCount > 0)
                _ReadAllBar(
                  count: state.unreadCount,
                  onReadAll: cubit.markAllRead,
                ),
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () => cubit.load(language()),
                  child: _List(
                    state: state,
                    now: now ?? DateTime.now(),
                    onOpen: (n) {
                      cubit.markRead(n.id);
                      final route = n.route;
                      if (route != null) onOpen(route);
                    },
                    onRead: (n) => cubit.markRead(n.id),
                    onMore: () => cubit.loadMore(language()),
                  ),
                ),
              ),
            ],
          ),
        },
      ),
    );
  }
}

class _List extends StatelessWidget {
  const _List({
    required this.state,
    required this.now,
    required this.onOpen,
    required this.onRead,
    required this.onMore,
  });

  final NotificationsState state;
  final DateTime now;
  final ValueChanged<AppNotification> onOpen;
  final ValueChanged<AppNotification> onRead;
  final VoidCallback onMore;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final today = DateTime(now.year, now.month, now.day);
    // Newest first: today's run, then the rest.
    final rows = <Object>[];
    String? group;
    for (final n in state.items) {
      final label = n.at.isBefore(today)
          ? l10n.notificationsEarlier
          : l10n.dateToday;
      if (label != group) rows.add(label);
      group = label;
      rows.add(n);
    }
    return ListView.builder(
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: rows.length + 1,
      itemBuilder: (context, i) {
        if (i == rows.length) {
          return _Footer(state: state, onRetry: onMore);
        }
        // Near the end: the next page. After a failure only «Повторить»,
        // or it would retry in a loop.
        if (i >= rows.length - 3 &&
            state.hasMore &&
            state.moreFailure == null) {
          WidgetsBinding.instance.addPostFrameCallback((_) => onMore());
        }
        return switch (rows[i]) {
          final String label => _GroupHeader(label: label),
          final AppNotification n => NotificationRow(
            key: ValueKey(n.id),
            notification: n,
            now: now,
            onTap: () => onOpen(n),
            onRead: () => onRead(n),
          ),
          _ => const SizedBox.shrink(),
        };
      },
    );
  }
}

/// «Непрочитанных: 4» and «Прочитать все».
class _ReadAllBar extends StatelessWidget {
  const _ReadAllBar({required this.count, required this.onReadAll});

  final int count;
  final VoidCallback onReadAll;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: c.background,
        border: Border(bottom: BorderSide(color: c.divider)),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(
          AppSpacing.screen,
          0,
          AppSpacing.x4,
          0,
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                l10n.notificationsUnread(count),
                style: context.text.body.copyWith(color: c.inkSecondary),
              ),
            ),
            Flexible(
              child: TertiaryButton(
                label: l10n.notificationsReadAll,
                onPressed: onReadAll,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _GroupHeader extends StatelessWidget {
  const _GroupHeader({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.fromLTRB(
      AppSpacing.screen,
      AppSpacing.x16,
      AppSpacing.screen,
      AppSpacing.x4,
    ),
    child: Semantics(header: true, child: Text(label, style: context.text.h3)),
  );
}

/// Icon in a tinted circle by type, title (bold while unread) with a dot,
/// two lines of text, «5 мин назад», a thumbnail for promotions. Swiping
/// marks it read; it stays in the list.
class NotificationRow extends StatelessWidget {
  const NotificationRow({
    required this.notification,
    required this.now,
    required this.onTap,
    required this.onRead,
    super.key,
  });

  final AppNotification notification;
  final DateTime now;
  final VoidCallback onTap;
  final VoidCallback onRead;

  static const double _circle = 40;
  static const double _thumb = 56;
  static const double _dot = 8;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final n = notification;
    final (icon, color) = switch (n.type) {
      NotificationType.order => (AppIcons.order, c.primary),
      NotificationType.parcel => (AppIcons.package, c.info),
      NotificationType.payment => (AppIcons.wallet, c.warning),
      NotificationType.promo => (AppIcons.promo, c.accent),
      NotificationType.support => (AppIcons.support, c.graphite),
      NotificationType.other => (AppIcons.bell, c.inkSecondary),
    };
    final image = n.imageUrl;
    final row = InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.screen,
          vertical: AppSpacing.x12,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: _circle,
              height: _circle,
              decoration: BoxDecoration(
                color: color.withValues(alpha: AppOpacity.tint),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, size: AppSizes.iconDense, color: color),
            ),
            const SizedBox(width: AppSpacing.x12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          n.title,
                          style: n.isRead
                              ? context.text.body
                              : context.text.bodyStrong,
                        ),
                      ),
                      if (!n.isRead) ...[
                        const SizedBox(width: AppSpacing.x8),
                        Container(
                          width: _dot,
                          height: _dot,
                          decoration: BoxDecoration(
                            color: c.primary,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ],
                  ),
                  const SizedBox(height: AppSpacing.x2),
                  Text(
                    n.body,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: context.text.body.copyWith(color: c.inkSecondary),
                  ),
                  const SizedBox(height: AppSpacing.x4),
                  Text(
                    AppDates.ago(l10n, n.at, now),
                    style: context.text.caption.copyWith(color: c.inkTertiary),
                  ),
                ],
              ),
            ),
            if (image != null) ...[
              const SizedBox(width: AppSpacing.x12),
              ClipRRect(
                borderRadius: AppRadii.imageBorder,
                child: SizedBox.square(
                  dimension: _thumb,
                  child: AppNetworkImage(url: image, semanticLabel: n.title),
                ),
              ),
            ],
          ],
        ),
      ),
    );
    final labelled = Semantics(
      label: n.isRead ? null : l10n.navUnread,
      child: row,
    );
    if (n.isRead) return labelled;
    return Dismissible(
      key: ValueKey('read-${n.id}'),
      direction: DismissDirection.endToStart,
      // Marks read and springs back: the notification stays in the list.
      confirmDismiss: (_) async {
        onRead();
        return false;
      },
      background: Container(
        alignment: AlignmentDirectional.centerEnd,
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.x24),
        color: c.primarySoft,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(AppIcons.check, color: c.primaryPressed),
            const SizedBox(width: AppSpacing.x8),
            Text(
              l10n.notificationsMarkRead,
              style: context.text.bodyStrong.copyWith(color: c.primaryPressed),
            ),
          ],
        ),
      ),
      child: labelled,
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer({required this.state, required this.onRetry});

  final NotificationsState state;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    if (state.isLoadingMore) {
      return const Padding(
        padding: EdgeInsets.all(AppSpacing.x16),
        child: Center(
          child: SizedBox.square(
            dimension: AppSizes.spinner,
            child: CircularProgressIndicator(
              strokeWidth: AppSizes.selectedBorder,
            ),
          ),
        ),
      );
    }
    if (state.moreFailure != null) {
      return Padding(
        padding: AppSpacing.screenPadding,
        child: Row(
          children: [
            Expanded(
              child: Text(
                context.l10n.walletLoadMoreFailed,
                style: context.text.caption.copyWith(
                  color: context.colors.inkSecondary,
                ),
              ),
            ),
            TertiaryButton(label: context.l10n.actionRetry, onPressed: onRetry),
          ],
        ),
      );
    }
    return const SizedBox(height: AppSpacing.section);
  }
}
