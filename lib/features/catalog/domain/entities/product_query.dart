import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_query.freezed.dart';

/// Sort orders offered in the sort sheet (TZ §5.5).
enum ProductSort { popular, priceAsc, priceDesc, newest, rating, sales }

/// A picked value of an options facet, with its label for the chip row.
@freezed
abstract class FilterChoice with _$FilterChoice {
  const factory FilterChoice({required String value, required String label}) =
      _FilterChoice;
}

/// Price bounds in whole TMT; either side may be open.
@freezed
abstract class PriceRange with _$PriceRange {
  const factory PriceRange({int? min, int? max}) = _PriceRange;

  const PriceRange._();

  bool get isEmpty => min == null && max == null;
}

/// Filters the user applied. Facet ids and values come from the server.
@freezed
abstract class AppliedFilters with _$AppliedFilters {
  const factory AppliedFilters({
    @Default(PriceRange()) PriceRange price,

    /// Options facet id → picked values.
    @Default(<String, List<FilterChoice>>{})
    Map<String, List<FilterChoice>> choices,

    /// Toggle facet id → its title (for the chip), present when switched on.
    @Default(<String, String>{}) Map<String, String> toggles,
  }) = _AppliedFilters;

  const AppliedFilters._();

  /// Badge on the Filters button: price counts once, then every value.
  int get activeCount =>
      (price.isEmpty ? 0 : 1) +
      choices.values.fold<int>(0, (sum, list) => sum + list.length) +
      toggles.length;

  bool get isEmpty => activeCount == 0;

  bool isChosen(String facetId, String value) =>
      choices[facetId]?.any((c) => c.value == value) ?? false;

  /// Adds or removes one value of an options facet.
  AppliedFilters toggleChoice(String facetId, FilterChoice choice) {
    final current = choices[facetId] ?? const <FilterChoice>[];
    final next = isChosen(facetId, choice.value)
        ? current.where((c) => c.value != choice.value).toList()
        : [...current, choice];
    return copyWith(
      choices: {
        for (final entry in choices.entries)
          if (entry.key != facetId) entry.key: entry.value,
        if (next.isNotEmpty) facetId: next,
      },
    );
  }

  AppliedFilters setToggle(String facetId, String title, {required bool on}) =>
      copyWith(
        toggles: {
          for (final entry in toggles.entries)
            if (entry.key != facetId) entry.key: entry.value,
          if (on) facetId: title,
        },
      );
}

/// Everything that defines a product list request, except the page.
@freezed
abstract class ProductQuery with _$ProductQuery {
  const factory ProductQuery({
    /// Empty for a promotion's products.
    required String categorySlug,

    /// The products of this promotion instead of a category (UI_DESIGN
    /// §7.16).
    String? promoSlug,
    @Default(ProductSort.popular) ProductSort sort,
    @Default(AppliedFilters()) AppliedFilters filters,
  }) = _ProductQuery;
}
