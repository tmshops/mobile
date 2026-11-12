import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/dev/fake_backend/fake_config_backend.dart';
import 'package:tmshop/core/error/exceptions.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/widgets/widgets.dart';
import 'package:tmshop/features/config/data/datasources/config_data_sources.dart';
import 'package:tmshop/features/config/data/models/app_config_model.dart';
import 'package:tmshop/features/config/data/repositories/config_repository_impl.dart';
import 'package:tmshop/features/config/domain/entities/app_config.dart';
import 'package:tmshop/features/config/domain/repositories/config_repository.dart';
import 'package:tmshop/features/config/presentation/bloc/app_config_cubit.dart';
import 'package:tmshop/features/config/presentation/widgets/app_access_gate.dart';

import '../../helpers/pump_view.dart';

class _MockRemote extends Mock implements ConfigRemoteDataSource {}

class _MockLocal extends Mock implements ConfigLocalDataSource {}

class _MockRepository extends Mock implements ConfigRepository {}

class _MockConfigCubit extends MockCubit<AppConfigState>
    implements AppConfigCubit {}

AppConfigModel _model(String mode, {String lang = 'ru'}) =>
    AppConfigModel.fromJson(FakeConfigBackend(mode).config(lang));

const _config = AppConfig(
  minVersion: '1.0.0',
  storeUrl: 'https://store/app',
  support: SupportContacts(phone: '+993 12 00 00 00'),
);

