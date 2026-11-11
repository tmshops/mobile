import 'dart:convert';

import 'package:hive_ce/hive_ce.dart';

import '../error/exceptions.dart';

/// A cached API response and the device time it was downloaded.
class CachedJson {
  const CachedJson({required this.json, required this.fetchedAt});

  final Map<String, dynamic> json;
  final DateTime fetchedAt;
}

/// Stores API responses as JSON strings in a Hive box, one per key
/// (usually the language code).
///
/// JSON rather than Hive objects: server-driven shapes change over time and
/// JSON needs no adapter migrations. Errors surface as [CacheException];
/// an unreadable entry is deleted so the next launch starts clean.
class JsonCache {
  const JsonCache(this._box);

  final LazyBox<String> _box;

  static const _body = 'body';
  static const _fetchedAt = 'fetched_at';

  Future<CachedJson?> read(String key) async {
    try {
      final raw = await _box.get(key);
      if (raw == null) return null;
      final envelope = jsonDecode(raw) as Map<String, dynamic>;
      return CachedJson(
        json: envelope[_body] as Map<String, dynamic>,
        fetchedAt: DateTime.parse(envelope[_fetchedAt] as String),
      );
    } on Object catch (e) {
      await _box.delete(key).catchError((_) {});
      throw CacheException(e);
    }
  }

  Future<void> write(String key, CachedJson entry) async {
    try {
      await _box.put(
        key,
        jsonEncode({
          _body: entry.json,
          _fetchedAt: entry.fetchedAt.toIso8601String(),
        }),
      );
    } on Object catch (e) {
      throw CacheException(e);
    }
  }
}
