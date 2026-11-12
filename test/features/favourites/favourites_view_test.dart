import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart' show right;
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/auth/auth_cubit.dart';
import 'package:tmshop/core/auth/user_profile.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/favourites/favourites_cubit.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/price_alerts/price_alerts_cubit.dart';
import 'package:tmshop/core/product/domain/product_summary.dart';
import 'package:tmshop/core/utils/money_format.dart';
import 'package:tmshop/core/viewed/viewed_product.dart';
import 'package:tmshop/features/favourites/presentation/bloc/favourites_view_cubit.dart';
import 'package:tmshop/features/favourites/presentation/bloc/viewed_cubit.dart';
import 'package:tmshop/features/favourites/presentation/widgets/favourites_view.dart';
import 'package:tmshop/features/favourites/presentation/widgets/price_alerts_view.dart';
import 'package:tmshop/features/favourites/presentation/widgets/viewed_view.dart';

import '../../helpers/favourites_fixtures.dart';
import '../../helpers/mock_blocs.dart';
import '../../helpers/pump_view.dart';

class _MockViewCubit extends MockCubit<FavouritesViewState>
    implements FavouritesViewCubit {}

class _MockViewedCubit extends MockCubit<ViewedState> implements ViewedCubit {}

const _customer = AuthState.signedIn(UserProfile(id: 'u', phone: '65123456'));

