import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/product_variants.dart';
import '../domain/sku.dart';

part 'variants_model.freezed.dart';
part 'variants_model.g.dart';

/// `GET /products/{id}/variants`.
@freezed
abstract class VariantsModel with _$VariantsModel {
  const factory VariantsModel({
    required List<VariantPropertyModel> properties,
    required List<VariantSkuModel> skus,
  }) = _VariantsModel;

  factory VariantsModel.fromJson(Map<String, dynamic> json) =>
      _$VariantsModelFromJson(json);
}

@freezed
abstract class VariantPropertyModel with _$VariantPropertyModel {
  const factory VariantPropertyModel({
    required String id,
    required String title,
    required List<VariantValueModel> values,
    @Default(false) bool isSize,
  }) = _VariantPropertyModel;

  factory VariantPropertyModel.fromJson(Map<String, dynamic> json) =>
      _$VariantPropertyModelFromJson(json);
}

@freezed
abstract class VariantValueModel with _$VariantValueModel {
  const factory VariantValueModel({
    required String id,
    required String label,
    String? imageUrl,
  }) = _VariantValueModel;

  factory VariantValueModel.fromJson(Map<String, dynamic> json) =>
      _$VariantValueModelFromJson(json);
}

@freezed
abstract class VariantSkuModel with _$VariantSkuModel {
  const factory VariantSkuModel({
    required String id,
    required Map<String, String> values,
    required int price,
    int? oldPrice,
    required int stock,
  }) = _VariantSkuModel;

  factory VariantSkuModel.fromJson(Map<String, dynamic> json) =>
      _$VariantSkuModelFromJson(json);
}

extension VariantsModelX on VariantsModel {
  /// Drops empty groups and SKUs that point at unknown values.
  ProductVariants toEntity() {
    final known = {
      for (final p in properties) p.id: {for (final v in p.values) v.id},
    };
    return ProductVariants(
      properties: [
        for (final p in properties)
          if (p.values.isNotEmpty)
            SkuProperty(
              id: p.id,
              title: p.title,
              isSize: p.isSize,
              values: [
                for (final v in p.values)
                  SkuValue(id: v.id, label: v.label, imageUrl: v.imageUrl),
              ],
            ),
      ],
      skus: [
        for (final s in skus)
          if (s.values.entries.every(
            (e) => known[e.key]?.contains(e.value) ?? false,
          ))
            Sku(
              id: s.id,
              values: s.values,
              price: s.price,
              oldPrice: s.oldPrice,
              stock: s.stock,
            ),
      ],
    );
  }
}
