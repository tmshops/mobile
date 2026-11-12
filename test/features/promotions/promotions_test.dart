import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/dev/fake_backend/fake_catalog_backend.dart';
import 'package:tmshop/core/dev/fake_backend/fake_promotions_backend.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/utils/app_dates.dart';
import 'package:tmshop/core/widgets/widgets.dart';
import 'package:tmshop/features/catalog/data/models/catalog_mappers.dart';
import 'package:tmshop/features/catalog/domain/entities/product_query.dart';
import 'package:tmshop/features/promotions/data/models/promotion_models.dart';
import 'package:tmshop/features/promotions/domain/entities/promotion.dart';
import 'package:tmshop/features/promotions/domain/repositories/promotions_repository.dart';
import 'package:tmshop/features/promotions/presentation/bloc/promotions_cubits.dart';
import 'package:tmshop/features/promotions/presentation/widgets/promo_header.dart';
import 'package:tmshop/features/promotions/presentation/widgets/promotions_view.dart';

import '../../helpers/pump_view.dart';

class _MockRepository extends Mock implements PromotionsRepository {}

class _MockListCubit extends MockCubit<PromotionsState>
    implements PromotionsCubit {}

class _MockCubit extends MockCubit<PromotionState> implements PromotionCubit {}

void main() {
  final ru = lookupAppLocalizations(AppLocales.ru);
  final tk = lookupAppLocalizations(AppLocales.tk);
  final now = DateTime(2026, 11, 12, 15);
  final backend = FakePromotionsBackend(now: () => now);

  List<Promotion> running(String lang) => [
    for (final json in backend.list(lang))
      PromotionModel.fromJson(json).toEntity(),
  ];

  PromotionDetails details(String lang, String slug) =>
      PromotionDetailsModel.fromJson(backend.details(lang, slug)!).toEntity();

  group('fake server', () {
    test('running ones, soonest first; ended ones only by link', () {
      final items = running('ru');
      expect(items.map((p) => p.slug), [
        'day-deal',
        'black-friday',
        'gadgets-2-plus-1',
        'free-delivery',
      ]);
      expect(details('ru', 'summer-sale').isEnded, isTrue);
      expect(backend.details('ru', 'nope'), isNull);

      final bf = details('ru', 'black-friday');
      expect(bf.promoCode, 'BF2026');
      expect(bf.conditions.map((c) => c.kind), [
        ConditionKind.amount,
        ConditionKind.until,
        ConditionKind.scope,
        ConditionKind.combinable,
      ]);
    });

    test('the catalog serves a promotion\'s products', () {
      final params = CatalogQueryParams.products(
        const ProductQuery(categorySlug: '', promoSlug: 'black-friday'),
      );
      expect(params.containsKey(CatalogQueryParams.category), isFalse);
      expect(params[CatalogQueryParams.promo], 'black-friday');
      final page = FakeCatalogBackend().products('ru', params);
      final items = (page['items'] as List).cast<Map<String, dynamic>>();
      expect(items, isNotEmpty);
      expect(items.every((p) => p['old_price'] != null), isTrue);
      expect(FakeCatalogBackend().facets('ru', params)['total'], page['total']);
      expect(
        FakeCatalogBackend().products('ru', {'promo': 'nope'})['items'],
        isEmpty,
      );
    });
  });

  group('cubits', () {
    late _MockRepository repository;

    setUp(() => repository = _MockRepository());

    test('the list drops what has ended by the device clock', () async {
      final items = [
        ...running('ru'),
        Promotion(
          slug: 'late',
          type: PromotionType.discount,
          title: 't',
          subtitle: 's',
          imageUrl: '',
          endsAt: now.subtract(const Duration(minutes: 1)),
        ),
      ];
      when(() => repository.list('ru')).thenAnswer((_) async => right(items));
      final cubit = PromotionsCubit(repository, now: () => now);
      await cubit.load('ru');
      expect(cubit.state.items, hasLength(4));
      cubit.ended('day-deal');
      expect(cubit.state.items.map((p) => p.slug), isNot(contains('day-deal')));
      await cubit.close();
    });

    test('an unknown promotion is not found; offline fails', () async {
      when(
        () => repository.details('ru', 'nope'),
      ).thenAnswer((_) async => right(null));
      when(
        () => repository.details('ru', 'x'),
      ).thenAnswer((_) async => left(const NetworkFailure()));
      final cubit = PromotionCubit(repository);
      await cubit.load('ru', 'nope');
      expect(cubit.state.isNotFound, isTrue);
      await cubit.load('ru', 'x');
      expect(cubit.state.failure, isA<NetworkFailure>());
      await cubit.close();
    });
  });

  group('PromotionsView', () {
    late _MockListCubit cubit;
    late List<String> opened;

    setUp(() {
      cubit = _MockListCubit();
      opened = [];
      when(() => cubit.load(any())).thenAnswer((_) async {});
    });

    Future<void> pump(
      WidgetTester tester,
      PromotionsState state, {
      Locale locale = AppLocales.ru,
      double textScale = 1,
      double width = 360,
    }) async {
      when(() => cubit.state).thenReturn(state);
      await pumpView(
        tester,
        PromotionsView(onOpen: opened.add, now: () => now),
        locale: locale,
        textScale: textScale,
        width: width,
        providers: [BlocProvider<PromotionsCubit>.value(value: cubit)],
      );
    }

    testWidgets('cards: badge, countdown when close, date otherwise', (
      tester,
    ) async {
      final items = running('ru');
      await pump(tester, PromotionsState(isLoading: false, items: items));
      expect(find.text(ru.promoTypeDayDeal), findsOneWidget);
      // Only today's deal ends within three days.
      expect(find.byType(CountdownTimer), findsNWidgets(1));
      await tester.tap(find.text(items.first.title));
      expect(opened, ['day-deal']);

      await scrollThrough(tester, find.byType(ListView), steps: 3);
      final freeDelivery = items.last;
      expect(
        find.text(ru.promoUntil(AppDates.dayMonth(ru, freeDelivery.endsAt))),
        findsOneWidget,
      );
      await tester.pumpWidget(const SizedBox());
    });

    testWidgets('nothing running', (tester) async {
      await pump(tester, const PromotionsState(isLoading: false));
      expect(find.text(ru.promoEmptyTitle), findsOneWidget);
    });

    for (final width in [360.0, 412.0]) {
      testWidgets('fits in Turkmen at 1.3× on ${width.toInt()} dp', (
        tester,
      ) async {
        await pump(
          tester,
          PromotionsState(isLoading: false, items: running('tk')),
          locale: AppLocales.tk,
          textScale: 1.3,
          width: width,
        );
        await scrollThrough(tester, find.byType(ListView), steps: 3);
        expect(tester.takeException(), isNull);
        await tester.pumpWidget(const SizedBox());
      });
    }
  });

  group('PromoHeaderView', () {
    late _MockCubit cubit;
    late List<String> copied;

    setUp(() {
      cubit = _MockCubit();
      copied = [];
      when(() => cubit.load(any(), any())).thenAnswer((_) async {});
    });

    Future<void> pump(
      WidgetTester tester,
      PromotionState state, {
      Locale locale = AppLocales.ru,
      double textScale = 1,
      double width = 360,
    }) async {
      when(() => cubit.state).thenReturn(state);
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(SystemChannels.platform, (call) async {
            if (call.method == 'Clipboard.setData') {
              copied.add((call.arguments as Map)['text'] as String);
            }
            return null;
          });
      addTearDown(
        () => TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
            .setMockMethodCallHandler(SystemChannels.platform, null),
      );
      await pumpView(
        tester,
        BlocProvider<PromotionCubit>.value(
          value: cubit,
          child: const Scaffold(
            body: CustomScrollView(
              slivers: [
                PromoHeaderView(slug: 'black-friday'),
                SliverToBoxAdapter(child: SizedBox(height: 1200)),
              ],
            ),
          ),
        ),
        locale: locale,
        textScale: textScale,
        width: width,
      );
    }

    testWidgets('title, conditions and the code to copy', (tester) async {
      final bf = details('ru', 'black-friday');
      await pump(tester, PromotionState(isLoading: false, details: bf));
      expect(find.text(bf.promotion.title), findsOneWidget);
      for (final c in bf.conditions) {
        expect(find.text(c.text), findsOneWidget);
      }
      await tester.tap(find.text(ru.promoCopyCode('BF2026')));
      await tester.pump();
      expect(copied, ['BF2026']);
      expect(find.text(ru.promoCodeCopied), findsOneWidget);
      await tester.pumpWidget(const SizedBox());
    });

    testWidgets('an ended promotion says so and hides its code', (
      tester,
    ) async {
      await pump(
        tester,
        PromotionState(isLoading: false, details: details('ru', 'summer-sale')),
      );
      expect(find.text(ru.promoEnded), findsOneWidget);
      expect(find.byType(CountdownTimer), findsNothing);
    });

    testWidgets('unknown promotion', (tester) async {
      await pump(
        tester,
        const PromotionState(isLoading: false, isNotFound: true),
      );
      expect(find.text(ru.promoNotFoundTitle), findsOneWidget);
    });

    for (final width in [360.0, 412.0]) {
      testWidgets('fits in Turkmen at 1.3× on ${width.toInt()} dp', (
        tester,
      ) async {
        await pump(
          tester,
          PromotionState(
            isLoading: false,
            details: details('tk', 'gadgets-2-plus-1'),
          ),
          locale: AppLocales.tk,
          textScale: 1.3,
          width: width,
        );
        expect(find.text(tk.promoTypeBundle), findsOneWidget);
        await scrollThrough(tester, find.byType(CustomScrollView), steps: 2);
        expect(tester.takeException(), isNull);
      });
    }
  });
}
