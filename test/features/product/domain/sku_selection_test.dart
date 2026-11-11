import 'package:flutter_test/flutter_test.dart';
import 'package:tmshop/features/product/domain/entities/product_details.dart';
import 'package:tmshop/core/product/domain/sku_selection.dart';

void main() {
  const color = SkuProperty(
    id: 'color',
    title: 'Цвет',
    values: [
      SkuValue(id: 'black', label: 'Чёрный', imageUrl: 'b.jpg'),
      SkuValue(id: 'white', label: 'Белый', imageUrl: 'w.jpg'),
    ],
  );
  const size = SkuProperty(
    id: 'size',
    title: 'Размер',
    isSize: true,
    values: [
      SkuValue(id: 'S', label: 'S'),
      SkuValue(id: 'M', label: 'M'),
    ],
  );
  const skus = [
    Sku(id: '1', values: {'color': 'black', 'size': 'S'}, price: 100, stock: 3),
    Sku(id: '2', values: {'color': 'black', 'size': 'M'}, price: 120, stock: 0),
    Sku(id: '3', values: {'color': 'white', 'size': 'S'}, price: 100, stock: 0),
    Sku(id: '4', values: {'color': 'white', 'size': 'M'}, price: 130, stock: 7),
  ];

  SkuSelection select(Map<String, String> chosen) =>
      SkuSelection(properties: const [color, size], skus: skus, chosen: chosen);

  test('greys out values with no stock given the other choice', () {
    final black = select({'color': 'black'});
    expect(black.isAvailable('size', 'S'), isTrue);
    expect(black.isAvailable('size', 'M'), isFalse);
    // Switching colour is judged without the colour itself.
    expect(black.isAvailable('color', 'white'), isTrue);
  });

  test('a clashing value stays pickable; a sold-out one does not', () {
    final blackS = select({'color': 'black', 'size': 'S'});
    // White S is sold out, but white M is not: white can still be picked.
    expect(blackS.isAvailable('color', 'white'), isFalse);
    expect(blackS.isPossible('color', 'white'), isTrue);

    const soldOut = Sku(id: '5', values: {'color': 'red'}, price: 1, stock: 0);
    final withRed = SkuSelection(
      properties: const [color],
      skus: const [soldOut],
      chosen: const {},
    );
    expect(withRed.isPossible('color', 'red'), isFalse);
  });

  test('resolves the SKU only when everything is chosen', () {
    expect(select({'color': 'white'}).sku, isNull);
    expect(select({'color': 'white'}).missing.map((p) => p.id), ['size']);
    final full = select({'color': 'white', 'size': 'M'});
    expect(full.sku?.id, '4');
    expect(full.label, 'Белый, M');
    expect(full.chosenImage, 'w.jpg');
  });

  test('price range covers only in-stock candidates', () {
    expect(select(const {}).priceRange, (100, 130));
    expect(select({'color': 'black'}).priceRange, (100, 100));
  });

  test('initial selection picks properties with one possible value', () {
    const details = ProductDetails(
      id: 'x',
      title: 'X',
      media: [],
      price: 100,
      properties: [color, size],
      skus: [
        Sku(
          id: '1',
          values: {'color': 'black', 'size': 'S'},
          price: 100,
          stock: 1,
        ),
        Sku(
          id: '2',
          values: {'color': 'black', 'size': 'M'},
          price: 100,
          stock: 1,
        ),
      ],
    );
    expect(
      SkuSelection.initial(
        properties: details.properties,
        skus: details.skus,
      ).chosen,
      {'color': 'black'},
    );
  });

  test('a product without variants is complete with its single SKU', () {
    final selection = SkuSelection(
      properties: const [],
      skus: const [Sku(id: 'only', values: {}, price: 50, stock: 2)],
      chosen: const {},
    );
    expect(selection.isComplete, isTrue);
    expect(selection.sku?.id, 'only');
    expect(selection.label, isNull);
  });
}
