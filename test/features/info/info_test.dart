import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/dev/fake_backend/fake_info_backend.dart';
import 'package:tmshop/core/error/exceptions.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/widgets/widgets.dart';
import 'package:tmshop/features/info/data/datasources/info_data_sources.dart';
import 'package:tmshop/features/info/data/models/info_models.dart';
import 'package:tmshop/features/info/data/repositories/info_repository_impl.dart';
import 'package:tmshop/features/info/domain/entities/info.dart';
import 'package:tmshop/features/info/domain/repositories/info_repository.dart';
import 'package:tmshop/features/info/presentation/bloc/info_cubits.dart';
import 'package:tmshop/features/info/presentation/widgets/contacts_view.dart';
import 'package:tmshop/features/info/presentation/widgets/delivery_terms_view.dart';
import 'package:tmshop/features/info/presentation/widgets/faq_view.dart';
import 'package:tmshop/features/info/presentation/widgets/info_article_view.dart';
import 'package:tmshop/features/info/presentation/widgets/info_common.dart';
import 'package:tmshop/features/info/presentation/widgets/info_menu_view.dart';
import 'package:tmshop/features/info/presentation/widgets/pickup_points_view.dart';

import '../../helpers/pump_view.dart';

class _MockRemote extends Mock implements InfoRemoteDataSource {}

class _MockLocal extends Mock implements InfoLocalDataSource {}

class _MockRepository extends Mock implements InfoRepository {}

class _MockArticleCubit extends MockCubit<InfoState<InfoArticle>>
    implements InfoArticleCubit {}

class _MockDeliveryCubit extends MockCubit<InfoState<DeliveryTerms>>
    implements DeliveryTermsCubit {}

class _MockPointsCubit extends MockCubit<InfoState<List<PickupPointInfo>>>
    implements PickupPointsCubit {}

class _MockContactsCubit extends MockCubit<InfoState<StoreContacts>>
    implements ContactsCubit {}

class _MockFaqCubit extends MockCubit<FaqState> implements FaqCubit {}

final _backend = FakeInfoBackend();

Map<String, dynamic> _json(String lang, InfoTopic topic) =>
    _backend.page(lang, topic.slug)!;

InfoArticle _article(String lang, InfoTopic topic) =>
    InfoArticleModel.fromJson(_json(lang, topic)).toEntity();

DeliveryTerms _delivery(String lang) =>
    DeliveryTermsModel.fromJson(_json(lang, InfoTopic.delivery)).toEntity();

List<FaqSection> _faq(String lang) =>
    FaqModel.fromJson(_json(lang, InfoTopic.faq)).toEntity();

List<PickupPointInfo> _points(String lang) =>
    PickupPointsModel.fromJson(_json(lang, InfoTopic.pickupPoints)).toEntity();

StoreContacts _contacts(String lang) =>
    ContactsModel.fromJson(_json(lang, InfoTopic.contacts)).toEntity();

