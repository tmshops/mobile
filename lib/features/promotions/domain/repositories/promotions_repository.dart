import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../entities/promotion.dart';

/// Promotions (TZ §5.19). Their products come from the catalog.
abstract interface class PromotionsRepository {
  /// Running promotions, soonest to end first.
  Future<Either<Failure, List<Promotion>>> list(String languageCode);

  /// Right(null) for an unknown promotion.
  Future<Either<Failure, PromotionDetails?>> details(
    String languageCode,
    String slug,
  );
}
