import 'dart:convert';

import 'package:hive_ce/hive_ce.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/database/hive_registry.dart';
import '../../../../core/error/exceptions.dart';

/// The search history on the device, as one JSON list, newest first.
/// Throws [CacheException].
@lazySingleton
class SearchLocalDataSource {
  const SearchLocalDataSource(@Named(HiveBoxes.searchHistory) this._box);

  final Box<String> _box;

  static const _key = 'queries';

  List<String> read() {
    try {
      final raw = _box.get(_key);
      if (raw == null) return const [];
      return (jsonDecode(raw) as List<dynamic>).cast<String>();
    } on Object catch (e) {
      throw CacheException(e);
    }
  }

  Future<void> write(List<String> queries) async {
    try {
      await _box.put(_key, jsonEncode(queries));
    } on Object catch (e) {
      throw CacheException(e);
    }
  }
}
