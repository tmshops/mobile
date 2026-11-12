import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:fpdart/fpdart.dart' show right;
import 'package:tmshop/core/auth/auth_cubit.dart';
import 'package:tmshop/core/auth/user_profile.dart';
import 'package:tmshop/core/cart/cart_item.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/product/domain/product_summary.dart';
import 'package:tmshop/core/theme/theme.dart';
import 'package:tmshop/core/widgets/widgets.dart';
import 'package:tmshop/features/product/presentation/bloc/product_bloc.dart';
import 'package:tmshop/features/product/presentation/widgets/product_view.dart';

import '../../../helpers/mock_blocs.dart';
import '../../../helpers/product_fixtures.dart';

class _MockProductBloc extends MockBloc<ProductEvent, ProductState>
    implements ProductBloc {}

void main() {
  late _MockProductBloc bloc;
  late GlobalCubits cubits;
  late int comingSoon;
  late int logins;
  final ru = lookupAppLocalizations(AppLocales.ru);

  setUp(() {
    bloc = _MockProductBloc();
    comingSoon = 0;
    logins = 0;
  });

  /// Loaded state with the first in-stock SKU fully picked.
  ProductState ready(String lang, String id) {
    final details = sampleProduct(lang, id);
    final sku = details.skus.firstWhere((s) => s.stock > 0);
    return ProductState(
      status: ProductStatus.loaded,
      details: details,
      chosen: sku.values,
      delivery: sampleDelivery(lang, id, 'ashgabat'),
      deliveryStatus: DeliveryStatus.loaded,
    );
  }

  Future<void> pump(
    WidgetTester tester,
    ProductState state, {
    Locale locale = AppLocales.ru,
    double textScale = 1,
    double width = 360,
    AuthState auth = const AuthState.guest(),
  }) async {
    when(() => bloc.state).thenReturn(state);
    cubits = GlobalCubits(locale: locale, auth: auth);
    tester.view.physicalSize = Size(width, 800) * tester.view.devicePixelRatio;
    addTearDown(tester.view.resetPhysicalSize);
    await tester.pumpWidget(
      MultiBlocProvider(
        providers: [
          ...cubits.providers,
          BlocProvider<ProductBloc>.value(value: bloc),
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
          home: ProductView(
            onOpenProduct: (_) {},
            onOpenCart: () {},
            onLogin: () => logins++,
            onAllReviews: () {},
            onComingSoon: () => comingSoon++,
          ),
        ),
      ),
    );
    await tester.pump();
  }

  Future<void> scrollDown(WidgetTester tester, {int steps = 12}) async {
    for (var i = 0; i < steps; i++) {
      await tester.drag(
        find.byType(CustomScrollView),
        const Offset(0, -600),
        warnIfMissed: false,
      );
      await tester.pump();
    }
  }

  testWidgets('loaded page shows its blocks top to bottom', (tester) async {
    await pump(tester, ready('ru', clothingId));
    expect(find.text('В корзину'), findsOneWidget);
    expect(find.text('Купить сейчас'), findsOneWidget);
    expect(find.text('Доставка'), findsOneWidget);
    expect(find.text('Ашхабад'), findsOneWidget);

    await scrollDown(tester);
    expect(find.text('Характеристики'), findsOneWidget);
    expect(find.text('Продавец'), findsOneWidget);
    expect(find.text('Отзывы'), findsOneWidget);
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('«В корзину» with a full choice adds the line and toasts', (
    tester,
  ) async {
    final state = ready('ru', clothingId).copyWith(quantity: 2, comment: ' M ');
    await pump(tester, state);
    await tester.tap(find.text('В корзину'));
    await tester.pump();
    await tester.pump(const Duration(seconds: 1));

    final item =
        verify(() => cubits.cart.add(captureAny())).captured.single as CartItem;
    final sku = state.selection?.sku;
    expect(item.productId, clothingId);
    expect(item.skuId, sku?.id);
    expect(item.price, sku?.price);
    expect(item.quantity, 2);
    expect(item.comment, 'M');
    expect(find.text('Добавлено в корзину'), findsOneWidget);
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('without a full choice the variant sheet asks for it', (
    tester,
  ) async {
    await pump(tester, ready('ru', clothingId).copyWith(chosen: const {}));
    await tester.tap(find.text('В корзину'));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 500));

    expect(find.textContaining('Выберите:'), findsOneWidget);
    verifyNever(() => cubits.cart.add(any()));
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('the heart saves the product as a tile', (tester) async {
    final state = ready('ru', clothingId);
    await pump(tester, state);
    await tester.tap(
      find.byWidgetPredicate(
        (w) => w is IconCircleButton && w.icon == AppIcons.heart,
      ),
    );
    verify(() => cubits.favourites.toggle(state.details!.summary)).called(1);
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('a guest tapping the price bell is sent to login', (
    tester,
  ) async {
    await pump(tester, ready('ru', clothingId));
    await tester.tap(find.byTooltip(ru.productPriceAlert));
    expect(logins, 1);
    verifyNever(() => cubits.priceAlerts.toggle(any(), any()));
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('a customer subscribes to a price drop with a toast', (
    tester,
  ) async {
    final state = ready('ru', clothingId);
    await pump(
      tester,
      state,
      auth: const AuthState.signedIn(UserProfile(id: 'u', phone: '65123456')),
    );
    when(
      () => cubits.priceAlerts.toggle('ru', state.details!.summary),
    ).thenAnswer((_) async => right(true));
    await tester.tap(find.byTooltip(ru.productPriceAlert));
    await tester.pump();
    expect(find.text(ru.priceAlertOn), findsOneWidget);
    expect(logins, 0);
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('«Купить сейчас» says checkout is coming', (tester) async {
    await pump(tester, ready('ru', clothingId));
    await tester.tap(find.text('Купить сейчас'));
    await tester.pump();
    expect(comingSoon, 1);
    verifyNever(() => cubits.cart.add(any()));
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('batteries: air row shows the refusal reason', (tester) async {
    await pump(tester, ready('ru', batteryId));
    expect(find.text('Аккумуляторы нельзя отправить авиа'), findsOneWidget);
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('a product off sale says so and blocks buying', (tester) async {
    final id = unavailableProductId();
    await pump(tester, ready('ru', id));
    expect(find.text('Нет в наличии'), findsWidgets);
    expect(find.text('В корзину'), findsNothing);
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('while loading, the tapped tile is shown', (tester) async {
    await pump(
      tester,
      const ProductState(
        preview: ProductSummary(
          id: clothingId,
          title: 'Летнее платье',
          imageUrl: 'tile.jpg',
          price: 216,
        ),
      ),
    );
    expect(find.text('Летнее платье'), findsOneWidget);
    expect(find.text('216 TMT'), findsOneWidget);
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('offline without a copy shows the offline state', (tester) async {
    await pump(
      tester,
      const ProductState(
        status: ProductStatus.failure,
        failure: NetworkFailure(),
      ),
    );
    expect(find.text('Нет соединения'), findsOneWidget);
    await tester.tap(find.text('Повторить'));
    verify(() => bloc.add(const ProductEvent.retried())).called(1);
  });

  testWidgets('unknown product says it was not found', (tester) async {
    await pump(tester, const ProductState(status: ProductStatus.notFound));
    expect(find.text('Товар не найден'), findsOneWidget);
  });

  for (final width in [360.0, 412.0]) {
    for (final id in [clothingId, batteryId]) {
      testWidgets('$id fits in Turkmen at 1.3× on ${width.toInt()} dp', (
        tester,
      ) async {
        await pump(
          tester,
          ready('tk', id),
          locale: AppLocales.tk,
          textScale: 1.3,
          width: width,
        );
        await scrollDown(tester, steps: 16);
        await tester.pumpWidget(const SizedBox());
      });
    }

    testWidgets(
      'variant sheet fits in Turkmen at 1.3× on ${width.toInt()} dp',
      (tester) async {
        await pump(
          tester,
          ready('tk', clothingId).copyWith(chosen: const {}),
          locale: AppLocales.tk,
          textScale: 1.3,
          width: width,
        );
        await tester.tap(find.text('Sebede goş'));
        await tester.pump();
        await tester.pump(const Duration(milliseconds: 500));
        expect(find.textContaining('saýlaň'), findsOneWidget);
        await tester.pumpWidget(const SizedBox());
      },
    );
  }
}
