import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/theme/theme.dart';
import 'package:tmshop/core/widgets/widgets.dart';
import 'package:tmshop/core/product/presentation/for_you_bloc.dart';
import 'package:tmshop/features/home/presentation/bloc/home_bloc.dart';
import 'package:tmshop/features/home/presentation/home_destination.dart';
import 'package:tmshop/features/home/presentation/widgets/home_skeleton.dart';
import 'package:tmshop/features/home/presentation/widgets/home_view.dart';

import '../../../../helpers/home_fixtures.dart';
import '../../../../helpers/mock_blocs.dart';

void main() {
  late MockHomeBloc home;
  late MockForYouBloc forYou;
  late List<HomeDestination> opened;

  setUp(() {
    home = MockHomeBloc();
    forYou = MockForYouBloc();
    opened = [];
    when(() => forYou.state).thenReturn(const ForYouState());
  });

  Future<void> pump(
    WidgetTester tester, {
    required HomeState state,
    Locale locale = AppLocales.ru,
    bool isOnline = true,
    double textScale = 1,
    double width = 360,
  }) async {
    when(() => home.state).thenReturn(state);
    final cubits = GlobalCubits(locale: locale, isOnline: isOnline);
    tester.view.physicalSize = Size(width, 800) * tester.view.devicePixelRatio;
    addTearDown(tester.view.resetPhysicalSize);
    await tester.pumpWidget(
      MultiBlocProvider(
        providers: [
          ...cubits.providers,
          BlocProvider<HomeBloc>.value(value: home),
          BlocProvider<ForYouBloc>.value(value: forYou),
        ],
        child: MaterialApp(
          theme: AppTheme.light(),
          locale: locale,
          localizationsDelegates: AppLocales.delegates,
          supportedLocales: AppLocales.supported,
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(
              context,
            ).copyWith(textScaler: TextScaler.linear(textScale)),
            child: child!,
          ),
          home: HomeView(onNavigate: opened.add),
        ),
      ),
    );
    await tester.pump();
  }

  /// Disposes the tree so countdown and banner timers stop.
  Future<void> unmount(WidgetTester tester) =>
      tester.pumpWidget(const SizedBox());

  testWidgets('loading shows the skeleton under a real header', (tester) async {
    await pump(tester, state: const HomeState.loading());
    expect(find.byType(HomeSkeleton), findsOneWidget);
    expect(find.byType(AppSearchBar), findsOneWidget);
    await unmount(tester);
  });

  testWidgets('offline without cache shows the offline state and retries', (
    tester,
  ) async {
    await pump(
      tester,
      state: const HomeState.failure(NetworkFailure()),
      isOnline: false,
    );
    expect(find.text('Нет соединения'), findsOneWidget);
    expect(find.byType(OfflineBanner), findsOneWidget);

    await tester.tap(find.text('Повторить'));
    verify(() => home.add(const HomeEvent.refreshed())).called(1);
    await unmount(tester);
  });

  testWidgets('server error shows the server message', (tester) async {
    await pump(
      tester,
      state: const HomeState.failure(ServerFailure(message: 'Техработы')),
    );
    expect(find.text('Техработы'), findsOneWidget);
    await unmount(tester);
  });

  testWidgets('empty Home offers the catalog', (tester) async {
    await pump(
      tester,
      state: HomeState.loaded(
        content: sampleHome('ru').copyWith(sections: const []),
      ),
    );
    expect(find.text('Витрина скоро наполнится'), findsOneWidget);
    await tester.tap(find.text('В каталог'));
    expect(opened, [const HomeDestination.allCategories()]);
    await unmount(tester);
  });

  testWidgets('cached content stays visible offline with the bar', (
    tester,
  ) async {
    await pump(
      tester,
      state: HomeState.loaded(
        content: sampleHome('ru', isFromCache: true),
        refreshFailure: const NetworkFailure(),
      ),
      isOnline: false,
    );
    expect(find.byType(OfflineBanner), findsOneWidget);
    expect(find.text('Вставьте ссылку на товар'), findsOneWidget);
    await unmount(tester);
  });

  testWidgets('taps lead to destinations', (tester) async {
    await pump(tester, state: HomeState.loaded(content: sampleHome('ru')));

    await tester.tap(find.byType(AppSearchBar));
    await tester.tap(find.text('Вставьте ссылку на товар'));
    expect(opened, [
      const HomeDestination.search(),
      const HomeDestination.pasteLink(),
    ]);
    await unmount(tester);
  });

  testWidgets('reaching the end asks for the next «Для вас» page', (
    tester,
  ) async {
    whenListen(
      forYou,
      const Stream<ForYouState>.empty(),
      initialState: ForYouState(
        items: samplePage('ru').items,
        nextCursor: '1',
        status: ForYouStatus.idle,
      ),
    );
    await pump(tester, state: HomeState.loaded(content: sampleHome('ru')));

    await tester.drag(find.byType(CustomScrollView), const Offset(0, -30000));
    await tester.pump();
    verify(
      () => forYou.add(const ForYouEvent.nextPageRequested()),
    ).called(greaterThanOrEqualTo(1));
    await unmount(tester);
  });

  for (final width in [360.0, 412.0]) {
    testWidgets('full Home fits in Turkmen at 1.3× on ${width.toInt()} dp', (
      tester,
    ) async {
      whenListen(
        forYou,
        const Stream<ForYouState>.empty(),
        initialState: ForYouState(
          items: samplePage('tk').items,
          status: ForYouStatus.loadingMore,
        ),
      );
      await pump(
        tester,
        state: HomeState.loaded(content: sampleHome('tk')),
        locale: AppLocales.tk,
        textScale: 1.3,
        width: width,
      );
      // Scroll through everything so every section is laid out; any
      // overflow fails the test.
      for (var i = 0; i < 12; i++) {
        await tester.drag(find.byType(CustomScrollView), const Offset(0, -700));
        await tester.pump();
      }
      expect(find.text('Siziň üçin'), findsOneWidget);
      await unmount(tester);
    });
  }
}
