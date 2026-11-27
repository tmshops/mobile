import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/utils/money_format.dart';
import 'package:tmshop/core/widgets/widgets.dart';
import 'package:tmshop/features/orders/domain/entities/order.dart';
import 'package:tmshop/features/orders/domain/entities/parcel.dart';
import 'package:tmshop/features/orders/presentation/bloc/loadable.dart';
import 'package:tmshop/features/orders/presentation/bloc/order_cubit.dart';
import 'package:tmshop/features/orders/presentation/bloc/orders_cubit.dart';
import 'package:tmshop/features/orders/presentation/bloc/parcel_cubits.dart';
import 'package:tmshop/features/orders/presentation/pages/parcel_page.dart';
import 'package:tmshop/features/orders/presentation/pages/parcels_page.dart';
import 'package:tmshop/features/orders/presentation/widgets/order_card.dart';
import 'package:tmshop/features/orders/presentation/widgets/order_view.dart';
import 'package:tmshop/features/orders/presentation/widgets/orders_view.dart';

import '../../helpers/orders_fixtures.dart';
import '../../helpers/pump_view.dart';

class _MockOrdersCubit extends MockCubit<OrdersState> implements OrdersCubit {}

class _MockOrderCubit extends MockCubit<OrderState> implements OrderCubit {}

class _MockParcelsCubit extends MockCubit<Loadable<List<ParcelSummary>>>
    implements ParcelsCubit {}

class _MockParcelCubit extends MockCubit<ParcelState> implements ParcelCubit {}