void main() {
  final ru = lookupAppLocalizations(AppLocales.ru);
  final tk = lookupAppLocalizations(AppLocales.tk);

  group('fake server', () {
    for (final lang in ['ru', 'tk']) {
      test('every page parses in $lang', () {
        for (final topic in InfoTopic.values.where((t) => t.isArticle)) {
          expect(_article(lang, topic).html, isNotEmpty, reason: '$topic');
        }
        expect(_delivery(lang).types, hasLength(3));
        expect(_faq(lang), isNotEmpty);
        expect(_points(lang), isNotEmpty);
        expect(_contacts(lang).phones, isNotEmpty);
      });
    }

    test('an unknown page is a 404', () {
      expect(_backend.page('ru', 'nope'), isNull);
    });

    test('slugs round-trip and are unique', () {
      for (final topic in InfoTopic.values) {
        expect(InfoTopic.fromSlug(topic.slug), topic);
      }
      expect(InfoTopic.fromSlug('nope'), isNull);
    });
  });

  group('domain', () {
    test('FAQ search: question or answer text, never tag names', () {
      final sections = _faq('ru');
      final weight = searchFaq(sections, '  ВЗВЕШ ');
      expect(weight, hasLength(1));
      expect(weight.single.items.single.id, 'weight');

      // «баланс» is only in answers.
      expect(
        searchFaq(sections, 'баланс').expand((s) => s.items).map((i) => i.id),
        containsAll(['weight', 'pay']),
      );
      expect(searchFaq(sections, 'strong'), isEmpty);
      expect(searchFaq(sections, ''), sections);
    });

    test('cheapest tariff per type; a missing type is skipped', () {
      final terms = _delivery('ru');
      expect(terms.lowestPerKg('air'), 18);
      expect(terms.lowestPerKg('truck'), 9);
      expect(terms.lowestPerKg('sea'), isNull);
      expect(
        terms.tariffs.where((t) => !t.perKg.containsKey('truck')),
        hasLength(1),
      );
    });

    test('pickup points grouped by region in server order', () {
      final groups = pickupPointsByRegion(_points('ru'));
      expect(groups.first.$1, 'Ашхабад');
      expect(groups.first.$2, hasLength(2));
      expect(groups.map((g) => g.$1).toSet(), hasLength(groups.length));
    });
  });

  group('repository', () {
    late _MockRemote remote;
    late _MockLocal local;
    late InfoRepositoryImpl repository;

    setUpAll(() => registerFallbackValue(<String, dynamic>{}));

    setUp(() {
      remote = _MockRemote();
      local = _MockLocal();
      repository = InfoRepositoryImpl(remote, local);
      when(() => local.write(any(), any(), any())).thenAnswer((_) async {});
    });

    test('a fresh page is saved for offline reading', () async {
      final json = _json('ru', InfoTopic.about);
      when(() => remote.page('ru', 'about')).thenAnswer((_) async => json);

      final result = await repository.article('ru', InfoTopic.about);

      expect(result.getRight().toNullable()?.title, 'О нас');
      verify(() => local.write('ru', 'about', json)).called(1);
    });

    test('offline: the saved copy', () async {
      when(
        () => remote.page('tk', 'contacts'),
      ).thenThrow(const NetworkException());
      when(
        () => local.read('tk', 'contacts'),
      ).thenAnswer((_) async => _json('tk', InfoTopic.contacts));

      final result = await repository.contacts('tk');

      expect(result.getRight().toNullable(), _contacts('tk'));
    });

    test('offline without a copy, or an unreadable one', () async {
      when(() => remote.page('ru', 'faq')).thenThrow(const NetworkException());
      when(() => local.read('ru', 'faq')).thenAnswer((_) async => null);
      expect(
        (await repository.faq('ru')).getLeft().toNullable(),
        isA<NetworkFailure>(),
      );

      when(() => local.read('ru', 'faq')).thenThrow(const CacheException());
      expect(
        (await repository.faq('ru')).getLeft().toNullable(),
        isA<NetworkFailure>(),
      );
    });

    test('a malformed page is a server failure and is not saved', () async {
      when(
        () => remote.page('ru', 'delivery'),
      ).thenAnswer((_) async => {'types': 'oops'});

      final result = await repository.deliveryTerms('ru');

      expect(result.getLeft().toNullable(), isA<ServerFailure>());
      verifyNever(() => local.write(any(), any(), any()));
    });
  });

  group('cubits', () {
    late _MockRepository repository;
    setUpAll(() => registerFallbackValue(InfoTopic.about));
    setUp(() => repository = _MockRepository());

    blocTest<InfoArticleCubit, InfoState<InfoArticle>>(
      'loads an article',
      build: () {
        when(
          () => repository.article('ru', InfoTopic.returns),
        ).thenAnswer((_) async => right(_article('ru', InfoTopic.returns)));
        return InfoArticleCubit(repository);
      },
      act: (cubit) => cubit.load('ru', InfoTopic.returns),
      expect: () => [
        InfoState<InfoArticle>(),
        InfoState<InfoArticle>(
          isLoading: false,
          data: _article('ru', InfoTopic.returns),
        ),
      ],
    );

    blocTest<ContactsCubit, InfoState<StoreContacts>>(
      'a failed refresh keeps the page and shows no error',
      build: () {
        when(
          () => repository.contacts('ru'),
        ).thenAnswer((_) async => left(const NetworkFailure()));
        return ContactsCubit(repository);
      },
      seed: () => InfoState(isLoading: false, data: _contacts('ru')),
      act: (cubit) => cubit.load('ru'),
      expect: () => [
        InfoState(data: _contacts('ru')),
        InfoState(isLoading: false, data: _contacts('ru')),
      ],
    );

    blocTest<PickupPointsCubit, InfoState<List<PickupPointInfo>>>(
      'nothing to show: the failure',
      build: () {
        when(
          () => repository.pickupPoints('ru'),
        ).thenAnswer((_) async => left(const ServerFailure()));
        return PickupPointsCubit(repository);
      },
      act: (cubit) => cubit.load('ru'),
      verify: (cubit) => expect(cubit.state.failure, isA<ServerFailure>()),
    );

    blocTest<FaqCubit, FaqState>(
      'search narrows what is shown',
      build: () {
        when(
          () => repository.faq('ru'),
        ).thenAnswer((_) async => right(_faq('ru')));
        return FaqCubit(repository);
      },
      act: (cubit) async {
        await cubit.load('ru');
        cubit.search('отменить');
      },
      verify: (cubit) {
        expect(cubit.state.isSearching, isTrue);
        expect(cubit.state.loaded?.single.items.single.id, 'cancel');
      },
    );
  });

  group('views', () {
    testWidgets('menu: groups, documents heading, taps', (tester) async {
      final opened = <InfoTopic>[];
      await pumpView(tester, InfoMenuView(onOpen: opened.add));

      expect(find.text(ru.infoDocuments), findsOneWidget);
      await tester.tap(find.text(ru.infoFaq));
      await tester.tap(find.text(ru.infoPrivacy));
      expect(opened, [InfoTopic.faq, InfoTopic.privacy]);
    });

    testWidgets('article: a text-shaped skeleton first', (tester) async {
      final cubit = _MockArticleCubit();
      when(() => cubit.state).thenReturn(InfoState<InfoArticle>());
      await pumpView(
        tester,
        const InfoArticleView(topic: InfoTopic.offer),
        providers: [BlocProvider<InfoArticleCubit>.value(value: cubit)],
      );
      expect(find.byType(ArticleSkeleton), findsOneWidget);
    });

    testWidgets('article: nothing to show, «Повторить»', (tester) async {
      final cubit = _MockArticleCubit();
      when(() => cubit.load(any(), any())).thenAnswer((_) async {});
      when(() => cubit.state).thenReturn(
        const InfoState<InfoArticle>(
          isLoading: false,
          failure: NetworkFailure(),
        ),
      );
      await pumpView(
        tester,
        const InfoArticleView(topic: InfoTopic.offer),
        providers: [BlocProvider<InfoArticleCubit>.value(value: cubit)],
      );
      expect(find.text(ru.offlineTitle), findsOneWidget);
      await tester.tap(find.text(ru.actionRetry));
      verify(() => cubit.load('ru', InfoTopic.offer)).called(1);
    });

    testWidgets('delivery: read-only cards, «от» price and the table', (
      tester,
    ) async {
      final cubit = _MockDeliveryCubit();
      when(
        () => cubit.state,
      ).thenReturn(InfoState(isLoading: false, data: _delivery('ru')));
      await pumpView(
        tester,
        const DeliveryTermsView(),
        providers: [BlocProvider<DeliveryTermsCubit>.value(value: cubit)],
      );

      expect(find.byType(DeliveryOptionCard), findsNWidgets(3));
      expect(find.byType(RadioMark), findsNothing);
      expect(find.text(ru.infoPerKgFrom('18 TMT')), findsOneWidget);
      await scrollThrough(tester, find.byType(Scrollable).first, steps: 2);
      expect(find.text(ru.infoTariffDash), findsOneWidget);
    });

    testWidgets('faq: no match offers «Контакты»', (tester) async {
      final cubit = _MockFaqCubit();
      when(() => cubit.state).thenReturn(
        FaqState(isLoading: false, sections: _faq('ru'), query: 'xyz'),
      );
      var contacts = 0;
      await pumpView(
        tester,
        FaqView(onOpenContacts: () => contacts++),
        providers: [BlocProvider<FaqCubit>.value(value: cubit)],
      );

      expect(find.text(ru.infoFaqNothingTitle), findsOneWidget);
      await tester.tap(find.text(ru.infoContacts));
      expect(contacts, 1);
    });

    testWidgets('faq: matches open by themselves while searching', (
      tester,
    ) async {
      final cubit = _MockFaqCubit();
      when(() => cubit.state).thenReturn(
        FaqState(isLoading: false, sections: _faq('ru'), query: 'отменить'),
      );
      await pumpView(
        tester,
        FaqView(onOpenContacts: () {}),
        providers: [BlocProvider<FaqCubit>.value(value: cubit)],
      );
      expect(find.byType(ServerHtml), findsOneWidget);
    });

    testWidgets('contacts: a phone tap opens the dialer', (tester) async {
      final opened = mockExternalLinks();
      final cubit = _MockContactsCubit();
      when(
        () => cubit.state,
      ).thenReturn(InfoState(isLoading: false, data: _contacts('ru')));
      await pumpView(
        tester,
        const ContactsView(),
        providers: [BlocProvider<ContactsCubit>.value(value: cubit)],
      );
      final phone = _contacts('ru').phones.first;
      await tester.tap(find.text(phone));
      await tester.pump();
      expect(opened, [Uri.parse('tel:+99312000000')]);

      await tester.tap(find.text(ru.infoTelegram));
      expect(opened.last.host, 't.me');
    });

    for (final width in [360.0, 412.0]) {
      testWidgets('every page fits in Turkmen at 1.3× on $width dp', (
        tester,
      ) async {
        Future<void> check(Widget view, [BlocProvider? provider]) async {
          await pumpView(
            tester,
            view,
            providers: [?provider],
            locale: AppLocales.tk,
            textScale: 1.3,
            width: width,
          );
          await tester.pumpAndSettle();
          await scrollThrough(tester, find.byType(Scrollable).last);
          expect(tester.takeException(), isNull, reason: '$view');
        }

        await check(InfoMenuView(onOpen: (_) {}));

        final article = _MockArticleCubit();
        when(() => article.state).thenReturn(
          InfoState(isLoading: false, data: _article('tk', InfoTopic.returns)),
        );
        await check(
          const InfoArticleView(topic: InfoTopic.returns),
          BlocProvider<InfoArticleCubit>.value(value: article),
        );

        final delivery = _MockDeliveryCubit();
        when(
          () => delivery.state,
        ).thenReturn(InfoState(isLoading: false, data: _delivery('tk')));
        await check(
          const DeliveryTermsView(),
          BlocProvider<DeliveryTermsCubit>.value(value: delivery),
        );

        final points = _MockPointsCubit();
        when(
          () => points.state,
        ).thenReturn(InfoState(isLoading: false, data: _points('tk')));
        await check(
          const PickupPointsView(),
          BlocProvider<PickupPointsCubit>.value(value: points),
        );

        final contacts = _MockContactsCubit();
        when(
          () => contacts.state,
        ).thenReturn(InfoState(isLoading: false, data: _contacts('tk')));
        await check(
          const ContactsView(),
          BlocProvider<ContactsCubit>.value(value: contacts),
        );

        final faq = _MockFaqCubit();
        when(() => faq.state).thenReturn(
          FaqState(isLoading: false, sections: _faq('tk'), query: 'a'),
        );
        await check(
          FaqView(onOpenContacts: () {}),
          BlocProvider<FaqCubit>.value(value: faq),
        );
        expect(tk.infoFaq, isNotEmpty);
      });
    }
  });
}
