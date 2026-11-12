import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/cart/cart_cubit.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/theme/theme.dart';
import 'package:tmshop/core/widgets/widgets.dart';
import 'package:tmshop/features/cart/presentation/bloc/cart_quote_bloc.dart';
import 'package:tmshop/features/cart/presentation/widgets/cart_line_row.dart';
import 'package:tmshop/features/cart/presentation/widgets/cart_view.dart';

import '../../helpers/cart_fixtures.dart';
import '../../helpers/mock_blocs.dart';

class _MockQuoteBloc extends MockBloc<CartQuoteEvent, CartQuoteState>
    implements CartQuoteBloc {}

void main() {
  late _MockQuoteBloc quoteBloc;
  late GlobalCubits cubits;
  late int openedCatalog;
  late int comingSoon;
  late List<String?> checkouts;

  setUp(() {
    quoteBloc = _MockQuoteBloc();
    openedCatalog = 0;
    comingSoon = 0;
    checkouts = [];
  });

  Future<void> pump(
    WidgetTester tester, {
    required CartState cart,
    CartQuoteState quote = const CartQuoteState(),
    Locale locale = AppLocales.ru,
    double textScale = 1,
    double width = 360,
  }) async {
    when(() => quoteBloc.state).thenReturn(quote);
    cubits = GlobalCubits(locale: locale, cart: cart);
    when(() => cubits.cart.remove(any())).thenAnswer((_) async => 1);
    when(() => cubits.cart.restore(any(), any())).thenAnswer((_) async {});
    when(
      () =>
          cubits.cart.setSelected(any(), isSelected: any(named: 'isSelected')),
    ).thenAnswer((_) async {});
    when(
      () => cubits.cart.setSelectedMany(
        isSelected: any(named: 'isSelected'),
        keys: any(named: 'keys'),
      ),
    ).thenAnswer((_) async {});
    tester.view.physicalSize = Size(width, 800) * tester.view.devicePixelRatio;
    addTearDown(tester.view.resetPhysicalSize);
    await tester.pumpWidget(
      MultiBlocProvider(
        providers: [
          ...cubits.providers,
          BlocProvider<CartQuoteBloc>.value(value: quoteBloc),
        ],
        child: MaterialApp(
          theme: AppTheme.light(),
          locale: locale,
          localizationsDelegates: AppLocales.delegates,
          supportedLocales: AppLocales.supported,
          builder: (context, app) => MediaQuery(
            data: MediaQuery.of(
              context,
            ).copyWith(textScaler: TextScaler.linear(textScale)),
            child: app!,
          ),
          home: CartView(
            onOpenProduct: (_) {},
            onOpenCatalog: () => openedCatalog++,
            onCheckout: checkouts.add,
            onComingSoon: () => comingSoon++,
          ),
        ),
      ),
    );
    await tester.pump();
  }

  CartQuoteState quoted(String lang, CartState cart) =>
      CartQuoteState(quote: sampleQuote(lang, cart.items));

  testWidgets('empty cart offers the catalog', (tester) async {
    await pump(tester, cart: const CartState());
    expect(find.text('В корзине пока пусто'), findsOneWidget);
    await tester.tap(find.text('В каталог'));
    expect(openedCatalog, 1);
  });

  testWidgets('lines are grouped by seller with China delivery', (
    tester,
  ) async {
    final cart = CartState(items: sampleCart('ru'));
    await pump(tester, cart: cart, quote: quoted('ru', cart));
    final sellers = {for (final l in cart.items) l.sellerName};
    // Select-all, one per seller, one per line (some below the fold).
    expect(find.byType(Checkbox, skipOffstage: false), findsWidgets);
    expect(
      find.textContaining('Доставка по Китаю:', skipOffstage: false),
      findsNWidgets(sellers.length),
    );
    expect(find.text('Выбрано: 3 из 3'), findsOneWidget);
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('a dearer price since adding is flagged on the line', (
    tester,
  ) async {
    final cart = CartState(items: [sampleLine('ru', pricedUpProductId())]);
    await pump(tester, cart: cart, quote: quoted('ru', cart));
    expect(find.textContaining('Цена изменилась'), findsOneWidget);
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('below the minimum: progress shown, «Оформить» disabled', (
    tester,
  ) async {
    final cheap = sampleCart('ru').first.copyWith(quantity: 1);
    final cart = CartState(items: [cheap]);
    final quote = quoted('ru', cart);
    await pump(tester, cart: cart, quote: quote);
    if (quote.quote!.missingToMinimum > 0) {
      expect(find.byType(ProgressToMinimum), findsOneWidget);
      final button = tester.widget<PrimaryButton>(find.byType(PrimaryButton));
      expect(button.onPressed, isNull);
    }
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('enough ticked: «Оформить» opens checkout', (tester) async {
    final cart = CartState(
      items: [for (final l in sampleCart('ru')) l.copyWith(quantity: 5)],
    );
    await pump(tester, cart: cart, quote: quoted('ru', cart));
    await tester.tap(find.text('Оформить'));
    expect(checkouts, [null]);
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('select all and a single tick reach the cart', (tester) async {
    final cart = CartState(items: sampleCart('ru'));
    await pump(tester, cart: cart, quote: quoted('ru', cart));
    await tester.tap(find.text('Выбрать все'));
    verify(() => cubits.cart.setSelectedMany(isSelected: false)).called(1);

    final lastTitle = find.text(cart.items.last.title);
    await tester.dragUntilVisible(
      lastTitle,
      find.byType(CustomScrollView),
      const Offset(0, -200),
    );
    final lastTick = find.descendant(
      of: find.ancestor(of: lastTitle, matching: find.byType(CartLineRow)),
      matching: find.byType(Checkbox),
    );
    await tester.ensureVisible(lastTick);
    await tester.pump();
    await tester.tap(lastTick);
    verify(
      () => cubits.cart.setSelected(cart.items.last.key, isSelected: false),
    ).called(1);
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('swipe removes with «Отменить»', (tester) async {
    final cart = CartState(items: sampleCart('ru'));
    await pump(tester, cart: cart, quote: quoted('ru', cart));
    final first = cart.items.first;
    await tester.drag(find.byKey(ValueKey(first.key)), const Offset(-500, 0));
    // Image placeholders shimmer forever: step time instead of settling.
    for (var i = 0; i < 10; i++) {
      await tester.pump(const Duration(milliseconds: 100));
    }
    verify(() => cubits.cart.remove(first.key)).called(1);

    expect(find.text('Товар удалён из корзины'), findsOneWidget);
    await tester.tap(find.text('Отменить'));
    verify(() => cubits.cart.restore(first, 1)).called(1);
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('total opens the breakdown', (tester) async {
    final cart = CartState(items: sampleCart('ru'));
    await pump(tester, cart: cart, quote: quoted('ru', cart));
    await tester.tap(find.byType(ActionBarTotal));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 500));
    expect(find.text('Сумма заказа'), findsOneWidget);
    expect(find.text('Доставка по Китаю'), findsOneWidget);
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('promo error and a failed recalculation are shown', (
    tester,
  ) async {
    final cart = CartState(items: sampleCart('ru'));
    await pump(
      tester,
      cart: cart,
      quote: quoted('ru', cart).copyWith(
        promoError: 'Промокод не найден',
        failure: const NetworkFailure(),
      ),
    );
    await tester.dragUntilVisible(
      find.text('Промокод не найден'),
      find.byType(CustomScrollView),
      const Offset(0, -200),
    );
    expect(find.text('Не удалось пересчитать итог'), findsOneWidget);
    await tester.ensureVisible(find.text('Повторить'));
    await tester.pump();
    await tester.tap(find.text('Повторить'));
    verify(() => quoteBloc.add(const CartQuoteEvent.retried())).called(1);
    await tester.pumpWidget(const SizedBox());
  });

  for (final width in [360.0, 412.0]) {
    testWidgets('fits in Turkmen at 1.3× on ${width.toInt()} dp', (
      tester,
    ) async {
      final items = sampleCart('tk');
      final cart = CartState(
        items: [...items, sampleLine('tk', pricedUpProductId())],
      );
      await pump(
        tester,
        cart: cart,
        quote: quoted('tk', cart).copyWith(promoError: 'Promokod tapylmady'),
        locale: AppLocales.tk,
        textScale: 1.3,
        width: width,
      );
      for (var i = 0; i < 10; i++) {
        await tester.drag(
          find.byType(CustomScrollView),
          const Offset(0, -500),
          warnIfMissed: false,
        );
        await tester.pump();
      }
      await tester.pumpWidget(const SizedBox());
    });
  }
}
