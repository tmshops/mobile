import 'package:tmshop/features/wallet/domain/entities/wallet.dart';

final walletNow = DateTime(2026, 11, 12, 15);

OperationsPage operationsPage(int from, int count, {String? next}) =>
    OperationsPage(
      items: [
        for (var i = from; i < from + count; i++)
          WalletOperation(
            id: 'op$i',
            type: i.isEven ? OperationType.topUp : OperationType.surcharge,
            title: i.isEven ? 'Пополнение картой' : 'Доплата по заказу №10225',
            amount: i.isEven ? 100 : -52,
            // Two per day, newest first.
            at: walletNow.subtract(Duration(hours: 1 + i * 12)),
            orderNumber: i.isEven ? null : '10225',
          ),
      ],
      nextCursor: next,
    );

final weightBill = SurchargeBill(
  id: 's-weight',
  reason: SurchargeReason.weight,
  title: 'Доплата за вес',
  amount: 52,
  createdAt: walletNow.subtract(const Duration(days: 1)),
  orderNumber: '10225',
  parcelNumber: 'P-5518',
  deadline: walletNow.add(const Duration(days: 3)),
  lines: const [
    BillLine(label: 'Вес посылки', value: '2,35 кг'),
    BillLine(label: 'Оплачено при заказе', value: '−54 TMT'),
  ],
);

final priceBill = SurchargeBill(
  id: 's-price',
  reason: SurchargeReason.priceIncrease,
  title: 'Цена у продавца выросла',
  amount: 34,
  createdAt: walletNow.subtract(const Duration(days: 2)),
  orderNumber: '10223',
);

final sampleRefunds = [
  Refund(
    id: 'r1',
    title: 'Возврат за заказ №10212',
    amount: 45,
    destination: RefundDestination.balance,
    status: RefundStatus.paid,
    at: walletNow.subtract(const Duration(days: 14)),
    orderNumber: '10212',
  ),
  Refund(
    id: 'r2',
    title: 'Возврат за заказ №10219',
    amount: 210,
    destination: RefundDestination.card,
    status: RefundStatus.approved,
    at: walletNow.subtract(const Duration(days: 3)),
    orderNumber: '10219',
  ),
];
