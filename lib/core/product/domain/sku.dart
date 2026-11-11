import 'package:freezed_annotation/freezed_annotation.dart';

part 'sku.freezed.dart';

/// A variant group of a product (colour, size, set). Shared by the product
/// page and the cart's change-variant sheet.
@freezed
abstract class SkuProperty with _$SkuProperty {
  const factory SkuProperty({
    required String id,
    required String title,
    required List<SkuValue> values,

    /// Size-like property: shows the «Размерная сетка» link.
    @Default(false) bool isSize,
  }) = _SkuProperty;

  const SkuProperty._();

  /// Values with photos are drawn as thumbnails, others as chips.
  bool get isVisual => values.any((v) => v.imageUrl != null);
}

@freezed
abstract class SkuValue with _$SkuValue {
  const factory SkuValue({
    required String id,
    required String label,
    String? imageUrl,
  }) = _SkuValue;
}

@freezed
abstract class Sku with _$Sku {
  const factory Sku({
    required String id,

    /// Property id → value id.
    required Map<String, String> values,
    required int price,
    int? oldPrice,
    required int stock,
  }) = _Sku;
}
