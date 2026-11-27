import 'package:injectable/injectable.dart';

import '../fake_image_url.dart';
import 'fake_api_params.dart';
import 'fake_catalog_backend.dart';

/// Dev stand-in for the video feed (TZ §5.4).
///
/// Clips are tall posters with a duration; there is no video stream
/// until a player package is approved. Each clip sells one catalog
/// product. The feed opens at the story tapped on Home and pages on with
/// a cursor; likes are kept in memory.
@LazySingleton(env: [Environment.dev])
class FakeVideoBackend {
  FakeVideoBackend();

  final _catalog = FakeCatalogBackend();
  final _liked = <String>{};

  static const pageSize = 6;
  static const _total = 40;
  static const _minSeconds = 8;
  static const _spreadSeconds = 17;

  /// From [startId] (e.g. `v3`) or [cursor], [pageSize] clips.
  Map<String, dynamic> feed(String lang, {String? startId, String? cursor}) {
    final start =
        int.tryParse(cursor ?? '') ??
        int.tryParse((startId ?? '').replaceFirst('v', '')) ??
        0;
    final products =
        _catalog.products(lang, {FakeApiParams.collection: 'hits'})['items']
            as List<dynamic>;
    final end = (start + pageSize).clamp(0, _total);
    return {
      'items': [
        for (var i = start; i < end; i++)
          if (products[i % products.length] case final Map<String, dynamic> p)
            {
              'id': 'v$i',
              'poster_url': fakeImageUrl('story$i', 720, 1280),
              'duration_ms': (_minSeconds + (i * 7) % _spreadSeconds) * 1000,
              'likes':
                  120 + (i * 977) % 9000 + (_liked.contains('v$i') ? 1 : 0),
              'is_liked': _liked.contains('v$i'),
              'product': p,
              'share_url': 'https://tmshop.tm/product/${p['id']}',
            },
      ],
      'next_cursor': end < _total ? '$end' : null,
    };
  }

  void like(String id, {required bool isLiked}) =>
      isLiked ? _liked.add(id) : _liked.remove(id);
}
