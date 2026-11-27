// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_feed_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrdersOverviewModel _$OrdersOverviewModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_OrdersOverviewModel', json, ($checkedConvert) {
      final val = _OrdersOverviewModel(
        counts: $checkedConvert(
          'counts',
          (v) =>
              (v as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(k, (e as num).toInt()),
              ) ??
              const <String, int>{},
        ),
        tracking: $checkedConvert(
          'tracking',
          (v) =>
              (v as List<dynamic>?)
                  ?.map(
                    (e) =>
                        TrackingUpdateModel.fromJson(e as Map<String, dynamic>),
                  )
                  .toList() ??
              const <TrackingUpdateModel>[],
        ),
      );
      return val;
    });

Map<String, dynamic> _$OrdersOverviewModelToJson(
  _OrdersOverviewModel instance,
) => <String, dynamic>{
  'counts': instance.counts,
  'tracking': instance.tracking.map((e) => e.toJson()).toList(),
};

_TrackingUpdateModel _$TrackingUpdateModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_TrackingUpdateModel', json, ($checkedConvert) {
      final val = _TrackingUpdateModel(
        kind: $checkedConvert('kind', (v) => v as String),
        number: $checkedConvert('number', (v) => v as String),
        imageUrl: $checkedConvert('image_url', (v) => v as String),
        status: $checkedConvert(
          'status',
          (v) => StatusModel.fromJson(v as Map<String, dynamic>),
        ),
        at: $checkedConvert('at', (v) => v as String),
        text: $checkedConvert('text', (v) => v as String),
      );
      return val;
    }, fieldKeyMap: const {'imageUrl': 'image_url'});

Map<String, dynamic> _$TrackingUpdateModelToJson(
  _TrackingUpdateModel instance,
) => <String, dynamic>{
  'kind': instance.kind,
  'number': instance.number,
  'image_url': instance.imageUrl,
  'status': instance.status.toJson(),
  'at': instance.at,
  'text': instance.text,
};

_OrdersFeedModel _$OrdersFeedModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_OrdersFeedModel', json, ($checkedConvert) {
      final val = _OrdersFeedModel(
        cards: $checkedConvert(
          'cards',
          (v) =>
              (v as List<dynamic>?)
                  ?.map(
                    (e) => FeedCardModel.fromJson(e as Map<String, dynamic>),
                  )
                  .toList() ??
              const <FeedCardModel>[],
        ),
      );
      return val;
    });

Map<String, dynamic> _$OrdersFeedModelToJson(_OrdersFeedModel instance) =>
    <String, dynamic>{'cards': instance.cards.map((e) => e.toJson()).toList()};

_FeedCardModel _$FeedCardModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_FeedCardModel',
      json,
      ($checkedConvert) {
        final val = _FeedCardModel(
          kind: $checkedConvert('kind', (v) => v as String),
          number: $checkedConvert('number', (v) => v as String),
          createdAt: $checkedConvert('created_at', (v) => v as String),
          status: $checkedConvert(
            'status',
            (v) => StatusModel.fromJson(v as Map<String, dynamic>),
          ),
          items: $checkedConvert(
            'items',
            (v) => (v as List<dynamic>)
                .map((e) => FeedItemModel.fromJson(e as Map<String, dynamic>))
                .toList(),
          ),
          actions: $checkedConvert(
            'actions',
            (v) =>
                (v as List<dynamic>?)
                    ?.map(
                      (e) =>
                          FeedActionModel.fromJson(e as Map<String, dynamic>),
                    )
                    .toList() ??
                const <FeedActionModel>[],
          ),
          amountDue: $checkedConvert('amount_due', (v) => (v as num?)?.toInt()),
          track: $checkedConvert(
            'track',
            (v) => v == null
                ? null
                : FeedTrackModel.fromJson(v as Map<String, dynamic>),
          ),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at', 'amountDue': 'amount_due'},
    );

Map<String, dynamic> _$FeedCardModelToJson(_FeedCardModel instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'number': instance.number,
      'created_at': instance.createdAt,
      'status': instance.status.toJson(),
      'items': instance.items.map((e) => e.toJson()).toList(),
      'actions': instance.actions.map((e) => e.toJson()).toList(),
      'amount_due': instance.amountDue,
      'track': instance.track?.toJson(),
    };

_FeedItemModel _$FeedItemModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_FeedItemModel',
      json,
      ($checkedConvert) {
        final val = _FeedItemModel(
          id: $checkedConvert('id', (v) => v as String),
          productId: $checkedConvert('product_id', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          imageUrl: $checkedConvert('image_url', (v) => v as String),
          price: $checkedConvert('price', (v) => (v as num).toInt()),
          quantity: $checkedConvert('quantity', (v) => (v as num).toInt()),
          options: $checkedConvert('options', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'productId': 'product_id', 'imageUrl': 'image_url'},
    );

Map<String, dynamic> _$FeedItemModelToJson(_FeedItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'title': instance.title,
      'image_url': instance.imageUrl,
      'price': instance.price,
      'quantity': instance.quantity,
      'options': instance.options,
    };

_FeedTrackModel _$FeedTrackModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_FeedTrackModel', json, ($checkedConvert) {
      final val = _FeedTrackModel(
        title: $checkedConvert('title', (v) => v as String),
        text: $checkedConvert('text', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$FeedTrackModelToJson(_FeedTrackModel instance) =>
    <String, dynamic>{'title': instance.title, 'text': instance.text};

_FeedActionModel _$FeedActionModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_FeedActionModel',
      json,
      ($checkedConvert) {
        final val = _FeedActionModel(
          id: $checkedConvert('id', (v) => v as String),
          isPrimary: $checkedConvert('is_primary', (v) => v as bool? ?? false),
          itemId: $checkedConvert('item_id', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'isPrimary': 'is_primary', 'itemId': 'item_id'},
    );

Map<String, dynamic> _$FeedActionModelToJson(_FeedActionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_primary': instance.isPrimary,
      'item_id': instance.itemId,
    };
