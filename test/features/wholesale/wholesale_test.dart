import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/dev/fake_backend/fake_orders_backend.dart';
import 'package:tmshop/core/dev/fake_backend/fake_wholesale_backend.dart';
import 'package:tmshop/core/error/exceptions.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/features/wholesale/data/datasources/wholesale_remote_data_source.dart';
import 'package:tmshop/features/wholesale/data/repositories/wholesale_repository_impl.dart';
import 'package:tmshop/features/wholesale/domain/entities/wholesale.dart';
import 'package:tmshop/features/wholesale/domain/repositories/wholesale_repository.dart';
import 'package:tmshop/features/wholesale/presentation/bloc/wholesale_application_cubit.dart';
import 'package:tmshop/features/wholesale/presentation/bloc/wholesale_documents_cubit.dart';
import 'package:tmshop/features/wholesale/presentation/widgets/become_wholesale_view.dart';
import 'package:tmshop/features/wholesale/presentation/widgets/wholesale_documents_view.dart';

import '../../helpers/pump_view.dart';

class _MockRemote extends Mock implements WholesaleRemoteDataSource {}

class _MockRepository extends Mock implements WholesaleRepository {}

class _MockApplicationCubit extends MockCubit<WholesaleApplicationState>
    implements WholesaleApplicationCubit {}

class _MockDocumentsCubit extends MockCubit<WholesaleDocumentsState>
    implements WholesaleDocumentsCubit {}

