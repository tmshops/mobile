import 'dart:convert';

import 'package:hive_ce/hive_ce.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/database/hive_registry.dart';
import '../../../../core/dev/fake_backend/fake_address_backend.dart';
import '../../../../core/dev/fake_backend/fake_checkout_backend.dart';
import '../../../../core/dev/fake_backend/fake_orders_backend.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/entities/checkout.dart';
import '../models/checkout_models.dart';

/// Checkout API. Throws `NetworkException` / `ServerException`.
abstract interface class CheckoutRemoteDataSource {
  Future<CheckoutPreviewModel> preview(
    String languageCode,
    Map<String, dynamic> body,
  );

  Future<PlaceOrderResponseModel> placeOrder(
    String languageCode,
    Map<String, dynamic> body,
    String idempotencyKey,
  );

  /// New payment id for [orderNumber].
  Future<String> restartPayment(String orderNumber);

  /// The account's addresses, the same list as «Адреса»:
  /// `{addresses: [{id, address, details, region, is_default}]}`.
  Future<Map<String, dynamic>> savedAddresses(String languageCode);

  Future<PaymentStatusModel> paymentStatus(
    String languageCode,
    String paymentId,
  );
}

/// Dev stand-in until the backend exists; keeps orders for the session.
@LazySingleton(as: CheckoutRemoteDataSource, env: [Environment.dev])
class FakeCheckoutRemoteDataSource implements CheckoutRemoteDataSource {
  FakeCheckoutRemoteDataSource(
    this._networkInfo,
    FakeOrdersBackend orders,
    this._addresses,
  ) : _backend = FakeCheckoutBackend(orders: orders);

  final NetworkInfo _networkInfo;
  final FakeCheckoutBackend _backend;
  final FakeAddressBackend _addresses;

  @override
  Future<Map<String, dynamic>> savedAddresses(String languageCode) async {
    await _request(_statusLatency);
    return _addresses.list(languageCode);
  }

  static const _latency = Duration(milliseconds: 500);
  static const _orderLatency = Duration(milliseconds: 900);
  static const _statusLatency = Duration(milliseconds: 200);

  Future<void> _request(Duration latency) async {
    if (!await _networkInfo.isOnline) throw const NetworkException();
    await Future<void>.delayed(latency);
  }

  @override
  Future<CheckoutPreviewModel> preview(
    String languageCode,
    Map<String, dynamic> body,
  ) async {
    await _request(_latency);
    return _parse(
      () => CheckoutPreviewModel.fromJson(_backend.preview(languageCode, body)),
    );
  }

  @override
  Future<PlaceOrderResponseModel> placeOrder(
    String languageCode,
    Map<String, dynamic> body,
    String idempotencyKey,
  ) async {
    await _request(_orderLatency);
    return _parse(
      () => PlaceOrderResponseModel.fromJson(
        _backend.placeOrder(languageCode, body, idempotencyKey),
      ),
    );
  }

  @override
  Future<String> restartPayment(String orderNumber) async {
    await _request(_latency);
    final id = _backend.restartPayment(orderNumber);
    if (id == null) throw const ServerException(code: 'not_found');
    return id;
  }

  @override
  Future<PaymentStatusModel> paymentStatus(
    String languageCode,
    String paymentId,
  ) async {
    await _request(_statusLatency);
    final json = _backend.paymentStatus(languageCode, paymentId);
    if (json == null) throw const ServerException(code: 'not_found');
    return _parse(() => PaymentStatusModel.fromJson(json));
  }

  static T _parse<T>(T Function() parse) {
    try {
      return parse();
    } on Object catch (e) {
      throw ServerException(cause: e);
    }
  }
}

/// Recipient and address from the last order, until login and the address
/// book exist. Plain strings in the settings box: no adapters needed.
@lazySingleton
class CheckoutLocalDataSource {
  const CheckoutLocalDataSource(@Named(HiveBoxes.settings) this._box);

  final Box<String> _box;

  (Recipient, CourierAddress) read() {
    try {
      final r = _decode(_box.get(SettingsKeys.checkoutRecipient));
      final a = _decode(_box.get(SettingsKeys.checkoutAddress));
      return (
        Recipient(
          firstName: r['first_name'] as String? ?? '',
          lastName: r['last_name'] as String? ?? '',
          phone: r['phone'] as String? ?? '',
        ),
        CourierAddress(
          savedId: a['saved_id'] as String?,
          street: a['street'] as String? ?? '',
          details: a['details'] as String? ?? '',
        ),
      );
    } on Object {
      // Unreadable: start with empty fields rather than fail checkout.
      return (const Recipient(), const CourierAddress());
    }
  }

  Future<void> write(Recipient recipient, CourierAddress address) async {
    try {
      await _box.putAll({
        SettingsKeys.checkoutRecipient: jsonEncode({
          'first_name': recipient.firstName.trim(),
          'last_name': recipient.lastName.trim(),
          'phone': recipient.phone,
        }),
        SettingsKeys.checkoutAddress: jsonEncode({
          'saved_id': ?address.savedId,
          'street': address.street.trim(),
          'details': address.details.trim(),
        }),
      });
    } on Object catch (e) {
      throw CacheException(e);
    }
  }

  static Map<String, dynamic> _decode(String? raw) =>
      raw == null ? const {} : jsonDecode(raw) as Map<String, dynamic>;
}
