import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart' show right, unit;
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/app/app_info.dart';
import 'package:tmshop/core/auth/auth_cubit.dart';
import 'package:tmshop/core/auth/user_profile.dart';
import 'package:tmshop/core/di/injection.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/utils/money_format.dart';
import 'package:tmshop/features/settings/domain/entities/account_settings.dart';
import 'package:tmshop/features/settings/presentation/bloc/channel_link_cubit.dart';
import 'package:tmshop/features/settings/presentation/bloc/delete_account_cubit.dart';
import 'package:tmshop/features/settings/presentation/bloc/settings_cubit.dart';
import 'package:tmshop/features/settings/presentation/widgets/delete_account_view.dart';
import 'package:tmshop/features/settings/presentation/widgets/settings_view.dart';

import '../../helpers/mock_blocs.dart';
import '../../helpers/pump_view.dart';
import '../../helpers/settings_fixtures.dart';

class _MockSettingsCubit extends MockCubit<SettingsState>
    implements SettingsCubit {}

class _MockLinkCubit extends MockCubit<ChannelLinkState>
    implements ChannelLinkCubit {}

class _MockDeleteCubit extends MockCubit<DeleteAccountState>
    implements DeleteAccountCubit {}

const _customer = AuthState.signedIn(UserProfile(id: 'u', phone: '65123456'));

