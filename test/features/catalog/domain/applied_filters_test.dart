import 'package:flutter_test/flutter_test.dart';
import 'package:tmshop/features/catalog/domain/entities/product_query.dart';

void main() {
  const anker = FilterChoice(value: 'anker', label: 'Anker');
  const red = FilterChoice(value: 'red', label: 'Красный');

  test('toggleChoice adds, removes and drops empty groups', () {
    var filters = const AppliedFilters()
        .toggleChoice('brand', anker)
        .toggleChoice('color', red);
    expect(filters.isChosen('brand', 'anker'), isTrue);
    expect(filters.activeCount, 2);

    filters = filters.toggleChoice('brand', anker);
    expect(filters.choices.containsKey('brand'), isFalse);
    expect(filters.activeCount, 1);
  });

  test('price counts once; toggles count each', () {
    final filters = const AppliedFilters(
      price: PriceRange(min: 10, max: 20),
    ).setToggle('discount', 'Со скидкой', on: true);
    expect(filters.activeCount, 2);
    expect(
      filters.setToggle('discount', 'Со скидкой', on: false).activeCount,
      1,
    );
    expect(const AppliedFilters().isEmpty, isTrue);
  });

  test('equal drafts compare equal, so no needless reloads', () {
    expect(
      const AppliedFilters().toggleChoice('brand', anker),
      const AppliedFilters().toggleChoice('brand', anker),
    );
  });
}
