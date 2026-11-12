import 'package:freezed_annotation/freezed_annotation.dart';

import '../product/domain/product_summary.dart';

part 'price_alert.freezed.dart';

/// «Сообщить о снижении цены» for one product (TZ §5.6.10). [product]
/// carries today's price; [subscribedPrice] is the price at subscribing.
@freezed
abstract class PriceAlert with _$PriceAlert {
  const factory PriceAlert({
    required ProductSummary product,
    required int subscribedPrice,

    /// Switched off on the list stays visible until the list is reloaded,
    /// so it can be switched back on.
    @Default(true) bool isOn,
  }) = _PriceAlert;

  const PriceAlert._();

  String get id => product.id;

  bool get hasDropped => product.price < subscribedPrice;
}