void main() {
  final ru = lookupAppLocalizations(AppLocales.ru);
  final tk = lookupAppLocalizations(AppLocales.tk);

  Future<void> settle(WidgetTester tester) async {
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 500));
  }

  setUpAll(() => registerFallbackValue(CodeChannel.sms));

  group('SettingsView', () {
    late _MockSettingsCubit cubit;
    late GlobalCubits cubits;
    late List<String> events;

    setUp(() {
      cubit = _MockSettingsCubit();
      events = [];
      when(() => cubit.load(any())).thenAnswer((_) async {});
      when(
        () => cubit.setCodeChannel(any(), any()),
      ).thenAnswer((_) async => right(unit));
      when(
        () => cubit.setTopic(any(), any(), isOn: any(named: 'isOn')),
      ).thenAnswer((_) async => right(unit));
    });

    tearDown(getIt.reset);

    Future<void> pump(
      WidgetTester tester,
      SettingsState state, {
      Locale locale = AppLocales.ru,
      double textScale = 1,
      double width = 360,
    }) async {
      when(() => cubit.state).thenReturn(state);
      cubits = GlobalCubits(locale: locale, auth: _customer);
      await pumpView(
        tester,
        SettingsView(
          onDeleteAccount: () => events.add('delete'),
          onSignedOut: () => events.add('left'),
          onGoogle: () => events.add('google'),
        ),
        cubits: cubits,
        locale: locale,
        textScale: textScale,
        width: width,
        providers: [BlocProvider<SettingsCubit>.value(value: cubit)],
      );
    }

    const loaded = SettingsState(isLoading: false, settings: sampleSettings);

    testWidgets('device and account groups, version', (tester) async {
      await pump(tester, loaded);
      expect(find.text(ru.profileLanguage), findsOneWidget);
      expect(find.text(ru.regionTitle), findsOneWidget);
      expect(find.text(ru.settingsCodeChannel), findsOneWidget);
      expect(find.text(ru.settingsRequired), findsOneWidget);
      await tester.scrollUntilVisible(
        find.text(ru.settingsVersion(AppInfo.version)),
        200,
      );
      expect(find.text(ru.settingsVersion(AppInfo.version)), findsOneWidget);
    });

    testWidgets('a linked channel is chosen; topics switch', (tester) async {
      await pump(tester, loaded);
      await tester.tap(find.text(ru.settingsChannelTelegram));
      await tester.pump();
      verify(() => cubit.setCodeChannel('ru', CodeChannel.telegram)).called(1);

      final switches = find.byType(Switch);
      // The service topic is locked.
      expect(tester.widget<Switch>(switches.first).onChanged, isNull);
      await tester.tap(switches.last);
      await tester.pump();
      verify(() => cubit.setTopic('ru', 'promo', isOn: false)).called(1);
    });

    testWidgets('an unlinked channel opens its link sheet', (tester) async {
      final link = _MockLinkCubit();
      when(
        () => link.state,
      ).thenReturn(const ChannelLinkState(step: LinkStep.email));
      getIt.registerFactory<ChannelLinkCubit>(() => link);
      await pump(tester, loaded);
      await tester.tap(find.text(ru.settingsChannelEmail));
      await settle(tester);
      expect(
        find.text(ru.settingsLinkTitle(ru.settingsChannelEmail)),
        findsOneWidget,
      );
      expect(find.text(ru.settingsGetCode), findsOneWidget);
      verifyNever(() => cubit.setCodeChannel(any(), any()));
    });

    testWidgets('sign-out asks, leaves the screen, then signs out', (
      tester,
    ) async {
      await pump(tester, loaded);
      final row = find.text(ru.profileSignOut);
      await tester.scrollUntilVisible(row, 200);
      await tester.tap(row);
      await settle(tester);
      expect(find.text(ru.profileSignOutTitle), findsOneWidget);
      await tester.tap(find.text(ru.profileSignOut).last);
      await settle(tester);
      expect(events, ['left']);
      verify(() => cubits.auth.signOut()).called(1);

      await tester.scrollUntilVisible(find.text(ru.settingsDeleteAccount), 200);
      await tester.tap(find.text(ru.settingsDeleteAccount));
      await tester.tap(find.text(ru.settingsGoogle));
      expect(events, ['left', 'delete', 'google']);
    });

    testWidgets('account settings failed: language still works', (
      tester,
    ) async {
      await pump(
        tester,
        const SettingsState(isLoading: false, failure: NetworkFailure()),
      );
      expect(find.text(ru.settingsLoadFailed), findsOneWidget);
      expect(find.text(ru.profileLanguage), findsOneWidget);
      await tester.tap(find.text(ru.actionRetry));
      verify(() => cubit.load('ru')).called(1);
    });

    for (final width in [360.0, 412.0]) {
      testWidgets('fits in Turkmen at 1.3× on ${width.toInt()} dp', (
        tester,
      ) async {
        await pump(
          tester,
          loaded,
          locale: AppLocales.tk,
          textScale: 1.3,
          width: width,
        );
        expect(find.text(tk.settingsCodeChannel), findsOneWidget);
        await scrollThrough(tester, find.byType(ListView), steps: 3);
        expect(tester.takeException(), isNull);
      });
    }
  });

  group('DeleteAccountView', () {
    late _MockDeleteCubit cubit;
    late GlobalCubits cubits;
    late List<String> events;

    setUp(() {
      cubit = _MockDeleteCubit();
      events = [];
      when(() => cubit.load(any())).thenAnswer((_) async {});
      when(() => cubit.requestCode()).thenAnswer((_) async {});
      when(() => cubit.delete(any(), any())).thenAnswer((_) async {});
    });

    Future<void> pump(
      WidgetTester tester,
      DeleteAccountState state, {
      Stream<DeleteAccountState>? states,
      Locale locale = AppLocales.ru,
      double textScale = 1,
      double width = 360,
    }) async {
      if (states != null) {
        whenListen(cubit, states, initialState: state);
      } else {
        when(() => cubit.state).thenReturn(state);
      }
      cubits = GlobalCubits(locale: locale, auth: _customer);
      await pumpView(
        tester,
        DeleteAccountView(
          onPayDebt: () => events.add('debt'),
          onKeep: () => events.add('keep'),
          onDeleted: () => events.add('deleted'),
        ),
        cubits: cubits,
        locale: locale,
        textScale: textScale,
        width: width,
        providers: [BlocProvider<DeleteAccountCubit>.value(value: cubit)],
      );
    }

    testWidgets('a debt blocks deletion and offers to pay', (tester) async {
      await pump(
        tester,
        const DeleteAccountState(step: DeleteStep.warning, check: blockedCheck),
      );
      expect(find.text(ru.settingsDeleteTitle), findsOneWidget);
      final reason = find.text(blockedCheck.blockReason!);
      await tester.scrollUntilVisible(reason, 200);
      expect(reason, findsOneWidget);
      expect(
        find.textContaining(MoneyFormat.tmt(ru, 120)),
        findsOneWidget,
        reason: 'balance warning',
      );
      final next = find.widgetWithText(FilledButton, ru.actionNext);
      await tester.scrollUntilVisible(next, 200);
      expect(tester.widget<FilledButton>(next).onPressed, isNull);
      await tester.tap(
        find.text(ru.settingsDeletePayDebt(MoneyFormat.tmt(ru, 52))),
      );
      expect(events, ['debt']);
    });

    testWidgets('allowed: «Далее» sends the code', (tester) async {
      await pump(
        tester,
        const DeleteAccountState(step: DeleteStep.warning, check: allowedCheck),
      );
      await tester.tap(find.text(ru.actionNext));
      verify(() => cubit.requestCode()).called(1);
    });

    testWidgets('the final button needs the whole code', (tester) async {
      await pump(
        tester,
        const DeleteAccountState(
          step: DeleteStep.code,
          check: allowedCheck,
          request: CodeRequest(requestId: 'd', codeLength: 4),
        ),
      );
      expect(find.textContaining('+993 65 12 34 56'), findsOneWidget);
      final finalButton = find.widgetWithText(
        FilledButton,
        ru.settingsDeleteFinal,
      );
      expect(tester.widget<FilledButton>(finalButton).onPressed, isNull);
      await tester.enterText(find.byType(TextField).first, '1234');
      await tester.pump();
      await tester.tap(finalButton);
      verify(() => cubit.delete('ru', '1234')).called(1);
    });

    testWidgets('once deleted: leaves, signs out', (tester) async {
      final states = StreamController<DeleteAccountState>();
      addTearDown(states.close);
      const code = DeleteAccountState(
        step: DeleteStep.code,
        request: CodeRequest(requestId: 'd', codeLength: 4),
      );
      await pump(tester, code, states: states.stream);
      states.add(code.copyWith(step: DeleteStep.deleted));
      await settle(tester);
      expect(events, ['deleted']);
      verify(() => cubits.auth.signOut()).called(1);
    });

    testWidgets('fits in Turkmen at 1.3× on 360 dp', (tester) async {
      await pump(
        tester,
        const DeleteAccountState(step: DeleteStep.warning, check: blockedCheck),
        locale: AppLocales.tk,
        textScale: 1.3,
      );
      await scrollThrough(tester, find.byType(ListView), steps: 3);
      expect(tester.takeException(), isNull);
    });
  });
}
