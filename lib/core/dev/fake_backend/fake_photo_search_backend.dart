import 'dart:math';

import '../fake_image_url.dart';
import 'fake_api_params.dart';
import 'fake_catalog_backend.dart';

/// Dev stand-in for photo search (TZ §5.8).
///
/// The "phone" has a few [photos] in its gallery, and the camera sees the
/// same things. Each photo is tied to a catalog leaf, so a photo of
/// sneakers finds sneakers; the sofa finds nothing, which shows the
/// «Найдите мне товар» path. «Найти похожие» on a product sends its id, and
/// the leaf comes from there.
class FakePhotoSearchBackend {
  FakePhotoSearchBackend();

  final _catalog = FakeCatalogBackend();

  static const _maxResults = 24;

  /// Photo path on the image CDN → catalog leaf it finds (`null`: nothing).
  static const _samples = <(String, String?)>[
    ('mens-shoes/nike-air-jordan-1-red-and-black', 'shoes-men-sneakers'),
    ('mobile-accessories/apple-airpods-max-silver', 'el-audio-headphones'),
    ("womens-dresses/black-women's-gown", 'clothes-women-dresses'),
    ('mens-watches/rolex-cellini-date-black-dial', 'el-smart-watches'),
    ('kitchen-accessories/black-aluminium-cup', 'home-kitchen-cookware'),
    ('mens-shirts/man-plaid-shirt', 'clothes-men-shirts'),
    ('beauty/eyeshadow-palette-with-mirror', 'beauty-makeup'),
    ('womens-shoes/golden-shoes-woman', 'shoes-women-sandals'),
    ('home-decoration/house-showpiece-plant', 'home-decor'),
    ('furniture/annibale-colombo-sofa', null),
  ];

  /// What the phone's camera and gallery hold, newest first.
  List<String> photos() => [
    for (final (path, _) in _samples) fakePhotoUrl(path),
  ];

  /// `{items: [{…product tile, similarity}]}`, most similar first.
  /// [crop] (`left, top, width, height` in 0…1) only reorders a little,
  /// as a real search would rank a different area differently.
  Map<String, dynamic> search(
    String lang, {
    String? imageUrl,
    String? productId,
    List<double>? crop,
  }) {
    final leaf = _leafOf(productId) ?? _leafOfPhoto(imageUrl);
    if (leaf == null) return {'items': <Object>[]};
    final listed = _catalog.products(lang, {FakeApiParams.category: leaf});
    final items = [
      for (final item in listed['items'] as List<dynamic>)
        if ((item as Map<String, dynamic>)['id'] != productId) item,
    ];
    final seed = Object.hash(leaf, productId, imageUrl, crop?.join(','));
    final random = Random(seed);
    items.shuffle(random);
    var similarity = 0.97 - random.nextInt(3) / 100;
    return {
      'items': [
        for (final item in items.take(_maxResults))
          {
            ...item,
            'similarity': (similarity -= 0.01 + random.nextInt(3) / 100).clamp(
              0.41,
              1.0,
            ),
          },
      ],
    };
  }

  static String? _leafOf(String? productId) {
    if (productId == null) return null;
    final dash = productId.lastIndexOf('-');
    return dash <= 0 ? null : productId.substring(0, dash);
  }

  static String? _leafOfPhoto(String? imageUrl) {
    for (final (path, leaf) in _samples) {
      if (fakePhotoUrl(path) == imageUrl) return leaf;
    }
    return null;
  }
}
