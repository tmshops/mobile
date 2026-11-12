import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:hive_ce/hive_ce.dart';
import 'package:injectable/injectable.dart';

import '../database/hive_registry.dart';
import '../error/failures.dart';
import '../product/data/product_summary_model.dart';
import '../product/domain/product_summary.dart';
import 'viewed_product.dart';

@LazySingleton(as: ViewedRepository)
class ViewedRepositoryImpl implements ViewedRepository {
  const ViewedRepositoryImpl(@Named(HiveBoxes.viewed) this._box);

  final Box<String> _box;

  static const _key = 'items';

  /// Older entries fall off the end.
  static const limit = 100;

  @override
  Future<Either<Failure, List<ViewedProduct>>> load() async {
    try {
      return right(_read());
    } on Object {
      return left(const CacheFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> record(ProductSummary product, DateTime at) =>
      _change(
        (items) => [
          ViewedProduct(product: product, viewedAt: at),
          for (final v in items)
            if (v.product.id != product.id) v,
        ].take(limit).toList(),
      );

  @override
  Future<Either<Failure, Unit>> remove(String productId) => _change(
    (items) => [
      for (final v in items)
        if (v.product.id != productId) v,
    ],
  );

  @override
  Future<Either<Failure, Unit>> clear() => _change((_) => const []);

  Future<Either<Failure, Unit>> _change(
    List<ViewedProduct> Function(List<ViewedProduct>) change,
  ) async {
    try {
      final items = change(_read());
      await _box.put(
        _key,
        jsonEncode([
          for (final v in items)
            {
              'product': v.product.toModel().toJson(),
              'viewed_at': v.viewedAt.toUtc().toIso8601String(),
            },
        ]),
      );
      return right(unit);
    } on Object {
      return left(const CacheFailure());
    }
  }

  List<ViewedProduct> _read() {
    final raw = _box.get(_key);
    if (raw == null) return const [];
    return [
      for (final json
          in (jsonDecode(raw) as List<dynamic>).cast<Map<String, dynamic>>())
        ViewedProduct(
          product: ProductSummaryModel.fromJson(
            json['product'] as Map<String, dynamic>,
          ).toEntity(),
          viewedAt: DateTime.parse(json['viewed_at'] as String).toLocal(),
        ),
    ];
  }
}
