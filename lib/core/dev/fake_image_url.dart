/// Placeholder image URLs for the fake backend and the UI kit.
///
/// Every fake image goes through here so the provider can be swapped in one
/// place when a host goes down (picsum.photos returned 522/503 in Nov 2026).
library;

/// Which placeholder host [fakeImageUrl] builds URLs for.
enum FakeImageProvider {
  /// Real product photos from the dummyjson.com CDN (good for demos).
  dummyjson,

  /// Random stock photos; unreliable since Nov 2026.
  picsum,

  /// Coloured boxes with the seed as text; handy for debugging layouts.
  placehold,
}

/// Switch to [FakeImageProvider.placehold] to see which seed lands where.
const FakeImageProvider fakeImageProvider = FakeImageProvider.dummyjson;

const String _dummyJsonBase = 'https://cdn.dummyjson.com/product-images';

/// `<category>/<product>` paths on the dummyjson CDN, up to 3 per category,
/// all checked to return 200. Every path has a `1.webp` image.
const List<String> _dummyJsonProducts = [
  'beauty/essence-mascara-lash-princess',
  'beauty/eyeshadow-palette-with-mirror',
  'beauty/powder-canister',
  'fragrances/calvin-klein-ck-one',
  'fragrances/chanel-coco-noir-eau-de',
  "fragrances/dior-j'adore",
  'furniture/annibale-colombo-bed',
  'furniture/annibale-colombo-sofa',
  'furniture/bedside-table-african-cherry',
  'groceries/apple',
  'groceries/beef-steak',
  'groceries/cat-food',
  'home-decoration/decoration-swing',
  'home-decoration/family-tree-photo-frame',
  'home-decoration/house-showpiece-plant',
  'kitchen-accessories/bamboo-spatula',
  'kitchen-accessories/black-aluminium-cup',
  'kitchen-accessories/black-whisk',
  'laptops/apple-macbook-pro-14-inch-space-grey',
  'laptops/asus-zenbook-pro-dual-screen-laptop',
  'laptops/huawei-matebook-x-pro',
  'mens-shirts/blue-&-black-check-shirt',
  'mens-shirts/gigabyte-aorus-men-tshirt',
  'mens-shirts/man-plaid-shirt',
  'mens-shoes/nike-air-jordan-1-red-and-black',
  'mens-shoes/nike-baseball-cleats',
  'mens-shoes/puma-future-rider-trainers',
  'mens-watches/brown-leather-belt-watch',
  'mens-watches/longines-master-collection',
  'mens-watches/rolex-cellini-date-black-dial',
  'mobile-accessories/amazon-echo-plus',
  'mobile-accessories/apple-airpods',
  'mobile-accessories/apple-airpods-max-silver',
  'skin-care/attitude-super-leaves-hand-soap',
  'skin-care/olay-ultra-moisture-shea-butter-body-wash',
  'skin-care/vaseline-men-body-and-face-lotion',
  'smartphones/iphone-5s',
  'smartphones/iphone-6',
  'smartphones/iphone-13-pro',
  'sports-accessories/american-football',
  'sports-accessories/baseball-ball',
  'sports-accessories/baseball-glove',
  'sunglasses/black-sun-glasses',
  'sunglasses/classic-sun-glasses',
  'sunglasses/green-and-black-glasses',
  'tablets/ipad-mini-2021-starlight',
  'tablets/samsung-galaxy-tab-s8-plus-grey',
  'tablets/samsung-galaxy-tab-white',
  'tops/blue-frock',
  'tops/girl-summer-dress',
  'tops/gray-dress',
  "womens-bags/blue-women's-handbag",
  "womens-bags/heshe-women's-leather-bag",
  'womens-bags/prada-women-bag',
  "womens-dresses/black-women's-gown",
  'womens-dresses/corset-leather-with-skirt',
  'womens-dresses/corset-with-black-skirt',
  'womens-jewellery/green-crystal-earring',
  'womens-jewellery/green-oval-earring',
  'womens-jewellery/tropical-earring',
  'womens-shoes/black-&-brown-slipper',
  'womens-shoes/calvin-klein-heel-shoes',
  'womens-shoes/golden-shoes-woman',
  'womens-watches/iwc-ingenieur-automatic-steel',
  'womens-watches/rolex-cellini-moonphase',
  'womens-watches/rolex-datejust-women',
];

