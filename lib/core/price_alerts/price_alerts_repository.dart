import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../dev/fake_backend/fake_favourites_backend.dart';
import '../error/exceptions.dart';
import '../error/failures.dart';
import '../error/guard.dart';
import '../network/network_info.dart';
import '../product/data/product_summary_model.dart';
import 'price_alert.dart';

part 'price_alerts_repository.freezed.dart';
part 'price_alerts_repository.g.dart';

/// The account's price-drop subscriptions (server only: needs sign-in).
abstract interface class PriceAlertsRepository {
  Future<Either<Failure, List<PriceAlert>>> load(String languageCode);

  /// Right(null) when the product no longer exists.
  Future<Either<Failure, PriceAlert?>> subscribe(
    String languageCode,
    String productId,
  );

  Future<Either<Failure, Unit>> unsubscribe(String productId);
}

@freezed
abstract class PriceAlertModel with _$PriceAlertModel {
  const factory PriceAlertModel({
    required ProductSummaryModel product,
    required int subscribedPrice,
  }) = _PriceAlertModel;

  factory PriceAlertModel.fromJson(Map<String, dynamic> json) =>
      _$PriceAlertModelFromJson(json);
}

extension PriceAlertModelX on PriceAlertModel {
  PriceAlert toEntity() =>
      PriceAlert(product: product.toEntity(), subscribedPrice: subscribedPrice);
}

/// Price alerts API. Throws `NetworkException` / `ServerException`.
abstract interface class PriceAlertsRemoteDataSource {
  Future<List<PriceAlertModel>> load(String languageCode);

  /// `null` when the server answers 404.
  Future<PriceAlertModel?> subscribe(String languageCode, String productId);

  Future<void> unsubscribe(String productId);
}

@LazySingleton(as: PriceAlertsRemoteDataSource, env: [Environment.dev])
class FakePriceAlertsRemoteDataSource implements PriceAlertsRemoteDataSource {
  FakePriceAlertsRemoteDataSource(this._networkInfo, this._backend);

  final NetworkInfo _networkInfo;
  final FakeFavouritesBackend _backend;

  static const _latency = Duration(milliseconds: 350);

  Future<void> _request() async {
    if (!await _networkInfo.isOnline) throw const NetworkException();
    await Future<void>.delayed(_latency);
  }

  @override
  Future<List<PriceAlertModel>> load(String languageCode) async {
    await _request();
    return _parse(
      () => [
        for (final json in _backend.alerts(languageCode))
          PriceAlertModel.fromJson(json),
      ],
    );
  }

  @override
  Future<PriceAlertModel?> subscribe(
    String languageCode,
    String productId,
  ) async {
    await _request();
    final json = _backend.subscribe(languageCode, productId);
    return json == null ? null : _parse(() => PriceAlertModel.fromJson(json));
  }

  @override
  Future<void> unsubscribe(String productId) async {
    await _request();
    _backend.unsubscribe(productId);
  }

  static T _parse<T>(T Function() parse) {
    try {
      return parse();
    } on Object catch (e) {
      throw ServerException(cause: e);
    }
  }
}

@LazySingleton(as: PriceAlertsRepository)
class PriceAlertsRepositoryImpl implements PriceAlertsRepository {
  const PriceAlertsRepositoryImpl(this._remote);

  final PriceAlertsRemoteDataSource _remote;

  @override
  Future<Either<Failure, List<PriceAlert>>> load(String languageCode) =>
      guardCall(
        () async => [
          for (final m in await _remote.load(languageCode)) m.toEntity(),
        ],
      );

  @override
  Future<Either<Failure, PriceAlert?>> subscribe(
    String languageCode,
    String productId,
  ) => guardCall(
    () async => (await _remote.subscribe(languageCode, productId))?.toEntity(),
  );

  @override
  Future<Either<Failure, Unit>> unsubscribe(String productId) =>
      guardCall(() async {
        await _remote.unsubscribe(productId);
        return unit;
      });
}