void main() {
  final ru = lookupAppLocalizations(AppLocales.ru);

  group('versions', () {
    test('compare numerically, part by part', () {
      expect(compareVersions('1.10.0', '1.9.2'), 1);
      expect(compareVersions('1.0', '1.0.0'), 0);
      expect(compareVersions('1.0.0+12', '1.0.0'), 0);
      expect(compareVersions('0.9.9', '1.0.0'), -1);
      expect(compareVersions('2.0.0-beta', '1.99.0'), 1);
    });

    test('an old app must update before anything else', () {
      const all = AppConfig(
        minVersion: '2.0.0',
        storeUrl: '',
        support: SupportContacts(phone: ''),
        isMaintenance: true,
        isAccountBlocked: true,
      );
      expect(all.accessFor('1.0.0'), AppAccess.updateRequired);
      expect(all.accessFor('2.0.0'), AppAccess.maintenance);
      expect(
        all.copyWith(isMaintenance: false).accessFor('2.0.0'),
        AppAccess.blocked,
      );
      expect(_config.accessFor('1.0.0'), AppAccess.open);
    });
  });

  group('fake server', () {
    test('modes map to the matching access', () {
      expect(_model('').toEntity().accessFor('1.0.0'), AppAccess.open);
      expect(
        _model('update').toEntity().accessFor('1.0.0'),
        AppAccess.updateRequired,
      );
      expect(
        _model('blocked').toEntity().accessFor('1.0.0'),
        AppAccess.blocked,
      );
    });

    test('maintenance ends on the second check', () {
      final backend = FakeConfigBackend('maintenance');
      final first = AppConfigModel.fromJson(backend.config('tk'));
      expect(first.isMaintenance, isTrue);
      expect(first.maintenanceMessage, isNotEmpty);
      expect(
        AppConfigModel.fromJson(backend.config('tk')).isMaintenance,
        false,
      );
    });
  });

  group('repository', () {
    late _MockRemote remote;
    late _MockLocal local;
    late ConfigRepositoryImpl repository;

    setUpAll(() => registerFallbackValue(_model('')));

    setUp(() {
      remote = _MockRemote();
      local = _MockLocal();
      repository = ConfigRepositoryImpl(remote, local);
    });

    test('a fresh config is saved for the next launch', () async {
      final model = _model('');
      when(() => remote.fetch('ru')).thenAnswer((_) async => model);
      when(() => local.write(any())).thenAnswer((_) async {});

      final result = await repository.fetch('ru');

      expect(result.getRight().toNullable(), model.toEntity());
      verify(() => local.write(model)).called(1);
    });

    test('a failed save does not hide the fresh config', () async {
      when(() => remote.fetch('ru')).thenAnswer((_) async => _model(''));
      when(() => local.write(any())).thenThrow(const CacheException());

      expect((await repository.fetch('ru')).isRight(), isTrue);
    });

    test('offline is a network failure; the copy is read apart', () async {
      when(() => remote.fetch('ru')).thenThrow(const NetworkException());
      when(local.read).thenAnswer((_) async => _model('update'));

      final fetched = await repository.fetch('ru');
      final cached = await repository.cached();

      expect(fetched.getLeft().toNullable(), isA<NetworkFailure>());
      expect(cached.getRight().toNullable()?.minVersion, '99.0.0');
    });
  });

  group('AppConfigCubit', () {
    late _MockRepository repository;

    setUp(() => repository = _MockRepository());

    blocTest<AppConfigCubit, AppConfigState>(
      'the device copy decides at once, the server confirms',
      build: () {
        when(
          repository.cached,
        ).thenAnswer((_) async => right(_config.copyWith(isMaintenance: true)));
        when(
          () => repository.fetch('ru'),
        ).thenAnswer((_) async => right(_config));
        return AppConfigCubit(repository, appVersion: '1.0.0');
      },
      act: (cubit) => cubit.load('ru'),
      expect: () => [
        isA<AppConfigState>().having(
          (s) => s.access,
          'access',
          AppAccess.maintenance,
        ),
        isA<AppConfigState>().having((s) => s.isChecking, 'checking', true),
        const AppConfigState(config: _config),
      ],
    );

    blocTest<AppConfigCubit, AppConfigState>(
      'no network and no copy: the app stays open, retry is marked',
      build: () {
        when(repository.cached).thenAnswer((_) async => right(null));
        when(
          () => repository.fetch('ru'),
        ).thenAnswer((_) async => left(const NetworkFailure()));
        return AppConfigCubit(repository, appVersion: '1.0.0');
      },
      act: (cubit) => cubit.load('ru'),
      expect: () => [
        const AppConfigState(isChecking: true),
        const AppConfigState(hasFailed: true),
      ],
    );

    blocTest<AppConfigCubit, AppConfigState>(
      'an old version must update',
      build: () {
        when(repository.cached).thenAnswer((_) async => right(null));
        when(
          () => repository.fetch('ru'),
        ).thenAnswer((_) async => right(_config.copyWith(minVersion: '1.2.0')));
        return AppConfigCubit(repository, appVersion: '1.1.9');
      },
      act: (cubit) => cubit.load('ru'),
      verify: (cubit) => expect(cubit.state.access, AppAccess.updateRequired),
    );

    blocTest<AppConfigCubit, AppConfigState>(
      'a 403 «blocked» closes the app',
      build: () => AppConfigCubit(repository),
      act: (cubit) => cubit.accountBlocked(),
      expect: () => [const AppConfigState(access: AppAccess.blocked)],
    );
  });

  group('AppAccessGate', () {
    late _MockConfigCubit cubit;

    setUp(() {
      cubit = _MockConfigCubit();
      when(() => cubit.load(any())).thenAnswer((_) async {});
    });

    Future<void> pump(
      WidgetTester tester,
      AppConfigState state, {
      Locale locale = AppLocales.ru,
      double textScale = 1,
    }) async {
      when(() => cubit.state).thenReturn(state);
      await pumpView(
        tester,
        const AppAccessGate(child: Text('app')),
        providers: [BlocProvider<AppConfigCubit>.value(value: cubit)],
        locale: locale,
        textScale: textScale,
      );
    }

    testWidgets('open: the app itself', (tester) async {
      await pump(tester, const AppConfigState(config: _config));
      expect(find.text('app'), findsOneWidget);
    });

    testWidgets('update: the app is replaced, «Обновить» opens the store', (
      tester,
    ) async {
      final opened = mockExternalLinks();
      await pump(
        tester,
        const AppConfigState(config: _config, access: AppAccess.updateRequired),
      );
      expect(find.text('app'), findsNothing);
      expect(find.text(ru.serviceUpdateTitle), findsOneWidget);

      await tester.tap(find.text(ru.serviceUpdateAction));
      await tester.pump();
      expect(opened, [Uri.parse(_config.storeUrl)]);
    });

    testWidgets('maintenance: server text and «Проверить снова»', (
      tester,
    ) async {
      await pump(
        tester,
        AppConfigState(
          config: _config.copyWith(
            isMaintenance: true,
            maintenanceMessage: 'Вернёмся к 14:00',
          ),
          access: AppAccess.maintenance,
        ),
      );
      expect(find.text('Вернёмся к 14:00'), findsOneWidget);

      await tester.tap(find.text(ru.serviceMaintenanceAction));
      verify(() => cubit.load('ru')).called(1);
    });

    for (final access in [
      AppAccess.updateRequired,
      AppAccess.maintenance,
      AppAccess.blocked,
    ]) {
      testWidgets('$access fits in Turkmen at 1.3× on 360 dp', (tester) async {
        await pump(
          tester,
          AppConfigState(config: _config, access: access),
          locale: AppLocales.tk,
          textScale: 1.3,
        );
        expect(find.byType(ServiceView), findsOneWidget);
        expect(tester.takeException(), isNull);
      });
    }
  });
}
