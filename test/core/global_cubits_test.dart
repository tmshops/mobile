import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/locale/locale_cubit.dart';
import 'package:tmshop/core/locale/locale_repository.dart';
import 'package:tmshop/core/network/connectivity_cubit.dart';
import 'package:tmshop/core/network/network_info.dart';

class _MockLocaleRepository extends Mock implements LocaleRepository {}

class _MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  group('LocaleCubit', () {
    late _MockLocaleRepository repository;

    setUp(() {
      repository = _MockLocaleRepository();
      when(() => repository.saveLanguageCode(any())).thenAnswer((_) async {});
    });

    test('starts from the saved language', () {
      when(() => repository.savedLanguageCode).thenReturn('tk');
      expect(LocaleCubit(repository).state, AppLocales.tk);
    });

    test('an unsupported saved language falls back to Turkmen', () {
      when(() => repository.savedLanguageCode).thenReturn('de');
      expect(LocaleCubit(repository).state, AppLocales.tk);
    });
  });

  group('ConnectivityCubit', () {
    late _MockNetworkInfo networkInfo;
    late StreamController<bool> changes;

    setUp(() {
      networkInfo = _MockNetworkInfo();
      changes = StreamController<bool>();
      when(() => networkInfo.onStatusChange).thenAnswer((_) => changes.stream);
    });

    tearDown(() => changes.close());

    blocTest<ConnectivityCubit, bool>(
      'reports the current status, then every change',
      setUp: () =>
          when(() => networkInfo.isOnline).thenAnswer((_) async => false),
      build: () => ConnectivityCubit(networkInfo),
      act: (_) async {
        await Future<void>.delayed(Duration.zero);
        changes.add(true);
      },
      expect: () => [false, true],
    );
  });
}
