// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationsPageModel _$NotificationsPageModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  '_NotificationsPageModel',
  json,
  ($checkedConvert) {
    final val = _NotificationsPageModel(
      items: $checkedConvert(
        'items',
        (v) => (v as List<dynamic>)
            .map((e) => NotificationModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      unreadCount: $checkedConvert('unread_count', (v) => (v as num).toInt()),
      nextCursor: $checkedConvert('next_cursor', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'unreadCount': 'unread_count',
    'nextCursor': 'next_cursor',
  },
);

Map<String, dynamic> _$NotificationsPageModelToJson(
  _NotificationsPageModel instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'unread_count': instance.unreadCount,
  'next_cursor': instance.nextCursor,
};

_NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_NotificationModel',
      json,
      ($checkedConvert) {
        final val = _NotificationModel(
          id: $checkedConvert('id', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          body: $checkedConvert('body', (v) => v as String),
          createdAt: $checkedConvert(
            'created_at',
            (v) => DateTime.parse(v as String),
          ),
          isRead: $checkedConvert('is_read', (v) => v as bool),
          route: $checkedConvert('route', (v) => v as String?),
          imageUrl: $checkedConvert('image_url', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'createdAt': 'created_at',
        'isRead': 'is_read',
        'imageUrl': 'image_url',
      },
    );

Map<String, dynamic> _$NotificationModelToJson(_NotificationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'body': instance.body,
      'created_at': instance.createdAt.toIso8601String(),
      'is_read': instance.isRead,
      'route': instance.route,
      'image_url': instance.imageUrl,
    };