void main() {
  final ru = lookupAppLocalizations(AppLocales.ru);
  final at = DateTime(2026, 11, 12, 14, 30);

  group('OrdersView', () {
    late _MockOrdersCubit cubit;
    late List<String> opened;

    setUp(() {
      cubit = _MockOrdersCubit();
      opened = [];
      when(() => cubit.refresh()).thenAnswer((_) async {});
      when(() => cubit.selectTab(any())).thenAnswer((_) async {});
      when(() => cubit.repeat(any())).thenAnswer((_) async {});
    });

    setUpAll(() => registerFallbackValue(OrderTab.active));

    Future<void> pump(
      WidgetTester tester,
      OrdersState state, {
      Locale locale = AppLocales.ru,
      double textScale = 1,
      double width = 360,
    }) {
      when(() => cubit.state).thenReturn(state);
      return pumpView(
        tester,
        OrdersView(
          onOpenOrder: opened.add,
          onOpenCatalog: () {},
          onOpenCart: () {},
        ),
        providers: [BlocProvider<OrdersCubit>.value(value: cubit)],
        locale: locale,
        textScale: textScale,
        width: width,
      );
    }

    OrdersState loaded(
      OrderTab tab, {
      bool isFromCache = false,
      String lang = 'ru',
    }) => OrdersState(
      tab: tab,
      tabs: {
        tab: Loadable(
          data: sampleOrders(lang, tab),
          fetchedAt: at,
          isFromCache: isFromCache,
        ),
      },
    );

    testWidgets('first load shows a skeleton', (tester) async {
      await pump(tester, const OrdersState());
      expect(find.byType(SkeletonList), findsOneWidget);
    });

    testWidgets('cards open the order; tabs switch', (tester) async {
      await pump(tester, loaded(OrderTab.active));
      expect(find.byType(OrderCard), findsWidgets);
      await tester.tap(find.text(ru.orderNumber('10228')));
      expect(opened, ['10228']);

      await tester.tap(find.text(ru.ordersTabCompleted));
      verify(() => cubit.selectTab(OrderTab.completed)).called(1);
    });

    testWidgets('completed orders offer «Повторить»', (tester) async {
      await pump(tester, loaded(OrderTab.completed));
      await tester.tap(find.text(ru.ordersRepeat));
      verify(() => cubit.repeat('10219')).called(1);
    });

    testWidgets('offline copy: «Данные на…», no «Повторить»', (tester) async {
      await pump(tester, loaded(OrderTab.completed, isFromCache: true));
      expect(find.textContaining(ru.ordersCachedAt('').trim()), findsOneWidget);
      expect(find.text(ru.ordersRepeat), findsNothing);
    });

    testWidgets('an empty tab says so', (tester) async {
      await pump(
        tester,
        OrdersState(
          tab: OrderTab.cancelled,
          tabs: {OrderTab.cancelled: Loadable(data: const [], fetchedAt: at)},
        ),
      );
      expect(find.text(ru.ordersEmptyCancelled), findsOneWidget);
    });

    testWidgets('a failed first load offers a retry', (tester) async {
      await pump(
        tester,
        const OrdersState(
          tabs: {OrderTab.active: Loadable(failure: NetworkFailure())},
        ),
      );
      expect(find.byType(FailureView), findsOneWidget);
    });

    for (final width in [360.0, 412.0]) {
      testWidgets('fits in Turkmen at 1.3× on ${width.toInt()} dp', (
        tester,
      ) async {
        await pump(
          tester,
          loaded(OrderTab.active, lang: 'tk', isFromCache: true),
          locale: AppLocales.tk,
          textScale: 1.3,
          width: width,
        );
        await scrollThrough(tester, find.byType(Scrollable).last);
        expect(tester.takeException(), isNull);
      });
    }
  });

  group('OrderView', () {
    late _MockOrderCubit cubit;
    late List<OrderDetails> paid;
    late List<String> reviewed;
    late int askedSupport;

    setUp(() {
      cubit = _MockOrderCubit();
      paid = [];
      reviewed = [];
      askedSupport = 0;
      when(() => cubit.refresh()).thenAnswer((_) async {});
      when(() => cubit.cancel(any())).thenAnswer((_) async {});
      when(
        () => cubit.resolve(
          itemId: any(named: 'itemId'),
          actionId: any(named: 'actionId'),
        ),
      ).thenAnswer((_) async {});
    });

    Future<void> pump(
      WidgetTester tester,
      OrderDetails order, {
      bool isFromCache = false,
      Locale locale = AppLocales.ru,
      double textScale = 1,
      double width = 360,
    }) {
      when(() => cubit.state).thenReturn(
        OrderState(
          order: Loadable(data: order, fetchedAt: at, isFromCache: isFromCache),
        ),
      );
      return pumpView(
        tester,
        OrderView(
          number: order.number,
          onOpenParcel: (_) {},
          onOpenProduct: (_) {},
          onPay: paid.add,
          onOpenCart: () {},
          onWriteReview: (id) async => reviewed.add(id),
          onAskSupport: () => askedSupport++,
        ),
        providers: [BlocProvider<OrderCubit>.value(value: cubit)],
        locale: locale,
        textScale: textScale,
        width: width,
      );
    }

    testWidgets('awaiting payment: sticky «Оплатить» with the amount due', (
      tester,
    ) async {
      final order = sampleOrder('ru', '10228');
      await pump(tester, order);
      final label = ru.checkoutPay(MoneyFormat.tmt(ru, order.money.due));
      await tester.tap(find.text(label));
      expect(paid.single.number, '10228');
    });

    testWidgets('received items offer a review; the order reloads after', (
      tester,
    ) async {
      final order = sampleOrder('ru', '10219');
      final item = order.items.firstWhere((i) => i.canReview);
      await pump(tester, order);
      final button = find.text(ru.reviewsLeave).first;
      await tester.ensureVisible(button);
      await tester.tap(button);
      await tester.pump();
      expect(reviewed, [item.id]);
      verify(() => cubit.refresh()).called(1);
    });

    testWidgets('«Написать в поддержку по заказу» opens the chat', (
      tester,
    ) async {
      await pump(tester, sampleOrder('ru', '10228'));
      final button = find.text(ru.orderAskSupport);
      await tester.scrollUntilVisible(
        button,
        200,
        scrollable: find.byType(Scrollable).first,
      );
      await tester.tap(button);
      expect(askedSupport, 1);
    });

    testWidgets('cancel asks for a reason, then cancels', (tester) async {
      await pump(tester, sampleOrder('ru', '10228'));
      await scrollThrough(tester, find.byType(Scrollable).first);
      await tester.tap(find.text(ru.orderCancel).last);
      await tester.pump(const Duration(milliseconds: 500));

      final confirm = find.descendant(
        of: find.byType(BottomSheet),
        matching: find.widgetWithText(TertiaryButton, ru.orderCancel),
      );
      expect(tester.widget<TertiaryButton>(confirm).onPressed, isNull);
      await tester.pump(const Duration(milliseconds: 500));
      await tester.ensureVisible(find.text('Передумал(а)'));
      await tester.pump();
      await tester.tap(find.text('Передумал(а)'));
      await tester.pump();
      expect(tester.widget<TertiaryButton>(confirm).onPressed, isNotNull);
      await tester.tap(confirm);
      await tester.pump(const Duration(milliseconds: 500));
      verify(() => cubit.cancel('changed_mind')).called(1);
    });

    testWidgets('a problem item offers the server decisions', (tester) async {
      final order = sampleOrder('ru', '10231');
      await pump(tester, order);
      final problem = order.problems.single;
      final primary = problem.problem!.actions.firstWhere((a) => a.isPrimary);
      await tester.tap(find.text(primary.title));
      verify(
        () => cubit.resolve(itemId: problem.id, actionId: primary.id),
      ).called(1);
    });

    testWidgets('after purchase: no cancel, a gentle explanation', (
      tester,
    ) async {
      final order = sampleOrder('ru', '10231');
      await pump(tester, order);
      await scrollThrough(tester, find.byType(Scrollable).first);
      expect(find.text(ru.orderCancel), findsNothing);
      expect(find.text(order.cancelNote!), findsOneWidget);
    });

    testWidgets('offline copy: decisions and payment disabled', (tester) async {
      await pump(tester, sampleOrder('ru', '10228'), isFromCache: true);
      final pay = tester.widget<PrimaryButton>(find.byType(PrimaryButton).last);
      expect(pay.onPressed, isNull);
    });

    for (final number in ['10231', '10228', '10225', '10212']) {
      testWidgets('order $number fits in Turkmen at 1.3× on 360 dp', (
        tester,
      ) async {
        await pump(
          tester,
          sampleOrder('tk', number),
          locale: AppLocales.tk,
          textScale: 1.3,
        );
        await scrollThrough(tester, find.byType(Scrollable).first);
        expect(tester.takeException(), isNull);
      });
    }
  });

  group('Parcels', () {
    testWidgets('list shows progress and opens a parcel', (tester) async {
      final cubit = _MockParcelsCubit();
      when(() => cubit.refresh()).thenAnswer((_) async {});
      when(
        () => cubit.state,
      ).thenReturn(Loadable(data: sampleParcels('ru'), fetchedAt: at));
      final opened = <String>[];
      await pumpView(
        tester,
        ParcelsView(onOpenParcel: opened.add),
        providers: [BlocProvider<ParcelsCubit>.value(value: cubit)],
      );
      await tester.tap(find.text(ru.parcelNumber('P-5521')));
      expect(opened, ['P-5521']);
    });

    late _MockParcelCubit cubit;
    late int surcharges;

    Future<void> pumpParcel(
      WidgetTester tester,
      ParcelDetails parcel, {
      Locale locale = AppLocales.ru,
      double textScale = 1,
      double width = 360,
    }) {
      cubit = _MockParcelCubit();
      surcharges = 0;
      when(() => cubit.refresh()).thenAnswer((_) async {});
      when(() => cubit.sendNow()).thenAnswer((_) async {});
      when(() => cubit.state).thenReturn(
        ParcelState(
          parcel: Loadable(data: parcel, fetchedAt: at),
        ),
      );
      return pumpView(
        tester,
        ParcelView(
          number: parcel.number,
          onOpenOrder: (_) {},
          onPaySurcharge: () async => surcharges++,
        ),
        providers: [BlocProvider<ParcelCubit>.value(value: cubit)],
        locale: locale,
        textScale: textScale,
        width: width,
      );
    }

    testWidgets('ready: big pickup code', (tester) async {
      await pumpParcel(tester, sampleParcel('ru', 'P-5510'));
      expect(find.text('4821'), findsOneWidget);
      expect(find.text(ru.parcelPickupCode), findsOneWidget);
    });

    testWidgets('awaiting surcharge: calculation and «Оплатить»', (
      tester,
    ) async {
      final parcel = sampleParcel('ru', 'P-5518');
      await pumpParcel(tester, parcel);
      final pay = find.text(
        ru.checkoutPay(MoneyFormat.tmt(ru, parcel.surcharge!.amount)),
      );
      await tester.ensureVisible(pay);
      await tester.tap(pay);
      expect(surcharges, 1);
    });

    testWidgets('forming: «Отправить сейчас» asks first', (tester) async {
      await pumpParcel(tester, sampleParcel('ru', 'P-5525'));
      final send = find.text(ru.parcelSendNow);
      await tester.ensureVisible(send);
      await tester.tap(send);
      await tester.pump(const Duration(milliseconds: 500));
      expect(find.text(ru.parcelSendNowTitle), findsOneWidget);
      await tester.tap(find.text(ru.parcelSendNow).last);
      await tester.pump(const Duration(milliseconds: 500));
      verify(() => cubit.sendNow()).called(1);
    });

    for (final number in ['P-5525', 'P-5521', 'P-5518', 'P-5510', 'P-5502']) {
      testWidgets('parcel $number fits in Turkmen at 1.3× on 360 dp', (
        tester,
      ) async {
        await pumpParcel(
          tester,
          sampleParcel('tk', number),
          locale: AppLocales.tk,
          textScale: 1.3,
        );
        await scrollThrough(tester, find.byType(Scrollable).first);
        expect(tester.takeException(), isNull);
      });
    }
  });
}
