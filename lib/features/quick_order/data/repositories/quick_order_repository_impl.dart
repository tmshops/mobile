import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/auth/session_data.dart';
import '../../../../core/auth/session_repository.dart';
import '../../../../core/auth/user_profile.dart';
import '../../../../core/cart/cart_item.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/error/guard.dart';
import '../../domain/entities/quick_order.dart';
import '../../domain/repositories/quick_order_repository.dart';
import '../datasources/quick_order_remote_data_source.dart';

@LazySingleton(as: QuickOrderRepository)
class QuickOrderRepositoryImpl implements QuickOrderRepository {
  const QuickOrderRepositoryImpl(this._remote, this._session);

  final QuickOrderRemoteDataSource _remote;
  final SessionRepository _session;

  @override
  Future<Either<Failure, QuickOrderCode>> requestCode(
    String languageCode,
    String phone,
  ) => guardCall(() async {
    final json = await _remote.requestCode(languageCode, phone);
    return QuickOrderCode(
      requestId: json['request_id'] as String,
      codeLength: json['code_length'] as int,
      destination: json['destination'] as String,
    );
  });

  @override
  Future<Either<Failure, String>> confirmAsGuest(
    String languageCode, {
    required String requestId,
    required String code,
    required List<CartItem> lines,
  }) => guardCall(() async {
    final json = await _remote.placeAsGuest(
      languageCode,
      requestId: requestId,
      code: code,
      lines: _body(lines),
    );
    await _session.start(
      SessionTokens(
        access: json['access_token'] as String,
        refresh: json['refresh_token'] as String,
      ),
      UserProfileModel.fromJson(
        json['profile'] as Map<String, dynamic>,
      ).toEntity(),
    );
    return json['order_number'] as String;
  });

  @override
  Future<Either<Failure, String>> place(
    String languageCode,
    List<CartItem> lines,
  ) => guardCall(() async {
    final json = await _remote.place(languageCode, _body(lines));
    return json['order_number'] as String;
  });

  static List<Map<String, dynamic>> _body(List<CartItem> lines) => [
    for (final l in lines)
      {
        'product_id': l.productId,
        'sku_id': ?l.skuId,
        'quantity': l.quantity,
        'comment': ?l.comment,
      },
  ];
}
