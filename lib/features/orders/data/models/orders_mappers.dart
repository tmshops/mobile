import '../../../../core/cart/cart_item.dart';
import '../../domain/entities/order.dart';
import '../../domain/entities/order_status.dart';
import '../../domain/entities/parcel.dart';
import 'orders_models.dart';

DateTime _date(String iso) => DateTime.parse(iso).toLocal();

DateTime? _dateOrNull(String? iso) =>
    iso == null ? null : DateTime.tryParse(iso)?.toLocal();

const _codes = {
  'quick_order': StatusCode.quickOrder,
  'awaiting_payment': StatusCode.awaitingPayment,
  'paid': StatusCode.paid,
  'purchased': StatusCode.purchased,
  'to_warehouse': StatusCode.toWarehouse,
  'in_warehouse': StatusCode.inWarehouse,
  'problem': StatusCode.problem,
  'cancelled': StatusCode.cancelled,
  'forming': StatusCode.forming,
  'awaiting_surcharge': StatusCode.awaitingSurcharge,
  'in_transit': StatusCode.inTransit,
  'customs': StatusCode.customs,
  'arrived_tm': StatusCode.arrivedTm,
  'ready_for_pickup': StatusCode.readyForPickup,
  'with_courier': StatusCode.withCourier,
  'delivered': StatusCode.delivered,
};

const _stages = {
  'forming': ParcelStage.forming,
  'surcharge': ParcelStage.surcharge,
  'in_transit': ParcelStage.inTransit,
  'customs': ParcelStage.customs,
  'arrived': ParcelStage.arrived,
  'handover': ParcelStage.handover,
  'delivered': ParcelStage.delivered,
};

/// API name of a tab (`?tab=`).
String orderTabParam(OrderTab tab) => switch (tab) {
  OrderTab.active => 'active',
  OrderTab.completed => 'completed',
  OrderTab.cancelled => 'cancelled',
};

extension StatusModelX on StatusModel {
  /// An unknown code keeps the server title (TZ §6.2).
  Status toEntity() =>
      Status(code: _codes[code] ?? StatusCode.unknown, title: title);
}

extension OrderSummaryModelX on OrderSummaryModel {
  OrderSummary toEntity() => OrderSummary(
    number: number,
    createdAt: _date(createdAt),
    status: status.toEntity(),
    total: total,
    itemCount: itemCount,
    previews: previews,
    canRepeat: canRepeat,
  );
}

extension OrderDetailsModelX on OrderDetailsModel {
  OrderDetails toEntity() => OrderDetails(
    number: number,
    createdAt: _date(createdAt),
    status: status.toEntity(),
    statusText: statusText,
    items: [for (final item in items) item.toEntity()],
    history: [for (final e in history) e.toEntity()],
    money: OrderMoney(
      items: money.items,
      chinaDelivery: money.chinaDelivery,
      internationalDelivery: money.internationalDelivery,
      isEstimate: money.isEstimate,
      courier: money.courier,
      services: money.services,
      discount: money.discount,
      total: money.total,
      paid: money.paid,
      due: money.due,
    ),
    receiving: receiving,
    deliveryTypeName: deliveryTypeName,
    canPay: canPay,
    payDeadline: _dateOrNull(payDeadline),
    canCancel: canCancel,
    cancelNote: cancelNote,
    refundTo: refundTo,
    cancelReasons: [
      for (final r in cancelReasons) CancelReason(id: r.id, title: r.title),
    ],
    parcels: [
      for (final p in parcels)
        ParcelLink(number: p.number, status: p.status.toEntity()),
    ],
    canRepeat: canRepeat,
  );
}

extension OrderItemModelX on OrderItemModel {
  OrderItem toEntity() => OrderItem(
    id: id,
    productId: productId,
    title: title,
    imageUrl: imageUrl,
    quantity: quantity,
    price: price,
    status: status.toEntity(),
    options: options,
    warehousePhotos: warehousePhotos,
    chinaTrack: chinaTrack,
    problem: switch (problem) {
      final p? => ItemProblem(
        title: p.title,
        description: p.description,
        actions: [
          for (final a in p.actions)
            ProblemAction(id: a.id, title: a.title, isPrimary: a.isPrimary),
        ],
        photos: p.photos,
        deadline: _dateOrNull(p.deadline),
      ),
      null => null,
    },
  );
}

extension StatusEventModelX on StatusEventModel {
  StatusEvent toEntity() => StatusEvent(title: title, at: _date(at));
}

extension RepeatResponseModelX on RepeatResponseModel {
  RepeatedOrder toEntity() => RepeatedOrder(
    lines: [
      for (final l in lines)
        CartItem(
          productId: l.productId,
          title: l.title,
          imageUrl: l.imageUrl,
          price: l.price,
          quantity: l.quantity,
          skuId: l.skuId,
          skuLabel: l.skuLabel,
          sellerName: l.sellerName,
        ),
    ],
    unavailable: unavailable,
  );
}

extension ParcelSummaryModelX on ParcelSummaryModel {
  ParcelSummary toEntity() => ParcelSummary(
    number: number,
    status: status.toEntity(),
    stage: _stages[stage] ?? ParcelStage.forming,
    itemCount: itemCount,
    previews: previews,
    etaFrom: _dateOrNull(etaFrom),
    etaTo: _dateOrNull(etaTo),
  );
}

extension ParcelDetailsModelX on ParcelDetailsModel {
  ParcelDetails toEntity() => ParcelDetails(
    number: number,
    status: status.toEntity(),
    stage: _stages[stage] ?? ParcelStage.forming,
    stageDates: {
      for (final MapEntry(:key, :value) in stageDates.entries)
        if ((_stages[key], _dateOrNull(value)) case (final stage?, final date?))
          stage: date,
    },
    deliveryTypeName: deliveryTypeName,
    items: [
      for (final i in items)
        ParcelItem(
          orderNumber: i.orderNumber,
          title: i.title,
          imageUrl: i.imageUrl,
          quantity: i.quantity,
        ),
    ],
    history: [for (final e in history) e.toEntity()],
    etaFrom: _dateOrNull(etaFrom),
    etaTo: _dateOrNull(etaTo),
    weightGrams: weightGrams,
    canSendNow: canSendNow,
    freeStorageUntil: _dateOrNull(freeStorageUntil),
    surcharge: switch (surcharge) {
      final s? => Surcharge(
        weightGrams: s.weightGrams,
        ratePerKg: s.ratePerKg,
        deliveryCost: s.deliveryCost,
        paid: s.paid,
        amount: s.amount,
      ),
      null => null,
    },
    pickup: switch (pickup) {
      final p? => PickupInfo(
        code: p.code,
        pointName: p.pointName,
        address: p.address,
        hours: p.hours,
        phone: p.phone,
        amountDue: p.amountDue,
      ),
      null => null,
    },
    courier: switch (courier) {
      final c? => CourierInfo(
        name: c.name,
        phone: c.phone,
        amountDue: c.amountDue,
      ),
      null => null,
    },
    claimUntil: _dateOrNull(claimUntil),
  );
}
