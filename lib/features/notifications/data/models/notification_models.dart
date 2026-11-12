import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/app_notification.dart';

part 'notification_models.freezed.dart';
part 'notification_models.g.dart';

/// GET /notifications?cursor=.
@freezed
abstract class NotificationsPageModel with _$NotificationsPageModel {
  const factory NotificationsPageModel({
    required List<NotificationModel> items,
    required int unreadCount,
    String? nextCursor,
  }) = _NotificationsPageModel;

  factory NotificationsPageModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationsPageModelFromJson(json);
}

@freezed
abstract class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    required String id,

    /// order, parcel, payment, promo, support; others get a generic icon.
    required String type,
    required String title,
    required String body,
    required DateTime createdAt,
    required bool isRead,
    String? route,
    String? imageUrl,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}

extension NotificationsPageModelX on NotificationsPageModel {
  NotificationsPage toEntity() => NotificationsPage(
    items: [
      for (final n in items)
        AppNotification(
          id: n.id,
          type: switch (n.type) {
            'order' => NotificationType.order,
            'parcel' => NotificationType.parcel,
            'payment' => NotificationType.payment,
            'promo' => NotificationType.promo,
            'support' => NotificationType.support,
            _ => NotificationType.other,
          },
          title: n.title,
          body: n.body,
          at: n.createdAt.toLocal(),
          isRead: n.isRead,
          route: n.route,
          imageUrl: n.imageUrl,
        ),
    ],
    unreadCount: unreadCount,
    nextCursor: nextCursor,
  );
}
