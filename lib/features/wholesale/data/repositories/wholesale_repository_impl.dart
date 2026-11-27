import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/error/guard.dart';
import '../../domain/entities/wholesale.dart';
import '../../domain/repositories/wholesale_repository.dart';
import '../datasources/wholesale_remote_data_source.dart';

@LazySingleton(as: WholesaleRepository)
class WholesaleRepositoryImpl implements WholesaleRepository {
  const WholesaleRepositoryImpl(this._remote);

  final WholesaleRemoteDataSource _remote;

  @override
  Future<Either<Failure, WholesaleApplication>> application(
    String languageCode,
  ) => guardCall(
    () async => _parse(
      () async => _application(await _remote.application(languageCode)),
    ),
  );

  @override
  Future<Either<Failure, WholesaleApplication>> apply(
    String languageCode,
    WholesaleForm form,
  ) async {
    final result = await guardCall(
      () async => _parse(
        () async => _application(
          await _remote.apply(languageCode, {
            'name': form.name.trim(),
            'phone': form.phone,
            'company': form.company.trim(),
            'city': form.city.trim(),
          }),
        ),
      ),
    );
    // The form checks the same rules; a server «no» is still a form error.
    return result.mapLeft(
      (f) => f is ServerFailure && f.code == 'validation'
          ? const ValidationFailure()
          : f,
    );
  }

  @override
  Future<Either<Failure, List<OrderDocuments>>> documents(
    String languageCode,
  ) => guardCall(
    () async => _parse(() async {
      final json = await _remote.documents(languageCode);
      return [
        for (final o
            in (json['orders'] as List<dynamic>).cast<Map<String, dynamic>>())
          OrderDocuments(
            orderNumber: o['number'] as String,
            createdAt: DateTime.parse(o['created_at'] as String),
            documents: [
              for (final d
                  in (o['documents'] as List<dynamic>)
                      .cast<Map<String, dynamic>>())
                WholesaleDocument(
                  kind: d['kind'] == 'waybill'
                      ? WholesaleDocumentKind.waybill
                      : WholesaleDocumentKind.invoice,
                  number: d['number'] as String,
                  date: DateTime.parse(d['date'] as String),
                  url: d['url'] as String,
                ),
            ],
          ),
      ];
    }),
  );

  static WholesaleApplication _application(Map<String, dynamic> json) {
    final status = json['status'] as String;
    if (status == 'none') return const WholesaleApplication.none();
    final form = WholesaleForm(
      name: json['name'] as String,
      phone: json['phone'] as String,
      company: json['company'] as String,
      city: json['city'] as String,
    );
    return switch (status) {
      'approved' => WholesaleApplication.approved(
        form: form,
        group: json['group'] as String,
      ),
      'rejected' => WholesaleApplication.rejected(
        form: form,
        reason: json['reason'] as String,
      ),
      _ => WholesaleApplication.pending(
        form: form,
        sentAt: DateTime.parse(json['sent_at'] as String),
      ),
    };
  }

  /// A response that does not match the contract is a server error.
  static Future<T> _parse<T>(Future<T> Function() parse) async {
    try {
      return await parse();
    } on AppException {
      rethrow;
    } on Object catch (e) {
      throw ServerException(cause: e);
    }
  }
}
