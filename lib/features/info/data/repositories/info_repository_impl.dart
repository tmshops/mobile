import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/error/guard.dart';
import '../../domain/entities/info.dart';
import '../../domain/repositories/info_repository.dart';
import '../datasources/info_data_sources.dart';
import '../models/info_models.dart';

@LazySingleton(as: InfoRepository)
class InfoRepositoryImpl implements InfoRepository {
  const InfoRepositoryImpl(this._remote, this._local);

  final InfoRemoteDataSource _remote;
  final InfoLocalDataSource _local;

  @override
  Future<Either<Failure, InfoArticle>> article(
    String languageCode,
    InfoTopic topic,
  ) => _load(
    languageCode,
    topic,
    (json) => InfoArticleModel.fromJson(json).toEntity(),
  );

  @override
  Future<Either<Failure, DeliveryTerms>> deliveryTerms(String languageCode) =>
      _load(
        languageCode,
        InfoTopic.delivery,
        (json) => DeliveryTermsModel.fromJson(json).toEntity(),
      );

  @override
  Future<Either<Failure, List<FaqSection>>> faq(String languageCode) => _load(
    languageCode,
    InfoTopic.faq,
    (json) => FaqModel.fromJson(json).toEntity(),
  );

  @override
  Future<Either<Failure, List<PickupPointInfo>>> pickupPoints(
    String languageCode,
  ) => _load(
    languageCode,
    InfoTopic.pickupPoints,
    (json) => PickupPointsModel.fromJson(json).toEntity(),
  );

  @override
  Future<Either<Failure, StoreContacts>> contacts(String languageCode) => _load(
    languageCode,
    InfoTopic.contacts,
    (json) => ContactsModel.fromJson(json).toEntity(),
  );

  /// Server first; offline, the device copy if there is one.
  Future<Either<Failure, T>> _load<T>(
    String languageCode,
    InfoTopic topic,
    T Function(Map<String, dynamic> json) parse,
  ) => guardCall(() async {
    final Map<String, dynamic> json;
    try {
      json = await _remote.page(languageCode, topic.slug);
    } on NetworkException {
      final cached = await _readCache(languageCode, topic);
      if (cached == null) rethrow;
      return _parse(cached, parse);
    }
    final page = _parse(json, parse);
    try {
      await _local.write(languageCode, topic.slug, json);
    } on CacheException {
      // A failed cache write must not hide the fresh page.
    }
    return page;
  });

  /// An unreadable copy is as good as none.
  Future<Map<String, dynamic>?> _readCache(
    String languageCode,
    InfoTopic topic,
  ) async {
    try {
      return await _local.read(languageCode, topic.slug);
    } on CacheException {
      return null;
    }
  }

  static T _parse<T>(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) parse,
  ) {
    try {
      return parse(json);
    } on Object catch (e) {
      throw ServerException(cause: e);
    }
  }
}
