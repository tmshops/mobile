import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/utils/money_format.dart';
import 'package:tmshop/core/widgets/widgets.dart';
import 'package:tmshop/features/orders/domain/entities/orders_feed.dart';
import 'package:tmshop/features/orders/presentation/bloc/loadable.dart';
import 'package:tmshop/features/orders/presentation/bloc/orders_feed_cubits.dart';
import 'package:tmshop/features/orders/presentation/widgets/orders_feed_view.dart';
import 'package:tmshop/features/orders/presentation/widgets/orders_overview_section.dart';
import 'package:tmshop/features/orders/presentation/widgets/tracking_ticker.dart';

import '../../helpers/orders_fixtures.dart';
import '../../helpers/pump_view.dart';

class _MockFeedCubit extends MockCubit<OrdersFeedState>
    implements OrdersFeedCubit {}

void main() {
  final ru = lookupAppLocalizations(AppLocales.ru);
  final at = DateTime(2026, 11, 27, 9);

  group('OrdersOverviewCard', () {
    final overview = sampleOverview('ru');
    late List<Object> taps;

    setUp(() => taps = []);

    Future<void> pump(
      WidgetTester tester,
      OrdersOverview? data, {
      Locale locale = AppLocales.ru,
      double textScale = 1,
      bool isScreenReader = false,
    }) => pumpView(
      tester,
      Builder(
        builder: (context) => MediaQuery(
          data: MediaQuery.of(
            context,
          ).copyWith(accessibleNavigation: isScreenReader),
          child: Scaffold(
            body: ListView(
              children: [
                OrdersOverviewCard(
                  overview: data,
                  onOpenAll: () => taps.add('all'),
                  onOpenFilter: taps.add,
                  onOpenTracking: taps.add,
                ),
              ],
            ),
          ),
        ),
      ),
      locale: locale,
      textScale: textScale,
    );

    testWidgets('filters carry their counters and open the filter', (
      tester,
    ) async {
      await pump(tester, overview);
      for (final filter in OrdersFilter.values) {
        final count = overview.countOf(filter);
        final label = ordersFilterLabel(ru, filter);
        expect(
          find.bySemanticsLabel(
            count > 0 ? ru.ordersFilterSpoken(label, count) : label,
          ),
          findsOneWidget,
        );
      }
      await tester.tap(find.text(ru.ordersFilterInTransit));
      await tester.tap(find.text(ru.actionSeeAll));
      expect(taps, [OrdersFilter.inTransit, 'all']);
      await tester.pumpWidget(const SizedBox());
    });

    testWidgets('before the answer: filters work, no counters, no ticker', (
      tester,
    ) async {
      await pump(tester, null);
      expect(find.byType(CountBadge), findsNothing);
      expect(find.byType(TrackingTicker), findsNothing);
      await tester.tap(find.text(ru.ordersFilterProblems));
      expect(taps, [OrdersFilter.problems]);
    });

    testWidgets('the tracking line turns every few seconds and opens', (
      tester,
    ) async {
      final tracking = overview.tracking;
      expect(tracking.length, greaterThan(1));
      await pump(tester, overview);
      expect(find.text(tracking[0].text), findsOneWidget);

      await tester.pump(TrackingTicker.period);
      await tester.pump(const Duration(milliseconds: 500));
      expect(find.text(tracking[1].text), findsOneWidget);
      expect(find.text(tracking[0].text), findsNothing);

      await tester.tap(find.text(tracking[1].text));
      expect(taps, [tracking[1]]);
      await tester.pumpWidget(const SizedBox());
    });

    testWidgets('with a screen reader the line stays still', (tester) async {
      final tracking = overview.tracking;
      await pump(tester, overview, isScreenReader: true);
      await tester.pump(TrackingTicker.period * 2);
      expect(find.text(tracking[0].text), findsOneWidget);
      await tester.pumpWidget(const SizedBox());
    });

    testWidgets('fits in Turkmen at 1.3× on 360 dp', (tester) async {
      await pump(
        tester,
        sampleOverview('tk'),
        locale: AppLocales.tk,
        textScale: 1.3,
      );
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox());
    });
  });

  group('OrdersFeedView', () {
    late _MockFeedCubit cubit;
    late List<String> opened;

    setUpAll(() => registerFallbackValue(OrdersFilter.buying));

    setUp(() {
      cubit = _MockFeedCubit();
      opened = [];
      when(() => cubit.refresh()).thenAnswer((_) async {});
      when(() => cubit.isClosed).thenReturn(false);
      when(() => cubit.select(any())).thenAnswer((_) async {});
    });

    OrdersFeedState loaded(
      OrdersFilter filter, {
      String lang = 'ru',
      bool isFromCache = false,
      List<FeedCard>? cards,
    }) => OrdersFeedState(
      filter: filter,
      slots: {
        filter: Loadable(
          data: cards ?? sampleFeed(lang, filter),
          fetchedAt: at,
          isFromCache: isFromCache,
        ),
      },
    );

    Future<void> pump(
      WidgetTester tester,
      OrdersFeedState state, {
      Locale locale = AppLocales.ru,
      double textScale = 1,
    }) {
      when(() => cubit.state).thenReturn(state);
      return pumpView(
        tester,
        OrdersFeedView(
          navigator: OrdersFeedNavigator(
            openOrder: (n) async => opened.add('order:$n'),
            openParcel: (n) async => opened.add('parcel:$n'),
            pay: (n, amount) async => opened.add('pay:$n:$amount'),
            writeReview: (n, item) async => opened.add('review:$n:$item'),
          ),
        ),
        providers: [BlocProvider<OrdersFeedCubit>.value(value: cubit)],
        locale: locale,
        textScale: textScale,
      );
    }

    testWidgets('chips switch the filter', (tester) async {
      await pump(tester, loaded(OrdersFilter.inTransit));
      final chip = tester.widget<AppChip>(
        find.widgetWithText(AppChip, ru.ordersFilterInTransit),
      );
      expect(chip.isSelected, isTrue);
      await tester.ensureVisible(find.text(ru.ordersFilterToReview));
      await tester.pump();
      await tester.tap(find.text(ru.ordersFilterToReview));
      verify(() => cubit.select(OrdersFilter.toReview)).called(1);
    });

    testWidgets('«Оплатить» pays the sum due, then the filter reloads', (
      tester,
    ) async {
      final state = loaded(OrdersFilter.awaitingPayment);
      final card = state.current.data!.firstWhere(
        (c) => c.actions.any((a) => a.type == FeedActionType.pay),
      );
      await pump(tester, state);
      expect(
        find.text(
          ru.ordersFeedDue(MoneyFormat.tmt(ru, card.amountDue!)),
          skipOffstage: false,
        ),
        findsWidgets,
      );
      await tester.tap(find.text(ru.ordersFeedPay).first);
      await tester.pump();
      expect(opened, ['pay:${card.number}:${card.amountDue}']);
      verify(() => cubit.refresh()).called(1);
    });

    testWidgets('«Доплатить» and «Отследить» open the parcel', (tester) async {
      final state = loaded(OrdersFilter.inTransit);
      final card = state.current.data!.first;
      await pump(tester, state);
      await tester.tap(find.text(ru.ordersFeedTrack).first);
      await tester.pump();
      expect(opened, ['parcel:${card.number}']);
    });

    testWidgets('«Оставить отзыв» opens the review of that item', (
      tester,
    ) async {
      final state = loaded(OrdersFilter.toReview);
      final card = state.current.data!.first;
      await pump(tester, state);
      await tester.tap(find.text(ru.ordersFeedReview).first);
      await tester.pump();
      expect(opened, ['review:${card.number}:${card.items.single.id}']);
    });

    testWidgets('a device copy opens the card instead of paying', (
      tester,
    ) async {
      final state = loaded(OrdersFilter.awaitingPayment, isFromCache: true);
      final card = state.current.data!.firstWhere(
        (c) => c.actions.any((a) => a.type == FeedActionType.pay),
      );
      await pump(tester, state);
      expect(find.textContaining(ru.ordersCachedAt('').trim()), findsOneWidget);
      await tester.tap(find.text(ru.ordersFeedPay).first);
      await tester.pump();
      expect(opened, ['order:${card.number}']);
    });

    testWidgets('an empty filter says so', (tester) async {
      await pump(tester, loaded(OrdersFilter.problems, cards: const []));
      expect(find.text(ru.ordersFeedEmpty), findsOneWidget);
    });

    for (final filter in OrdersFilter.values) {
      testWidgets('fits in Turkmen at 1.3× on 360 dp: ${filter.name}', (
        tester,
      ) async {
        await pump(
          tester,
          loaded(filter, lang: 'tk'),
          locale: AppLocales.tk,
          textScale: 1.3,
        );
        await scrollThrough(tester, find.byType(ListView).last);
      });
    }
  });
}
