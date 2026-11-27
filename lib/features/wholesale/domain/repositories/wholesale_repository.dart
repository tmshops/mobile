import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../entities/wholesale.dart';

/// «Стать оптовиком» and wholesale documents (TZ §5.19).
abstract interface class WholesaleRepository {
  Future<Either<Failure, WholesaleApplication>> application(
    String languageCode,
  );

  Future<Either<Failure, WholesaleApplication>> apply(
    String languageCode,
    WholesaleForm form,
  );

  /// Invoices and waybills per order, newest order first.
  Future<Either<Failure, List<OrderDocuments>>> documents(String languageCode);
}
