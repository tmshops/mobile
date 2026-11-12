import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../dev/fake_backend/fake_cart_backend.dart';
import '../../error/exceptions.dart';
import '../../error/failures.dart';
import '../../error/guard.dart';
import '../../network/network_info.dart';
import '../domain/product_variants.dart';
import 'variants_model.dart';

/// Variants API. Throws `NetworkException` / `ServerException`; returns
/// `null` when the server answers 404.
abstract interface class VariantsRemoteDataSource {
  Future<VariantsModel?> get(String languageCode, String productId);
}

/// Dev stand-in until the backend exists.
@LazySingleton(as: VariantsRemoteDataSource, env: [Environment.dev])
class FakeVariantsRemoteDataSource implements VariantsRemoteDataSource {
  FakeVariantsRemoteDataSource(this._networkInfo);

  final NetworkInfo _networkInfo;
  final _backend = FakeCartBackend();

  static const _latency = Duration(milliseconds: 350);

  @override
  Future<VariantsModel?> get(String languageCode, String productId) async {
    if (!await _networkInfo.isOnline) throw const NetworkException();
    await Future<void>.delayed(_latency);
    final json = _backend.variants(languageCode, productId);
    if (json == null) return null;
    try {
      return VariantsModel.fromJson(json);
    } on Object catch (e) {
      throw ServerException(cause: e);
    }
  }
}

@LazySingleton(as: VariantsRepository)
class VariantsRepositoryImpl implements VariantsRepository {
  const VariantsRepositoryImpl(this._remote);

  final VariantsRemoteDataSource _remote;

  @override
  Future<Either<Failure, ProductVariants?>> get({
    required String languageCode,
    required String productId,
  }) => guardCall(
    () async => (await _remote.get(languageCode, productId))?.toEntity(),
  );
}