const List<String> _palette = [
  '2b6cb0',
  'c05621',
  '2f855a',
  '6b46c1',
  'b83280',
  '2c7a7b',
  'b7791f',
  '4a5568',
];
const String _placeholdInk = 'ffffff';

/// A stable placeholder image URL for [seed] at [width]×[height]
/// (square when [height] is omitted).
///
/// The dummyjson provider ignores the size: its photos are roughly square and
/// are cropped by the widget's `BoxFit`.
String fakeImageUrl(String seed, int width, [int? height]) {
  final h = height ?? width;
  switch (fakeImageProvider) {
    case FakeImageProvider.dummyjson:
      final path =
          _dummyJsonProducts[seed.hashCode.abs() % _dummyJsonProducts.length];
      return '$_dummyJsonBase/$path/1.webp';
    case FakeImageProvider.picsum:
      return 'https://picsum.photos/seed/$seed/$width/$h';
    case FakeImageProvider.placehold:
      final bg = _palette[seed.hashCode.abs() % _palette.length];
      final text = Uri.encodeQueryComponent(seed);
      return 'https://placehold.co/${width}x$h/$bg/$_placeholdInk/png?text=$text';
  }
}

/// Catalog leaf slug → dummyjson categories whose photos look like it, so a
/// list of «Кроссовки» shows shoes. Leaves not listed get [fakeImageUrl].
const Map<String, List<String>> _leafPhotos = {
  'clothes-women-dresses': ['womens-dresses', 'tops'],
  'clothes-women-blouses': ['tops'],
  'clothes-men-tshirts': ['mens-shirts'],
  'clothes-men-shirts': ['mens-shirts'],
  'shoes-women-sneakers': ['womens-shoes'],
  'shoes-women-boots': ['womens-shoes'],
  'shoes-women-sandals': ['womens-shoes'],
  'shoes-men-sneakers': ['mens-shoes'],
  'shoes-men-boots': ['mens-shoes'],
  'shoes-men-classic': ['mens-shoes'],
  'el-phone-cases': ['smartphones'],
  'el-phone-chargers': ['mobile-accessories'],
  'el-phone-powerbanks': ['mobile-accessories'],
  'el-audio-headphones': ['mobile-accessories'],
  'el-audio-speakers': ['mobile-accessories'],
  'el-smart-watches': ['mens-watches', 'womens-watches'],
  'el-smart-bands': ['mens-watches'],
  'home-kitchen-cookware': ['kitchen-accessories'],
  'home-kitchen-knives': ['kitchen-accessories'],
  'home-kitchen-storage': ['kitchen-accessories'],
  'home-decor': ['home-decoration'],
  'beauty-makeup': ['beauty'],
  'beauty-care-face': ['skin-care'],
  'beauty-care-hair': ['skin-care'],
  'sport-outdoor-backpacks': ['womens-bags'],
};

/// Photo of generated product [seed] from catalog leaf [leafSlug]: a photo
/// of the same kind of thing where one exists.
String fakeProductImageUrl(String leafSlug, String seed) {
  final categories = _leafPhotos[leafSlug];
  if (fakeImageProvider != FakeImageProvider.dummyjson || categories == null) {
    return fakeImageUrl(seed, 600, 600);
  }
  final paths = [
    for (final path in _dummyJsonProducts)
      if (categories.any((c) => path.startsWith('$c/'))) path,
  ];
  return '$_dummyJsonBase/${paths[seed.hashCode.abs() % paths.length]}/1.webp';
}

/// The photo of one dummyjson product, `<category>/<product>`.
String fakePhotoUrl(String path) =>
    fakeImageProvider == FakeImageProvider.dummyjson
    ? '$_dummyJsonBase/$path/1.webp'
    : fakeImageUrl(path, 800, 800);
