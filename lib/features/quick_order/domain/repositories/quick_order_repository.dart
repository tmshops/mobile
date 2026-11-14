import 'package:fpdart/fpdart.dart';

import '../../../../core/cart/cart_item.dart';
import '../../../../core/error/failures.dart';
import '../entities/quick_order.dart';

/// «Быстрый заказ»: the customer leaves a phone, the operator calls and
/// fills in the rest (TZ §5.11). Successful calls return the order number.
abstract interface class QuickOrderRepository {
  /// Guest: sends a code to [phone] (8 national digits).
  Future<Either<Failure, QuickOrderCode>> requestCode(
    String languageCode,
    String phone,
  );

  /// Guest: checks the code and places the order. The server creates the
  /// account if needed, and the app is signed in from then on.
  Future<Either<Failure, String>> confirmAsGuest(
    String languageCode, {
    required String requestId,
    required String code,
    required List<CartItem> lines,
  });

  /// Signed-in customer: places the order at once.
  Future<Either<Failure, String>> place(
    String languageCode,
    List<CartItem> lines,
  );
}