void main() {
  final ru = lookupAppLocalizations(AppLocales.ru);
  final tk = lookupAppLocalizations(AppLocales.tk);

  group('FavouritesView', () {
    late _MockViewCubit view;
    late GlobalCubits cubits;
    late List<String> opened;

    setUp(() {
      view = _MockViewCubit();
      opened = [];
      when(
        () =>
            view.refresh(any(), any(), onlyMissing: any(named: 'onlyMissing')),
      ).thenAnswer((_) async {});
    });

    Future<void> pump(
      WidgetTester tester, {
      String lang = 'ru',
      bool isEmpty = false,
      AuthState auth = const AuthState.guest(),
      FavouritesViewState? state,
      double textScale = 1,
      double width = 360,
    }) async {
      final items = isEmpty ? const <Never>[] : seededFavourites(lang);
      final locale = lang == 'tk' ? AppLocales.tk : AppLocales.ru;
      cubits = GlobalCubits(
        locale: locale,
        auth: auth,
        favourites: FavouritesState(items: [...items]),
      );
      when(() => view.state).thenReturn(
        state ?? FavouritesViewState(offers: offersFor(lang, [...items])),
      );
      await pumpView(
        tester,
        FavouritesView(
          onOpenProduct: (p) => opened.add(p.id),
          onOpenCatalog: () => opened.add('catalog'),
          onOpenCart: () => opened.add('cart'),
          onLogin: () => opened.add('login'),
        ),
        cubits: cubits,
        locale: locale,
        textScale: textScale,
        width: width,
        providers: [BlocProvider<FavouritesViewCubit>.value(value: view)],
      );
    }

    testWidgets('guest: banner, count, price drops and a sold-out tile', (
      tester,
    ) async {
      await pump(tester);
      expect(find.text(ru.favouritesGuestBanner), findsOneWidget);
      expect(find.text(ru.ordersItemCount(4)), findsOneWidget);
      expect(find.textContaining('Цена снизилась'), findsNWidgets(2));

      await tester.tap(find.text(ru.favouritesGuestBanner));
      expect(opened, ['login']);

      await scrollThrough(tester, find.byType(CustomScrollView), steps: 2);
      expect(find.text(ru.productOutOfStock), findsOneWidget);
      await tester.tap(find.text(ru.favouritesSimilar));
      expect(opened.last, seededFavourites('ru').last.id);
    });

    testWidgets('a customer sees no sign-in banner', (tester) async {
      await pump(tester, auth: _customer);
      expect(find.text(ru.favouritesGuestBanner), findsNothing);
    });

    testWidgets('the heart removes with «Отменить»', (tester) async {
      await pump(tester);
      final first = seededFavourites('ru').first;
      when(
        () => cubits.favourites.removeMany(any()),
      ).thenAnswer((_) async => [first]);
      await tester.tap(find.bySemanticsLabel(ru.favouriteRemove).first);
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 500));
      expect(find.text(ru.favouritesRemoved(1)), findsOneWidget);
      await tester.tap(find.text(ru.actionUndo));
      verify(() => cubits.favourites.restore([first])).called(1);
    });

    testWidgets('empty: illustration and «В каталог»', (tester) async {
      await pump(tester, isEmpty: true, state: const FavouritesViewState());
      expect(find.text(ru.favouritesEmptyTitle), findsOneWidget);
      expect(find.text(ru.favouritesSelect), findsNothing);
      await tester.tap(find.text(ru.actionGoToCatalog));
      expect(opened, ['catalog']);
    });

    testWidgets('selection: ticks, bar and bulk delete', (tester) async {
      final items = seededFavourites('ru');
      await pump(
        tester,
        state: FavouritesViewState(
          offers: offersFor('ru', items),
          isSelecting: true,
          selected: {items.first.id, items[1].id},
        ),
      );
      expect(find.text(ru.favouritesSelected(2)), findsOneWidget);
      expect(find.text(ru.favouritesDone), findsOneWidget);
      expect(find.text(ru.favouritesSelectAll), findsOneWidget);
      // Hearts give way to ticks.
      expect(find.bySemanticsLabel(ru.favouriteRemove), findsNothing);

      await tester.tap(find.text(ru.actionRemove));
      await tester.pump();
      verify(
        () => cubits.favourites.removeMany({items.first.id, items[1].id}),
      ).called(1);
    });

    testWidgets('a failed price refresh offers «Повторить»', (tester) async {
      await pump(
        tester,
        state: const FavouritesViewState(failure: NetworkFailure()),
      );
      expect(find.text(ru.favouritesRefreshFailed), findsOneWidget);
      await tester.tap(find.text(ru.actionRetry));
      verify(
        () => view.refresh('ru', any(), onlyMissing: any(named: 'onlyMissing')),
      ).called(1);
    });

    for (final width in [360.0, 412.0]) {
      testWidgets('fits in Turkmen at 1.3× on ${width.toInt()} dp', (
        tester,
      ) async {
        await pump(tester, lang: 'tk', textScale: 1.3, width: width);
        expect(find.text(tk.favouritesGuestBanner), findsOneWidget);
        await scrollThrough(tester, find.byType(CustomScrollView), steps: 3);
        expect(tester.takeException(), isNull);
      });
    }
  });

  group('ViewedView', () {
    late _MockViewedCubit cubit;
    final now = DateTime(2026, 11, 12, 15);
    ViewedProduct viewed(String id, DateTime at) => ViewedProduct(
      product: ProductSummary(
        id: id,
        title: 'Товар $id',
        imageUrl: '',
        price: 216,
        oldPrice: 260,
      ),
      viewedAt: at,
    );
    final items = [
      viewed('a', DateTime(2026, 11, 12, 14)),
      viewed('b', DateTime(2026, 11, 12, 9)),
      viewed('c', DateTime(2026, 11, 11, 20)),
      viewed('d', DateTime(2026, 11, 3, 10)),
    ];

    setUp(() {
      cubit = _MockViewedCubit();
      when(() => cubit.clear()).thenAnswer((_) async {});
      when(() => cubit.remove(any())).thenAnswer((_) async {});
    });

    Future<void> pump(
      WidgetTester tester,
      ViewedState state, {
      Locale locale = AppLocales.ru,
      double textScale = 1,
      double width = 360,
    }) async {
      when(() => cubit.state).thenReturn(state);
      await pumpView(
        tester,
        ViewedView(onOpenProduct: (_) {}, onOpenCatalog: () {}, now: now),
        locale: locale,
        textScale: textScale,
        width: width,
        providers: [BlocProvider<ViewedCubit>.value(value: cubit)],
      );
    }

    testWidgets('groups by day and clears after confirming', (tester) async {
      await pump(tester, ViewedState(isLoading: false, items: items));
      expect(find.text(ru.dateToday), findsOneWidget);
      expect(find.text(ru.dateYesterday), findsOneWidget);
      expect(find.textContaining('3'), findsWidgets);
      expect(find.text('Товар a'), findsOneWidget);

      // Timed pumps: product images shimmer, so nothing ever settles.
      Future<void> settle() async {
        await tester.pump();
        await tester.pump(const Duration(milliseconds: 500));
      }

      await tester.tap(find.byTooltip(ru.viewedMenu));
      await settle();
      await tester.tap(find.text(ru.viewedClear));
      await settle();
      await tester.tap(find.text(ru.viewedClearConfirm));
      await settle();
      verify(() => cubit.clear()).called(1);
    });

    testWidgets('swiping a row forgets it', (tester) async {
      final state = ViewedState(isLoading: false, items: items);
      final states = StreamController<ViewedState>();
      addTearDown(states.close);
      whenListen(cubit, states.stream, initialState: state);
      when(() => cubit.remove('a')).thenAnswer((_) async {
        states.add(state.copyWith(items: items.sublist(1)));
      });
      await pump(tester, state);
      await tester.drag(find.text('Товар a'), const Offset(-500, 0));
      for (var i = 0; i < 4; i++) {
        await tester.pump(const Duration(milliseconds: 300));
      }
      verify(() => cubit.remove('a')).called(1);
      expect(find.text('Товар a'), findsNothing);
    });

    testWidgets('empty history has no menu', (tester) async {
      await pump(tester, const ViewedState(isLoading: false));
      expect(find.text(ru.viewedEmptyTitle), findsOneWidget);
      expect(find.byTooltip(ru.viewedMenu), findsNothing);
    });

    testWidgets('fits in Turkmen at 1.3× on 360 dp', (tester) async {
      await pump(
        tester,
        ViewedState(isLoading: false, items: items),
        locale: AppLocales.tk,
        textScale: 1.3,
      );
      expect(find.text(tk.dateToday), findsOneWidget);
      expect(tester.takeException(), isNull);
    });
  });

  group('PriceAlertsView', () {
    late GlobalCubits cubits;
    final alerts = seededAlerts('ru');

    Future<void> pump(
      WidgetTester tester,
      PriceAlertsState state, {
      Locale locale = AppLocales.ru,
      double textScale = 1,
      double width = 360,
    }) async {
      cubits = GlobalCubits(locale: locale, priceAlerts: state);
      await pumpView(
        tester,
        PriceAlertsView(onOpenProduct: (_) {}, onOpenCatalog: () {}),
        cubits: cubits,
        locale: locale,
        textScale: textScale,
        width: width,
      );
    }

    testWidgets('rows show the drop and switch off', (tester) async {
      await pump(
        tester,
        PriceAlertsState(status: PriceAlertsStatus.ready, items: alerts),
      );
      final dropped = alerts.firstWhere((a) => a.hasDropped);
      expect(
        find.text(
          ru.priceAlertsSubscribedAt(
            MoneyFormat.tmt(ru, dropped.subscribedPrice),
          ),
        ),
        findsOneWidget,
      );
      expect(find.textContaining('−'), findsOneWidget);

      when(
        () => cubits.priceAlerts.toggle('ru', dropped.product),
      ).thenAnswer((_) async => right(false));
      await tester.tap(find.byType(Switch).first);
      await tester.pump();
      verify(() => cubits.priceAlerts.toggle('ru', dropped.product)).called(1);
    });

    testWidgets('empty and failed states', (tester) async {
      await pump(
        tester,
        const PriceAlertsState(status: PriceAlertsStatus.ready),
      );
      expect(find.text(ru.priceAlertsEmptyTitle), findsOneWidget);

      await pump(
        tester,
        const PriceAlertsState(
          status: PriceAlertsStatus.failure,
          failure: NetworkFailure(),
        ),
      );
      expect(find.text(ru.offlineTitle), findsOneWidget);
    });

    for (final width in [360.0, 412.0]) {
      testWidgets('fits in Turkmen at 1.3× on ${width.toInt()} dp', (
        tester,
      ) async {
        await pump(
          tester,
          PriceAlertsState(
            status: PriceAlertsStatus.ready,
            items: seededAlerts('tk'),
          ),
          locale: AppLocales.tk,
          textScale: 1.3,
          width: width,
        );
        expect(tester.takeException(), isNull);
      });
    }
  });
}
