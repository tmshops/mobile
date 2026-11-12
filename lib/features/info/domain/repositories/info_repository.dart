import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../entities/info.dart';

/// «Информация» pages (TZ §5.19), in the user's language. The last copy of
/// each page stays on the device and is shown when offline.
abstract interface class InfoRepository {
  /// One of the [InfoTopic.isArticle] pages.
  Future<Either<Failure, InfoArticle>> article(
    String languageCode,
    InfoTopic topic,
  );

  Future<Either<Failure, DeliveryTerms>> deliveryTerms(String languageCode);

  Future<Either<Failure, List<FaqSection>>> faq(String languageCode);

  Future<Either<Failure, List<PickupPointInfo>>> pickupPoints(
    String languageCode,
  );

  Future<Either<Failure, StoreContacts>> contacts(String languageCode);
}
