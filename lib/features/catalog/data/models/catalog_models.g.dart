// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryTreeModel _$CategoryTreeModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_CategoryTreeModel', json, ($checkedConvert) {
      final val = _CategoryTreeModel(
        categories: $checkedConvert(
          'categories',
          (v) => (v as List<dynamic>)
              .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$CategoryTreeModelToJson(_CategoryTreeModel instance) =>
    <String, dynamic>{
      'categories': instance.categories.map((e) => e.toJson()).toList(),
    };

_CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_CategoryModel', json, ($checkedConvert) {
      final val = _CategoryModel(
        slug: $checkedConvert('slug', (v) => v as String),
        name: $checkedConvert('name', (v) => v as String),
        iconUrl: $checkedConvert('icon_url', (v) => v as String?),
        children: $checkedConvert(
          'children',
          (v) =>
              (v as List<dynamic>?)
                  ?.map(
                    (e) => CategoryModel.fromJson(e as Map<String, dynamic>),
                  )
                  .toList() ??
              const <CategoryModel>[],
        ),
      );
      return val;
    }, fieldKeyMap: const {'iconUrl': 'icon_url'});

Map<String, dynamic> _$CategoryModelToJson(_CategoryModel instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'name': instance.name,
      'icon_url': instance.iconUrl,
      'children': instance.children.map((e) => e.toJson()).toList(),
    };

_ProductListPageModel _$ProductListPageModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_ProductListPageModel', json, ($checkedConvert) {
  final val = _ProductListPageModel(
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>)
          .map((e) => ProductSummaryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    total: $checkedConvert('total', (v) => (v as num).toInt()),
    nextCursor: $checkedConvert('next_cursor', (v) => v as String?),
    banner: $checkedConvert(
      'banner',
      (v) => v == null
          ? null
          : CategoryBannerModel.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
}, fieldKeyMap: const {'nextCursor': 'next_cursor'});

Map<String, dynamic> _$ProductListPageModelToJson(
  _ProductListPageModel instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'total': instance.total,
  'next_cursor': instance.nextCursor,
  'banner': instance.banner?.toJson(),
};

_CategoryBannerModel _$CategoryBannerModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_CategoryBannerModel', json, ($checkedConvert) {
      final val = _CategoryBannerModel(
        imageUrl: $checkedConvert('image_url', (v) => v as String),
        title: $checkedConvert('title', (v) => v as String),
      );
      return val;
    }, fieldKeyMap: const {'imageUrl': 'image_url'});

Map<String, dynamic> _$CategoryBannerModelToJson(
  _CategoryBannerModel instance,
) => <String, dynamic>{'image_url': instance.imageUrl, 'title': instance.title};

_FacetsResultModel _$FacetsResultModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_FacetsResultModel', json, ($checkedConvert) {
      final val = _FacetsResultModel(
        facets: $checkedConvert(
          'facets',
          (v) => (v as List<dynamic>)
              .map((e) => FacetModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        total: $checkedConvert('total', (v) => (v as num).toInt()),
      );
      return val;
    });

Map<String, dynamic> _$FacetsResultModelToJson(_FacetsResultModel instance) =>
    <String, dynamic>{
      'facets': instance.facets.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };

RangeFacetModel _$RangeFacetModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('RangeFacetModel', json, ($checkedConvert) {
      final val = RangeFacetModel(
        id: $checkedConvert('id', (v) => v as String),
        title: $checkedConvert('title', (v) => v as String),
        min: $checkedConvert('min', (v) => (v as num).toInt()),
        max: $checkedConvert('max', (v) => (v as num).toInt()),
        $type: $checkedConvert('type', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {r'$type': 'type'});

Map<String, dynamic> _$RangeFacetModelToJson(RangeFacetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'min': instance.min,
      'max': instance.max,
      'type': instance.$type,
    };

OptionsFacetModel _$OptionsFacetModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('OptionsFacetModel', json, ($checkedConvert) {
      final val = OptionsFacetModel(
        id: $checkedConvert('id', (v) => v as String),
        title: $checkedConvert('title', (v) => v as String),
        display: $checkedConvert('display', (v) => v as String? ?? 'chips'),
        options: $checkedConvert(
          'options',
          (v) => (v as List<dynamic>)
              .map((e) => FacetOptionModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        $type: $checkedConvert('type', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {r'$type': 'type'});

Map<String, dynamic> _$OptionsFacetModelToJson(OptionsFacetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'display': instance.display,
      'options': instance.options.map((e) => e.toJson()).toList(),
      'type': instance.$type,
    };

ToggleFacetModel _$ToggleFacetModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ToggleFacetModel', json, ($checkedConvert) {
      final val = ToggleFacetModel(
        id: $checkedConvert('id', (v) => v as String),
        title: $checkedConvert('title', (v) => v as String),
        count: $checkedConvert('count', (v) => (v as num).toInt()),
        $type: $checkedConvert('type', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {r'$type': 'type'});

Map<String, dynamic> _$ToggleFacetModelToJson(ToggleFacetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'count': instance.count,
      'type': instance.$type,
    };

UnknownFacetModel _$UnknownFacetModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UnknownFacetModel', json, ($checkedConvert) {
      final val = UnknownFacetModel(
        $type: $checkedConvert('type', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {r'$type': 'type'});

Map<String, dynamic> _$UnknownFacetModelToJson(UnknownFacetModel instance) =>
    <String, dynamic>{'type': instance.$type};

_FacetOptionModel _$FacetOptionModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_FacetOptionModel', json, ($checkedConvert) {
      final val = _FacetOptionModel(
        value: $checkedConvert('value', (v) => v as String),
        label: $checkedConvert('label', (v) => v as String),
        count: $checkedConvert('count', (v) => (v as num).toInt()),
        color: $checkedConvert('color', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$FacetOptionModelToJson(_FacetOptionModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'label': instance.label,
      'count': instance.count,
      'color': instance.color,
    };
