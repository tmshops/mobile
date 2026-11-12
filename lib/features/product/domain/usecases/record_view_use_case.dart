import 'package:injectable/injectable.dart';

import '../../../../core/viewed/viewed_product.dart';
import '../entities/product_details.dart';

/// Puts an opened product on top of «Просмотренные» (TZ §5.16).
@lazySingleton
class RecordViewUseCase {
  RecordViewUseCase(this._repository, {@ignoreParam DateTime Function()? now})
    : _now = now ?? DateTime.now;

  final ViewedRepository _repository;
  final DateTime Function() _now;

  Future<void> call(ProductDetails details) async {
    await _repository.record(details.summary, _now());
  }
}