void main() {
  final ru = lookupAppLocalizations(AppLocales.ru);
  const form = WholesaleForm(
    name: 'Мерген',
    phone: '65123456',
    company: 'ИП Мерген',
    city: 'Ашхабад',
  );

  setUpAll(() => registerFallbackValue(const WholesaleForm()));

  group('FakeWholesaleBackend', () {
    Map<String, dynamic> body(String company) => {
      'name': 'Мерген',
      'phone': '65123456',
      'company': company,
      'city': 'Ашхабад',
    };

    test('pending, then approved with a group', () {
      var now = DateTime(2026);
      final backend = FakeWholesaleBackend(FakeOrdersBackend(), now: () => now);
      expect(backend.application('ru')['status'], 'none');
      expect(backend.apply('ru', body('ИП Мерген'))['status'], 'pending');
      now = now.add(const Duration(minutes: 1));
      final json = backend.application('ru');
      expect(json['status'], 'approved');
      expect(json['group'], 'Опт 1');
    });

    test('«отказ» in the company is rejected with a reason', () {
      var now = DateTime(2026);
      final backend = FakeWholesaleBackend(FakeOrdersBackend(), now: () => now)
        ..apply('ru', body('отказ'));
      now = now.add(const Duration(minutes: 1));
      final json = backend.application('ru');
      expect(json['status'], 'rejected');
      expect(json['reason'], isA<String>());
    });

    test('an empty field is a validation error', () {
      final backend = FakeWholesaleBackend(FakeOrdersBackend());
      expect(
        () => backend.apply('ru', body(' ')),
        throwsA(isA<ServerException>()),
      );
    });
  });

  group('WholesaleRepositoryImpl', () {
    late _MockRemote remote;
    late WholesaleRepositoryImpl repository;

    setUp(() {
      remote = _MockRemote();
      repository = WholesaleRepositoryImpl(remote);
    });

    test('maps the rejected application', () async {
      when(() => remote.application(any())).thenAnswer(
        (_) async => {
          'status': 'rejected',
          'name': 'М',
          'phone': '65123456',
          'company': 'К',
          'city': 'Г',
          'reason': 'Нет ИНН',
        },
      );
      final result = await repository.application('ru');
      expect(
        result.getOrElse((_) => const WholesaleApplication.none()),
        isA<WholesaleRejected>().having((r) => r.reason, 'reason', 'Нет ИНН'),
      );
    });

    test('a server validation error is a form error', () async {
      when(
        () => remote.apply(any(), any()),
      ).thenThrow(const ServerException(code: 'validation'));
      final result = await repository.apply('ru', form);
      expect(result.getLeft().toNullable(), isA<ValidationFailure>());
    });

    test('documents per order', () async {
      when(() => remote.documents(any())).thenAnswer(
        (_) async => {
          'orders': [
            {
              'number': '10228',
              'created_at': '2026-11-20T10:00:00.000',
              'documents': [
                {
                  'kind': 'waybill',
                  'number': 'Н-10228',
                  'date': '2026-11-20T10:00:00.000',
                  'url': 'https://x/n.pdf',
                },
              ],
            },
          ],
        },
      );
      final orders = (await repository.documents(
        'ru',
      )).getOrElse((_) => const []);
      expect(
        orders.single.documents.single.kind,
        WholesaleDocumentKind.waybill,
      );
    });
  });

  group('WholesaleApplicationCubit', () {
    late _MockRepository repository;

    setUp(() {
      repository = _MockRepository();
      when(
        () => repository.application(any()),
      ).thenAnswer((_) async => right(const WholesaleApplication.none()));
    });

    blocTest<WholesaleApplicationCubit, WholesaleApplicationState>(
      'prefills the form and sends it',
      build: () => WholesaleApplicationCubit(repository),
      setUp: () => when(() => repository.apply(any(), any())).thenAnswer(
        (_) async => right(
          WholesaleApplication.pending(form: form, sentAt: DateTime(2026)),
        ),
      ),
      act: (cubit) async {
        await cubit.load(
          'ru',
          prefill: const WholesaleForm(name: 'Мерген', phone: '65123456'),
        );
        expect(cubit.state.showsForm, isTrue);
        expect(cubit.state.canSend, isFalse);
        cubit.changed(form);
        await cubit.submit('ru');
      },
      verify: (cubit) {
        expect(cubit.state.application, isA<WholesalePending>());
        expect(cubit.state.showsForm, isFalse);
      },
    );

    blocTest<WholesaleApplicationCubit, WholesaleApplicationState>(
      '«Подать снова» brings back the rejected answers',
      build: () => WholesaleApplicationCubit(repository),
      setUp: () => when(() => repository.application(any())).thenAnswer(
        (_) async =>
            right(const WholesaleApplication.rejected(form: form, reason: 'x')),
      ),
      act: (cubit) async {
        await cubit.load('ru');
        cubit.reapply();
      },
      verify: (cubit) {
        expect(cubit.state.showsForm, isTrue);
        expect(cubit.state.form, form);
      },
    );
  });

  group('WholesaleDocumentsCubit', () {
    blocTest<WholesaleDocumentsCubit, WholesaleDocumentsState>(
      'a failure is shown with retry',
      build: () {
        final repository = _MockRepository();
        when(
          () => repository.documents(any()),
        ).thenAnswer((_) async => left(const NetworkFailure()));
        return WholesaleDocumentsCubit(repository);
      },
      act: (cubit) => cubit.load('ru'),
      expect: () => [isA<DocumentsFailure>()],
    );
  });

  group('views', () {
    testWidgets('form with benefits; status after sending', (tester) async {
      final cubit = _MockApplicationCubit();
      whenListen(
        cubit,
        Stream<WholesaleApplicationState>.empty(),
        initialState: const WholesaleApplicationState(
          isLoading: false,
          application: WholesaleApplication.none(),
        ),
      );
      await pumpView(
        tester,
        BecomeWholesaleView(onReload: () {}, onOpenCatalog: () {}),
        providers: [
          BlocProvider<WholesaleApplicationCubit>.value(value: cubit),
        ],
      );
      expect(find.text(ru.wholesaleBenefitPrices), findsOneWidget);
      expect(find.text(ru.wholesaleFillAll), findsOneWidget);
    });

    testWidgets('approved shows the group', (tester) async {
      final cubit = _MockApplicationCubit();
      when(() => cubit.state).thenReturn(
        const WholesaleApplicationState(
          isLoading: false,
          application: WholesaleApplication.approved(
            form: form,
            group: 'Опт 1',
          ),
        ),
      );
      await pumpView(
        tester,
        BecomeWholesaleView(onReload: () {}, onOpenCatalog: () {}),
        providers: [
          BlocProvider<WholesaleApplicationCubit>.value(value: cubit),
        ],
      );
      expect(find.text(ru.wholesaleApprovedTitle), findsOneWidget);
      expect(find.text(ru.wholesaleApprovedText('Опт 1')), findsOneWidget);
    });

    testWidgets('documents list invoices and waybills', (tester) async {
      final cubit = _MockDocumentsCubit();
      final date = DateTime(2026, 11, 20);
      when(() => cubit.state).thenReturn(
        WholesaleDocumentsState.loaded([
          OrderDocuments(
            orderNumber: '10228',
            createdAt: date,
            documents: [
              WholesaleDocument(
                kind: WholesaleDocumentKind.invoice,
                number: 'С-10228',
                date: date,
                url: 'https://x/c.pdf',
              ),
            ],
          ),
        ]),
      );
      await pumpView(
        tester,
        WholesaleDocumentsView(onReload: () async {}),
        providers: [BlocProvider<WholesaleDocumentsCubit>.value(value: cubit)],
      );
      expect(find.text(ru.wholesaleInvoice('С-10228')), findsOneWidget);
      expect(find.text(ru.wholesaleDownload), findsOneWidget);
    });
  });
}
