/// Placeholder image URLs for the fake backend and the UI kit.
///
/// Every fake image goes through here so the provider can be swapped in one
/// place when a host goes down (picsum.photos returned 522/503 in Nov 2026).
library;

/// Which placeholder host [fakeImageUrl] builds URLs for.
enum FakeImageProvider { picsum, placehold }

/// Switch back to [FakeImageProvider.picsum] for real photos once it is up.
const FakeImageProvider fakeImageProvider = FakeImageProvider.placehold;

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
String fakeImageUrl(String seed, int width, [int? height]) {
  final h = height ?? width;
  switch (fakeImageProvider) {
    case FakeImageProvider.picsum:
      return 'https://picsum.photos/seed/$seed/$width/$h';
    case FakeImageProvider.placehold:
      final bg = _palette[seed.hashCode.abs() % _palette.length];
      final text = Uri.encodeQueryComponent(seed);
      return 'https://placehold.co/${width}x$h/$bg/$_placeholdInk/png?text=$text';
  }
}
