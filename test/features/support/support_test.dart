import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/features/support/domain/entities/chat.dart';
import 'package:tmshop/features/support/domain/repositories/support_repository.dart';
import 'package:tmshop/features/support/presentation/bloc/find_request_cubit.dart';
import 'package:tmshop/features/support/presentation/bloc/support_chat_cubit.dart';
import 'package:tmshop/features/support/presentation/widgets/chat_sheets.dart';
import 'package:tmshop/features/support/presentation/widgets/find_request_view.dart';
import 'package:tmshop/features/support/presentation/widgets/support_chat_view.dart';

import '../../helpers/pump_view.dart';

class _MockRepository extends Mock implements SupportRepository {}

class _MockChatCubit extends MockCubit<SupportChatState>
    implements SupportChatCubit {}

class _MockFindCubit extends MockCubit<FindRequestState>
    implements FindRequestCubit {}

void main() {
  final ru = lookupAppLocalizations(AppLocales.ru);
  final at = DateTime(2026, 11, 27, 10);

  ChatMessage text(String id, String body, {bool isMine = false}) =>
      ChatMessage(
        id: id,
        isMine: isMine,
        sentAt: at,
        content: ChatContent.text(body),
      );

  setUpAll(() => registerFallbackValue(const ChatDraft()));

  group('SupportChatCubit', () {
    late _MockRepository repository;

    setUp(() {
      repository = _MockRepository();
      when(
        () => repository.history(any(), olderCursor: any(named: 'olderCursor')),
      ).thenAnswer(
        (_) async => right(ChatPage(messages: [text('m1', 'Здравствуйте')])),
      );
      when(
        () => repository.recentOrders(any()),
      ).thenAnswer((_) async => right(const []));
      when(
        repository.devicePhotos,
      ).thenAnswer((_) async => right(const ['p1']));
    });

    SupportChatCubit build() => SupportChatCubit(
      repository,
      now: () => at,
      pollInterval: const Duration(hours: 1),
    );

    blocTest<SupportChatCubit, SupportChatState>(
      'loads history and the attachments',
      build: build,
      act: (cubit) => cubit.load('ru'),
      verify: (cubit) {
        expect(cubit.state.isLoading, isFalse);
        expect(cubit.state.messages.single.id, 'm1');
        expect(cubit.state.photos, ['p1']);
      },
    );

    blocTest<SupportChatCubit, SupportChatState>(
      'a failed message can be sent again',
      build: build,
      setUp: () => when(
        () => repository.send(any(), any()),
      ).thenAnswer((_) async => left(const NetworkFailure())),
      act: (cubit) async {
        await cubit.load('ru');
        await cubit.send(const ChatDraft(text: 'Привет'));
        expect(cubit.state.messages.first.status, MessageStatus.failed);
        when(
          () => repository.send(any(), any()),
        ).thenAnswer((_) async => right(text('m2', 'Привет', isMine: true)));
        await cubit.retry(cubit.state.messages.first.id);
      },
      verify: (cubit) {
        expect(cubit.state.messages.first.id, 'm2');
        expect(cubit.state.messages.first.status, MessageStatus.sent);
      },
    );
  });

  group('FindRequestCubit', () {
    late _MockRepository repository;

    setUp(() {
      repository = _MockRepository();
      when(
        repository.devicePhotos,
      ).thenAnswer((_) async => right([for (var i = 0; i < 8; i++) 'p$i']));
    });

    test('needs a description, a photo or a link', () async {
      final cubit = FindRequestCubit(repository);
      await cubit.start();
      expect(cubit.state.canSend, isFalse);
      cubit.linkChanged('https://taobao.com/x');
      expect(cubit.state.canSend, isTrue);
      await cubit.close();
    });

    test('takes at most five photos', () async {
      final cubit = FindRequestCubit(repository);
      await cubit.start();
      cubit.state.gallery.forEach(cubit.togglePhoto);
      expect(cubit.state.photos, hasLength(FindRequestCubit.maxPhotos));
      await cubit.close();
    });

    blocTest<FindRequestCubit, FindRequestState>(
      'sends the request and keeps the card',
      build: () => FindRequestCubit(repository),
      setUp: () => when(
        () => repository.findForMe(
          any(),
          description: any(named: 'description'),
          photos: any(named: 'photos'),
          link: any(named: 'link'),
        ),
      ).thenAnswer((_) async => right(text('r1', ''))),
      act: (cubit) async {
        await cubit.start(description: 'Кроссовки');
        await cubit.submit('ru');
      },
      verify: (cubit) => expect(cubit.state.sent?.id, 'r1'),
    );
  });

  group('SupportChatView', () {
    testWidgets('empty chat offers quick-start chips', (tester) async {
      final cubit = _MockChatCubit();
      when(
        () => cubit.state,
      ).thenReturn(const SupportChatState(isLoading: false));
      when(() => cubit.send(any())).thenAnswer((_) async {});
      await pumpView(
        tester,
        SupportChatView(
          contacts: const SupportChannels(phone: '+993 12 00 00 00'),
          onOpenProduct: (_) {},
          onOpenOrder: (_) {},
          onFindForMe: () async => null,
        ),
        providers: [BlocProvider<SupportChatCubit>.value(value: cubit)],
      );
      expect(find.text(ru.supportTitle), findsOneWidget);
      expect(find.text(ru.chatEmptyTitle), findsOneWidget);
      await tester.tap(find.text(ru.chatQuickWhereOrder));
      verify(
        () => cubit.send(ChatDraft(text: ru.chatQuickWhereOrder)),
      ).called(1);
    });

    testWidgets('typed text is sent and the field cleared', (tester) async {
      final cubit = _MockChatCubit();
      when(() => cubit.state).thenReturn(
        SupportChatState(
          isLoading: false,
          messages: [text('m1', 'Добрый день')],
        ),
      );
      when(() => cubit.send(any())).thenAnswer((_) async {});
      await pumpView(
        tester,
        SupportChatView(
          contacts: const SupportChannels(),
          onOpenProduct: (_) {},
          onOpenOrder: (_) {},
          onFindForMe: () async => null,
        ),
        providers: [BlocProvider<SupportChatCubit>.value(value: cubit)],
      );
      expect(find.text('Добрый день'), findsOneWidget);
      await tester.enterText(find.byType(TextField), 'Где посылка?');
      await tester.pump();
      await tester.tap(find.byTooltip(ru.chatSend));
      await tester.pump();
      verify(() => cubit.send(const ChatDraft(text: 'Где посылка?'))).called(1);
      expect(find.text('Где посылка?'), findsNothing);
    });
  });

  group('FindRequestView', () {
    testWidgets('the button waits for something to search by', (tester) async {
      final cubit = _MockFindCubit();
      when(() => cubit.state).thenReturn(const FindRequestState());
      await pumpView(
        tester,
        FindRequestView(initialDescription: '', onSent: (_) {}),
        providers: [BlocProvider<FindRequestCubit>.value(value: cubit)],
      );
      expect(find.text(ru.findNeedSomething), findsOneWidget);
    });
  });
}
