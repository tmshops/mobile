// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeResponseModel _$HomeResponseModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_HomeResponseModel', json, ($checkedConvert) {
      final val = _HomeResponseModel(
        serverTime: $checkedConvert(
          'server_time',
          (v) => DateTime.parse(v as String),
        ),
        sections: $checkedConvert(
          'sections',
          (v) => (v as List<dynamic>)
              .map((e) => HomeSectionModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );
      return val;
    }, fieldKeyMap: const {'serverTime': 'server_time'});

Map<String, dynamic> _$HomeResponseModelToJson(_HomeResponseModel instance) =>
    <String, dynamic>{
      'server_time': instance.serverTime.toIso8601String(),
      'sections': instance.sections.map((e) => e.toJson()).toList(),
    };

VideoStoriesSectionModel _$VideoStoriesSectionModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('VideoStoriesSectionModel', json, ($checkedConvert) {
  final val = VideoStoriesSectionModel(
    stories: $checkedConvert(
      'stories',
      (v) => (v as List<dynamic>)
          .map((e) => VideoStoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    $type: $checkedConvert('type', (v) => v as String?),
  );
  return val;
}, fieldKeyMap: const {r'$type': 'type'});

Map<String, dynamic> _$VideoStoriesSectionModelToJson(
  VideoStoriesSectionModel instance,
) => <String, dynamic>{
  'stories': instance.stories.map((e) => e.toJson()).toList(),
  'type': instance.$type,
};

BannersSectionModel _$BannersSectionModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BannersSectionModel', json, ($checkedConvert) {
      final val = BannersSectionModel(
        banners: $checkedConvert(
          'banners',
          (v) => (v as List<dynamic>)
              .map((e) => BannerModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        $type: $checkedConvert('type', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {r'$type': 'type'});

Map<String, dynamic> _$BannersSectionModelToJson(
  BannersSectionModel instance,
) => <String, dynamic>{
  'banners': instance.banners.map((e) => e.toJson()).toList(),
  'type': instance.$type,
};

PasteLinkSectionModel _$PasteLinkSectionModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PasteLinkSectionModel', json, ($checkedConvert) {
  final val = PasteLinkSectionModel(
    sources: $checkedConvert(
      'sources',
      (v) => (v as List<dynamic>).map((e) => e as String).toList(),
    ),
    $type: $checkedConvert('type', (v) => v as String?),
  );
  return val;
}, fieldKeyMap: const {r'$type': 'type'});

Map<String, dynamic> _$PasteLinkSectionModelToJson(
  PasteLinkSectionModel instance,
) => <String, dynamic>{'sources': instance.sources, 'type': instance.$type};

DailyDealsSectionModel _$DailyDealsSectionModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'DailyDealsSectionModel',
  json,
  ($checkedConvert) {
    final val = DailyDealsSectionModel(
      title: $checkedConvert('title', (v) => v as String),
      endsAt: $checkedConvert('ends_at', (v) => DateTime.parse(v as String)),
      products: $checkedConvert(
        'products',
        (v) => (v as List<dynamic>)
            .map((e) => ProductSummaryModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      seeAll: $checkedConvert(
        'see_all',
        (v) => v == null ? null : LinkModel.fromJson(v as Map<String, dynamic>),
      ),
      $type: $checkedConvert('type', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'endsAt': 'ends_at',
    'seeAll': 'see_all',
    r'$type': 'type',
  },
);

Map<String, dynamic> _$DailyDealsSectionModelToJson(
  DailyDealsSectionModel instance,
) => <String, dynamic>{
  'title': instance.title,
  'ends_at': instance.endsAt.toIso8601String(),
  'products': instance.products.map((e) => e.toJson()).toList(),
  'see_all': instance.seeAll?.toJson(),
  'type': instance.$type,
};

CategoriesSectionModel _$CategoriesSectionModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CategoriesSectionModel', json, ($checkedConvert) {
  final val = CategoriesSectionModel(
    title: $checkedConvert('title', (v) => v as String),
    categories: $checkedConvert(
      'categories',
      (v) => (v as List<dynamic>)
          .map((e) => CategoryShortcutModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    $type: $checkedConvert('type', (v) => v as String?),
  );
  return val;
}, fieldKeyMap: const {r'$type': 'type'});

Map<String, dynamic> _$CategoriesSectionModelToJson(
  CategoriesSectionModel instance,
) => <String, dynamic>{
  'title': instance.title,
  'categories': instance.categories.map((e) => e.toJson()).toList(),
  'type': instance.$type,
};

ProductsSectionModel _$ProductsSectionModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ProductsSectionModel',
  json,
  ($checkedConvert) {
    final val = ProductsSectionModel(
      id: $checkedConvert('id', (v) => v as String),
      title: $checkedConvert('title', (v) => v as String),
      products: $checkedConvert(
        'products',
        (v) => (v as List<dynamic>)
            .map((e) => ProductSummaryModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      seeAll: $checkedConvert(
        'see_all',
        (v) => v == null ? null : LinkModel.fromJson(v as Map<String, dynamic>),
      ),
      $type: $checkedConvert('type', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {'seeAll': 'see_all', r'$type': 'type'},
);

Map<String, dynamic> _$ProductsSectionModelToJson(
  ProductsSectionModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'products': instance.products.map((e) => e.toJson()).toList(),
  'see_all': instance.seeAll?.toJson(),
  'type': instance.$type,
};

HowWeWorkSectionModel _$HowWeWorkSectionModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('HowWeWorkSectionModel', json, ($checkedConvert) {
  final val = HowWeWorkSectionModel(
    title: $checkedConvert('title', (v) => v as String),
    steps: $checkedConvert(
      'steps',
      (v) => (v as List<dynamic>).map((e) => e as String).toList(),
    ),
    delivery: $checkedConvert(
      'delivery',
      (v) => (v as List<dynamic>)
          .map((e) => DeliveryTermModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    $type: $checkedConvert('type', (v) => v as String?),
  );
  return val;
}, fieldKeyMap: const {r'$type': 'type'});

Map<String, dynamic> _$HowWeWorkSectionModelToJson(
  HowWeWorkSectionModel instance,
) => <String, dynamic>{
  'title': instance.title,
  'steps': instance.steps,
  'delivery': instance.delivery.map((e) => e.toJson()).toList(),
  'type': instance.$type,
};

UnknownSectionModel _$UnknownSectionModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UnknownSectionModel', json, ($checkedConvert) {
      final val = UnknownSectionModel(
        $type: $checkedConvert('type', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {r'$type': 'type'});

Map<String, dynamic> _$UnknownSectionModelToJson(
  UnknownSectionModel instance,
) => <String, dynamic>{'type': instance.$type};

_VideoStoryModel _$VideoStoryModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_VideoStoryModel',
      json,
      ($checkedConvert) {
        final val = _VideoStoryModel(
          id: $checkedConvert('id', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          posterUrl: $checkedConvert('poster_url', (v) => v as String),
          isViewed: $checkedConvert('is_viewed', (v) => v as bool? ?? false),
        );
        return val;
      },
      fieldKeyMap: const {'posterUrl': 'poster_url', 'isViewed': 'is_viewed'},
    );

Map<String, dynamic> _$VideoStoryModelToJson(_VideoStoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'poster_url': instance.posterUrl,
      'is_viewed': instance.isViewed,
    };

_BannerModel _$BannerModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_BannerModel', json, ($checkedConvert) {
      final val = _BannerModel(
        id: $checkedConvert('id', (v) => v as String),
        imageUrl: $checkedConvert('image_url', (v) => v as String),
        title: $checkedConvert('title', (v) => v as String),
        link: $checkedConvert(
          'link',
          (v) =>
              v == null ? null : LinkModel.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    }, fieldKeyMap: const {'imageUrl': 'image_url'});

Map<String, dynamic> _$BannerModelToJson(_BannerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image_url': instance.imageUrl,
      'title': instance.title,
      'link': instance.link?.toJson(),
    };

_LinkModel _$LinkModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_LinkModel', json, ($checkedConvert) {
      final val = _LinkModel(
        type: $checkedConvert('type', (v) => v as String),
        value: $checkedConvert('value', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$LinkModelToJson(_LinkModel instance) =>
    <String, dynamic>{'type': instance.type, 'value': instance.value};

_CategoryShortcutModel _$CategoryShortcutModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_CategoryShortcutModel', json, ($checkedConvert) {
  final val = _CategoryShortcutModel(
    slug: $checkedConvert('slug', (v) => v as String),
    name: $checkedConvert('name', (v) => v as String),
    iconUrl: $checkedConvert('icon_url', (v) => v as String),
  );
  return val;
}, fieldKeyMap: const {'iconUrl': 'icon_url'});

Map<String, dynamic> _$CategoryShortcutModelToJson(
  _CategoryShortcutModel instance,
) => <String, dynamic>{
  'slug': instance.slug,
  'name': instance.name,
  'icon_url': instance.iconUrl,
};

_DeliveryTermModel _$DeliveryTermModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_DeliveryTermModel', json, ($checkedConvert) {
      final val = _DeliveryTermModel(
        kind: $checkedConvert('kind', (v) => v as String),
        name: $checkedConvert('name', (v) => v as String),
        term: $checkedConvert('term', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$DeliveryTermModelToJson(_DeliveryTermModel instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'name': instance.name,
      'term': instance.term,
    };
