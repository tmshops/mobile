import 'package:tmshop/core/cart/cart_item.dart';
import 'package:tmshop/core/dev/fake_backend/fake_checkout_backend.dart';
import 'package:tmshop/features/checkout/data/models/checkout_mappers.dart';
import 'package:tmshop/features/checkout/data/models/checkout_models.dart';
import 'package:tmshop/features/checkout/domain/entities/checkout.dart';

import 'cart_fixtures.dart';

const validRecipient = Recipient(
  firstName: 'Айна',
  lastName: 'Атаева',
  phone: '65123456',
);

/// A draft that passes every check (courier, address, consent).
const readyDraft = CheckoutDraft(
  recipient: validRecipient,
  address: CourierAddress(street: 'ул. Магтымгулы, 10', details: 'кв. 5'),
  hasConsent: true,
);

List<CartItem> checkoutLines(String lang) => sampleCart(lang);

/// Real preview from the fake server, run through the real parser.
CheckoutPreview samplePreview(
  String lang, {
  List<CartItem>? lines,
  CheckoutDraft draft = readyDraft,
  String region = 'ashgabat',
  FakeCheckoutBackend? backend,
}) => CheckoutPreviewModel.fromJson(
  (backend ?? FakeCheckoutBackend()).preview(
    lang,
    CheckoutRequest.body(
      regionId: region,
      lines: lines ?? checkoutLines(lang),
      draft: draft,
    ),
  ),
).toEntity();
