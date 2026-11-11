import 'package:freezed_annotation/freezed_annotation.dart';

part 'facet.freezed.dart';

/// How an options facet is drawn in the filters sheet.
enum FacetDisplay {
  /// Wrap of chips (source, size, delivery term).
  chips,

  /// Colour circles.
  swatches,

  /// Long checkbox list with a search field (brand).
  searchableList,
}

/// One filter group with live counts (TZ §5.5: facets come from the server).
@freezed
sealed class Facet with _$Facet {
  /// Price slider plus two inputs.
  const factory Facet.range({
    required String id,
    required String title,
    required int min,
    required int max,
  }) = RangeFacet;

  const factory Facet.options({
    required String id,
    required String title,
    required FacetDisplay display,
    required List<FacetOption> options,
  }) = OptionsFacet;

  /// On/off switch such as «Со скидкой».
  const factory Facet.toggle({
    required String id,
    required String title,
    required int count,
  }) = ToggleFacet;
}

@freezed
abstract class FacetOption with _$FacetOption {
  const factory FacetOption({
    required String value,
    required String label,

    /// Products left if this value is added to the current filters.
    required int count,

    /// Swatch colour as `0xAARRGGBB`, for [FacetDisplay.swatches].
    int? colorArgb,
  }) = _FacetOption;
}

/// Facets for the current draft filters plus the matching product count
/// for «Показать N товаров».
@freezed
abstract class FacetsResult with _$FacetsResult {
  const factory FacetsResult({
    required List<Facet> facets,
    required int total,
  }) = _FacetsResult;
}
