import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_notification.freezed.dart';

/// Decides the icon and its colour (UI_DESIGN §7.21).
enum NotificationType { order, parcel, payment, promo, support, other }

/// One entry of the notification centre (TZ §5.17).
@freezed
abstract class AppNotification with _$AppNotification {
  const factory AppNotification({
    required String id,
    required NotificationType type,

    /// Server text in the request language.
    required String title,
    required String body,
    required DateTime at,
    required bool isRead,

    /// Where a tap leads, in the website link format (TZ §4), e.g.
    /// `/account/orders/10228`.
    String? route,

    /// Thumbnail for promotions.
    String? imageUrl,
  }) = _AppNotification;
}

@freezed
abstract class NotificationsPage with _$NotificationsPage {
  const factory NotificationsPage({
    required List<AppNotification> items,
    required int unreadCount,
    String? nextCursor,
  }) = _NotificationsPage;
}
