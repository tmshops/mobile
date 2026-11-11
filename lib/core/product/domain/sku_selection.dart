import 'sku.dart';

/// What the customer has picked among a product's variant properties, and
/// what follows from it (TZ §5.6.3): which values are still possible, the
/// resolved SKU, the price range and the stock.
///
/// Pure logic, no state: build a new one for each change.
class SkuSelection {
  SkuSelection({
    required this.properties,
    required this.skus,
    required this.chosen,
  });

  /// Picks every property that has only one possible value.
  factory SkuSelection.initial({
    required List<SkuProperty> properties,
    required List<Sku> skus,
  }) {
    var selection = SkuSelection(
      properties: properties,
      skus: skus,
      chosen: const {},
    );
    for (final property in properties) {
      final possible = property.values
          .where((v) => selection.isAvailable(property.id, v.id))
          .toList();
      if (possible.length == 1) {
        selection = selection.choose(property.id, possible.single.id);
      }
    }
    return selection;
  }

  final List<SkuProperty> properties;
  final List<Sku> skus;

  /// Property id → value id.
  final Map<String, String> chosen;

  SkuSelection choose(String propertyId, String valueId) => SkuSelection(
    properties: properties,
    skus: skus,
    chosen: {...chosen, propertyId: valueId},
  );

  bool get isComplete => properties.every((p) => chosen.containsKey(p.id));

  /// The picked SKU, once every property is chosen.
  Sku? get sku {
    if (!isComplete) return null;
    for (final sku in skus) {
      if (_matches(sku, chosen)) return sku;
    }
    // Products without variants come as a single SKU with no values.
    return properties.isEmpty && skus.length == 1 ? skus.single : null;
  }

  /// Properties still to pick, for «Выберите размер».
  List<SkuProperty> get missing => [
    for (final p in properties)
      if (!chosen.containsKey(p.id)) p,
  ];

  /// Whether [valueId] is in stock in any combination. Values that are not
  /// are greyed out and cannot be picked. A possible value that clashes
  /// with the current choice can still be picked: the clashing choice is
  /// then dropped, so the customer never gets stuck.
  bool isPossible(String propertyId, String valueId) =>
      skus.any((s) => s.stock > 0 && s.values[propertyId] == valueId);

  /// Whether picking [valueId] keeps at least one SKU in stock, given the
  /// other properties already chosen.
  bool isAvailable(String propertyId, String valueId) {
    final others = {...chosen}..remove(propertyId);
    return skus.any(
      (s) =>
          s.stock > 0 && s.values[propertyId] == valueId && _matches(s, others),
    );
  }

  /// In-stock SKUs that fit the current partial choice.
  List<Sku> get _candidates => [
    for (final s in skus)
      if (s.stock > 0 && _matches(s, chosen)) s,
  ];

  /// Lowest and highest price among possible SKUs, or `null` if none.
  (int, int)? get priceRange {
    final candidates = _candidates;
    if (candidates.isEmpty) return null;
    final prices = candidates.map((s) => s.price);
    return (
      prices.reduce((a, b) => a < b ? a : b),
      prices.reduce((a, b) => a > b ? a : b),
    );
  }

  /// Photo of the chosen visual value (colour), to swap the gallery to.
  String? get chosenImage {
    for (final property in properties) {
      final valueId = chosen[property.id];
      if (valueId == null) continue;
      for (final value in property.values) {
        if (value.id == valueId && value.imageUrl != null) {
          return value.imageUrl;
        }
      }
    }
    return null;
  }

  /// «Чёрный, M» for the cart line.
  String? get label {
    final parts = [
      for (final property in properties)
        for (final value in property.values)
          if (chosen[property.id] == value.id) value.label,
    ];
    return parts.isEmpty ? null : parts.join(', ');
  }

  static bool _matches(Sku sku, Map<String, String> wanted) =>
      wanted.entries.every((e) => sku.values[e.key] == e.value);
}
