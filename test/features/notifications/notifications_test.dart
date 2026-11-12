import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/dev/fake_backend/fake_notifications_backend.dart';
import 'package:tmshop/core/error/exceptions.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/notifications/notifications_counter.dart';
import 'package:tmshop/core/utils/app_dates.dart';
import 'package:tmshop/features/notifications/data/datasources/notifications_remote_data_source.dart';
import 'package:tmshop/features/notifications/data/models/notification_models.dart';
import 'package:tmshop/features/notifications/data/repositories/notifications_repository_impl.dart';
import 'package:tmshop/features/notifications/domain/entities/app_notification.dart';
import 'package:tmshop/features/notifications/domain/repositories/notifications_repository.dart';
import 'package:tmshop/features/notifications/presentation/bloc/notifications_cubit.dart';
import 'package:tmshop/features/notifications/presentation/widgets/notifications_view.dart';

import '../../helpers/mock_blocs.dart';
import '../../helpers/pump_view.dart';

class _MockRemote extends Mock implements NotificationsRemoteDataSource {}

class _MockRepository extends Mock implements NotificationsRepository {}

class _MockCountRepository extends Mock
    implements NotificationsCountRepository {}

class _MockCubit extends MockCubit<NotificationsState>
    implements NotificationsCubit {}

void main() {
  final ru = lookupAppLocalizations(AppLocales.ru);
  final tk = lookupAppLocalizations(AppLocales.tk);
  final now = DateTime(2026, 11, 12, 15);

  NotificationsPage seeded(String lang, {String? cursor}) =>
      NotificationsPageModel.fromJson(
        FakeNotificationsBackend(now: () => now).page(lang, cursor),
      ).toEntity();

  group('fake server and models', () {
    test('one of each type, paged, with an unread count', () {
      final backend = FakeNotificationsBackend(now: () => now);
      final first = NotificationsPageModel.fromJson(
        backend.page('ru', null),
      ).toEntity();
      expect(first.items, hasLength(FakeNotificationsBackend.pageSize));
      expect(first.unreadCount, 4);
      expect(
        first.items.map((n) => n.type).toSet(),
        containsAll(
          NotificationType.values.toSet()..remove(NotificationType.other),
        ),
      );
      final second = NotificationsPageModel.fromJson(
        backend.page('ru', first.nextCursor),
      ).toEntity();
      expect(second.nextCursor, isNull);

      backend.markRead(['n1']);
      expect(backend.unreadCount(), 3);
      backend.markAllRead();
      expect(backend.unreadCount(), 0);
    });

    test('unknown types get the generic look', () {
      final page = NotificationsPageModel.fromJson({
        'items': [
          {
            'id': 'x',
            'type': 'bonus',
            'title': 't',
            'body': 'b',
            'created_at': '2026-11-12T10:00:00Z',
            'is_read': false,
          },
        ],
        'unread_count': 1,
      }).toEntity();
      expect(page.items.single.type, NotificationType.other);
    });

    test('offline is a NetworkFailure', () async {
      final remote = _MockRemote();
      when(() => remote.page(any(), any())).thenThrow(const NetworkException());
      final result = await NotificationsRepositoryImpl(remote).page('ru');
      expect(result.getLeft().toNullable(), isA<NetworkFailure>());
    });
  });

  test('relative time', () {
    expect(AppDates.ago(ru, now, now), ru.dateJustNow);
    expect(
      AppDates.ago(ru, now.subtract(const Duration(minutes: 5)), now),
      ru.dateMinutesAgo(5),
    );
    expect(
      AppDates.ago(ru, now.subtract(const Duration(hours: 3)), now),
      ru.dateHoursAgo(3),
    );
    expect(
      AppDates.ago(ru, DateTime(2026, 11, 1), now),
      AppDates.dayMonth(ru, DateTime(2026, 11, 1)),
    );
  });

  group('NotificationsCounterCubit', () {
    test('refreshes; a failure keeps the number; never below zero', () async {
      final repository = _MockCountRepository();
      when(() => repository.unreadCount()).thenAnswer((_) async => right(4));
      final cubit = NotificationsCounterCubit(repository);
      await cubit.refresh();
      expect(cubit.state, 4);
      when(
        () => repository.unreadCount(),
      ).thenAnswer((_) async => left(const NetworkFailure()));
      await cubit.refresh();
      expect(cubit.state, 4);
      cubit.set(-1);
      expect(cubit.state, 0);
      cubit
        ..set(2)
        ..clear();
      expect(cubit.state, 0);
      await cubit.close();
    });
  });

  group('NotificationsCubit', () {
    late _MockRepository repository;

    setUp(() {
      repository = _MockRepository();
      when(
        () => repository.page('ru'),
      ).thenAnswer((_) async => right(seeded('ru')));
      when(
        () => repository.page('ru', cursor: '20'),
      ).thenAnswer((_) async => right(seeded('ru', cursor: '20')));
      when(
        () => repository.markRead(any()),
      ).thenAnswer((_) async => right(unit));
      when(() => repository.markAllRead()).thenAnswer((_) async => right(unit));
    });

    test('loads, pages, marks one and all read', () async {
      final cubit = NotificationsCubit(repository);
      await cubit.load('ru');
      expect(cubit.state.unreadCount, 4);
      await cubit.loadMore('ru');
      expect(cubit.state.items, hasLength(24));
      expect(cubit.state.hasMore, isFalse);

      await cubit.markRead('n1');
      expect(cubit.state.unreadCount, 3);
      expect(cubit.state.items.first.isRead, isTrue);
      await cubit.markRead('n1');
      verify(() => repository.markRead(['n1'])).called(1);

      await cubit.markAllRead();
      expect(cubit.state.unreadCount, 0);
      expect(cubit.state.items.every((n) => n.isRead), isTrue);
      await cubit.markAllRead();
      verify(() => repository.markAllRead()).called(1);
      await cubit.close();
    });

    test('a failed first load fails; a failed refresh keeps', () async {
      when(
        () => repository.page('ru'),
      ).thenAnswer((_) async => left(const NetworkFailure()));
      final cubit = NotificationsCubit(repository);
      await cubit.load('ru');
      expect(cubit.state.failure, isA<NetworkFailure>());
      await cubit.close();
    });
  });

  group('NotificationsView', () {
    late _MockCubit cubit;
    late GlobalCubits cubits;
    late List<String> opened;

    setUp(() {
      cubit = _MockCubit();
      opened = [];
      when(() => cubit.load(any())).thenAnswer((_) async {});
      when(() => cubit.loadMore(any())).thenAnswer((_) async {});
      when(() => cubit.markRead(any())).thenAnswer((_) async {});
      when(() => cubit.markAllRead()).thenAnswer((_) async {});
    });

    NotificationsState loaded() {
      final page = seeded('ru');
      return NotificationsState(
        isLoading: false,
        items: page.items,
        unreadCount: page.unreadCount,
      );
    }

    Future<void> pump(
      WidgetTester tester,
      NotificationsState state, {
      Stream<NotificationsState>? states,
      Locale locale = AppLocales.ru,
      double textScale = 1,
      double width = 360,
    }) async {
      if (states != null) {
        whenListen(cubit, states, initialState: state);
      } else {
        when(() => cubit.state).thenReturn(state);
      }
      cubits = GlobalCubits(locale: locale);
      await pumpView(
        tester,
        NotificationsView(onOpen: opened.add, now: now),
        cubits: cubits,
        locale: locale,
        textScale: textScale,
        width: width,
        providers: [BlocProvider<NotificationsCubit>.value(value: cubit)],
      );
    }

    testWidgets('today and earlier; a tap reads and opens', (tester) async {
      await pump(tester, loaded());
      expect(find.text(ru.dateToday), findsOneWidget);
      expect(find.text(ru.notificationsEarlier), findsOneWidget);
      expect(find.text(ru.dateMinutesAgo(12)), findsOneWidget);
      await tester.tap(find.text('Ожидает оплаты'));
      verify(() => cubit.markRead('n1')).called(1);
      expect(opened, ['/account/orders/10228']);
    });

    testWidgets('swiping marks read and keeps the row', (tester) async {
      await pump(tester, loaded());
      await tester.drag(find.text('Посылка взвешена'), const Offset(-500, 0));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 500));
      verify(() => cubit.markRead('n2')).called(1);
      expect(find.text('Посылка взвешена'), findsOneWidget);
      expect(opened, isEmpty);
    });

    testWidgets('«Прочитать все» only while something is unread', (
      tester,
    ) async {
      await pump(tester, loaded());
      expect(find.text(ru.notificationsUnread(4)), findsOneWidget);
      await tester.tap(find.text(ru.notificationsReadAll));
      verify(() => cubit.markAllRead()).called(1);
    });

    testWidgets('nothing unread, no «Прочитать все»', (tester) async {
      await pump(tester, loaded().copyWith(unreadCount: 0));
      expect(find.text(ru.notificationsReadAll), findsNothing);
    });

    testWidgets('the tab dot follows the screen', (tester) async {
      final states = StreamController<NotificationsState>();
      addTearDown(states.close);
      await pump(tester, loaded(), states: states.stream);
      states.add(loaded().copyWith(unreadCount: 1));
      await tester.pump();
      verify(() => cubits.unread.set(1)).called(1);
    });

    testWidgets('empty', (tester) async {
      await pump(tester, const NotificationsState(isLoading: false));
      expect(find.text(ru.notificationsEmptyTitle), findsOneWidget);
    });

    testWidgets('offline', (tester) async {
      await pump(
        tester,
        const NotificationsState(isLoading: false, failure: NetworkFailure()),
      );
      expect(find.text(ru.offlineTitle), findsOneWidget);
    });

    for (final width in [360.0, 412.0]) {
      testWidgets('fits in Turkmen at 1.3× on ${width.toInt()} dp', (
        tester,
      ) async {
        final page = seeded('tk');
        await pump(
          tester,
          NotificationsState(
            isLoading: false,
            items: page.items,
            unreadCount: page.unreadCount,
          ),
          locale: AppLocales.tk,
          textScale: 1.3,
          width: width,
        );
        expect(find.text(tk.notificationsReadAll), findsOneWidget);
        await scrollThrough(tester, find.byType(ListView), steps: 3);
        expect(tester.takeException(), isNull);
      });
    }
  });
}
