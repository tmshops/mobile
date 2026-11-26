import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/dev/fake_backend/fake_link_import_backend.dart';
import 'package:tmshop/core/error/exceptions.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/features/link_import/data/datasources/link_import_remote_data_source.dart';
import 'package:tmshop/features/link_import/data/repositories/link_import_repository_impl.dart';
import 'package:tmshop/features/link_import/domain/entities/link_import.dart';
import 'package:tmshop/features/link_import/domain/repositories/link_import_repository.dart';
import 'package:tmshop/features/link_import/presentation/bloc/link_import_cubit.dart';
import 'package:tmshop/features/link_import/presentation/widgets/link_import_view.dart';

import '../../helpers/pump_view.dart';

class _MockRemote extends Mock implements LinkImportRemoteDataSource {}

class _MockRepository extends Mock implements LinkImportRepository {}

class _MockCubit extends MockCubit<LinkImportState>
    implements LinkImportCubit {}

void main() {
  final ru = lookupAppLocalizations(AppLocales.ru);

  group('FakeLinkImportBackend', () {
    test('a task passes the steps, then names a product', () {
      var now = DateTime(2026);
      final backend = FakeLinkImportBackend(now: () => now);
      // Find a link that becomes a task and does not fail.
      final link =
          [
            for (var i = 0; i < 50; i++)
              'https://item.taobao.com/item.htm?id=$i',
          ].firstWhere((l) {
            final json = FakeLinkImportBackend(now: () => now).start(l);
            return json.containsKey('task_id') &&
                !l.contains('fail') &&
                l.hashCode.abs() % 7 != 0;
          });
      final task = backend.start(link)['task_id'] as String;
      expect(backend.status(task), {'status': 'pending', 'step': 'opening'});
      now = now.add(const Duration(seconds: 3));
      expect(backend.status(task)['step'], 'translating');
      now = now.add(const Duration(seconds: 4));
      final done = backend.status(task);
      expect(done['status'], 'done');
      expect(done['product_id'], isA<String>());
    });

    test('a link with «fail» fails', () {
      var now = DateTime(2026);
      final backend = FakeLinkImportBackend(now: () => now);
      final task =
          backend.start('https://item.taobao.com/fail')['task_id'] as String;
      now = now.add(const Duration(seconds: 5));
      expect(backend.status(task), {'status': 'failed'});
    });
  });

  group('LinkImportRepositoryImpl', () {
    late _MockRemote remote;
    late LinkImportRepositoryImpl repository;

    setUp(() {
      remote = _MockRemote();
      repository = LinkImportRepositoryImpl(remote);
    });

    test('a known product is done at once', () async {
      when(
        () => remote.start(any()),
      ).thenAnswer((_) async => {'product_id': 'p1'});
      expect(
        await repository.start('l'),
        right<Failure, LinkImportStatus>(const LinkImportStatus.done('p1')),
      );
    });

    test('statuses map to steps', () async {
      when(
        () => remote.status('t'),
      ).thenAnswer((_) async => {'status': 'pending', 'step': 'pricing'});
      expect(
        await repository.status('t'),
        right<Failure, LinkImportStatus>(
          const LinkImportStatus.pending(
            taskId: 't',
            step: LinkImportStep.pricing,
          ),
        ),
      );
    });

    test('offline is a network failure', () async {
      when(() => remote.start(any())).thenThrow(const NetworkException());
      expect(
        await repository.start('l'),
        left<Failure, LinkImportStatus>(const NetworkFailure()),
      );
    });
  });

  group('LinkImportCubit', () {
    late _MockRepository repository;

    setUp(() => repository = _MockRepository());

    blocTest<LinkImportCubit, LinkImportState>(
      'polls through the steps to the product',
      build: () {
        when(() => repository.start(any())).thenAnswer(
          (_) async => right(
            const LinkImportStatus.pending(
              taskId: 't',
              step: LinkImportStep.opening,
            ),
          ),
        );
        final answers = [
          const LinkImportStatus.pending(
            taskId: 't',
            step: LinkImportStep.pricing,
          ),
          const LinkImportStatus.done('p1'),
        ];
        when(
          () => repository.status('t'),
        ).thenAnswer((_) async => right(answers.removeAt(0)));
        return LinkImportCubit(repository, pollInterval: Duration.zero);
      },
      act: (cubit) => cubit.start('link'),
      expect: () => const [
        LinkImportState.working(LinkImportStep.opening),
        LinkImportState.working(LinkImportStep.pricing),
        LinkImportState.done('p1'),
      ],
    );

    blocTest<LinkImportCubit, LinkImportState>(
      'gives up after the timeout',
      build: () {
        const pending = LinkImportStatus.pending(
          taskId: 't',
          step: LinkImportStep.opening,
        );
        when(
          () => repository.start(any()),
        ).thenAnswer((_) async => right(pending));
        when(
          () => repository.status('t'),
        ).thenAnswer((_) async => right(pending));
        return LinkImportCubit(
          repository,
          pollInterval: const Duration(milliseconds: 5),
          timeout: const Duration(milliseconds: 20),
        );
      },
      act: (cubit) => cubit.start('link'),
      wait: const Duration(milliseconds: 100),
      verify: (cubit) => expect(cubit.state, const LinkImportState.failed()),
    );

    blocTest<LinkImportCubit, LinkImportState>(
      'a request error can be retried',
      build: () {
        when(
          () => repository.start(any()),
        ).thenAnswer((_) async => left(const NetworkFailure()));
        return LinkImportCubit(repository);
      },
      act: (cubit) => cubit.start('link'),
      expect: () => const [
        LinkImportState.working(LinkImportStep.opening),
        LinkImportState.error(NetworkFailure()),
      ],
    );
  });

  group('LinkImportView', () {
    late _MockCubit cubit;
    late List<String> opened;
    late int support;

    setUp(() {
      cubit = _MockCubit();
      opened = [];
      support = 0;
    });

    Future<void> pump(WidgetTester tester, LinkImportState state) {
      when(() => cubit.state).thenReturn(state);
      return pumpView(
        tester,
        LinkImportView(
          link: 'https://item.taobao.com/x',
          onRetry: () {},
          onCancel: () {},
          onDone: opened.add,
          onSupport: () => support++,
        ),
        providers: [BlocProvider<LinkImportCubit>.value(value: cubit)],
      );
    }

    testWidgets('waiting shows the steps and «Отмена»', (tester) async {
      await pump(tester, const LinkImportState.working(LinkImportStep.pricing));
      expect(find.text(ru.linkImportWaitTitle), findsOneWidget);
      expect(find.text(ru.linkImportStepPricing), findsOneWidget);
      expect(find.text(ru.actionCancel), findsOneWidget);
      await tester.pumpWidget(const SizedBox());
    });

    testWidgets('done opens the product', (tester) async {
      whenListen(
        cubit,
        Stream.value(const LinkImportState.done('p1')),
        initialState: const LinkImportState.working(LinkImportStep.opening),
      );
      await pumpView(
        tester,
        LinkImportView(
          link: 'l',
          onRetry: () {},
          onCancel: () {},
          onDone: opened.add,
          onSupport: () {},
        ),
        providers: [BlocProvider<LinkImportCubit>.value(value: cubit)],
      );
      await tester.pump();
      expect(opened, ['p1']);
      await tester.pumpWidget(const SizedBox());
    });

    testWidgets('a failure hands over to support', (tester) async {
      await pump(tester, const LinkImportState.failed());
      expect(find.text(ru.linkImportFailedText), findsOneWidget);
      await tester.tap(find.text(ru.linkImportToSupport));
      expect(support, 1);
    });
  });
}
