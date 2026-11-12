import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/app/app_info.dart';
import 'package:tmshop/core/dev/fake_backend/fake_orders_backend.dart';
import 'package:tmshop/core/dev/fake_backend/fake_settings_backend.dart';
import 'package:tmshop/core/dev/fake_backend/fake_wallet_backend.dart';
import 'package:tmshop/core/error/exceptions.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/features/settings/data/models/settings_models.dart';
import 'package:tmshop/features/settings/domain/entities/account_settings.dart';
import 'package:tmshop/features/settings/domain/repositories/settings_repository.dart';
import 'package:tmshop/features/settings/presentation/bloc/channel_link_cubit.dart';
import 'package:tmshop/features/settings/presentation/bloc/delete_account_cubit.dart';
import 'package:tmshop/features/settings/presentation/bloc/settings_cubit.dart';

import '../../helpers/settings_fixtures.dart';

class _MockRepository extends Mock implements SettingsRepository {}

void main() {
  test('AppInfo.version matches pubspec.yaml', () {
    final pubspec = File('pubspec.yaml').readAsStringSync();
    final version = RegExp(
      r'^version:\s*([\d.]+)',
      multiLine: true,
    ).firstMatch(pubspec)?.group(1);
    expect(AppInfo.version, version);
  });

  group('fake settings server', () {
    late FakeWalletBackend wallet;
    late FakeSettingsBackend backend;

    setUp(() {
      final orders = FakeOrdersBackend();
      wallet = FakeWalletBackend(orders)..open(FakeWalletBackend.knownPhone);
      backend = FakeSettingsBackend(orders, wallet);
    });

    test('only linked channels; service topics stay on', () {
      expect(
        () => backend.setCodeChannel('ru', 'email'),
        throwsA(isA<ServerException>()),
      );
      expect(
        () => backend.setNotification('ru', 'orders', isOn: false),
        throwsA(isA<ServerException>()),
      );
      backend.setNotification('ru', 'promo', isOn: false);
      final topics = (backend.settings('ru')['notifications'] as List)
          .cast<Map<String, dynamic>>();
      expect(topics.firstWhere((t) => t['id'] == 'promo')['is_on'], isFalse);
    });

    test('email links by code and becomes the channel', () {
      expect(
        () => backend.startEmailLink('ru', 'not-an-email'),
        throwsA(isA<ServerException>()),
      );
      final request = backend.startEmailLink('ru', 'aina@example.com');
      expect(
        () => backend.confirmEmailLink(
          'ru',
          request['request_id'] as String,
          '0000',
        ),
        throwsA(isA<ServerException>()),
      );
      backend.confirmEmailLink(
        'ru',
        request['request_id'] as String,
        FakeSettingsBackend.devCode,
      );
      final settings = AccountSettingsModel.fromJson(
        backend.settings('ru'),
      ).toEntity();
      expect(settings.codeChannel, CodeChannel.email);
      expect(
        settings.channels.firstWhere((c) => c.channel == CodeChannel.email),
        const ChannelInfo(
          channel: CodeChannel.email,
          isLinked: true,
          address: 'aina@example.com',
        ),
      );
    });

    test('Telegram links on the second check', () {
      expect(
        backend.startTelegramLink()['bot'],
        FakeSettingsBackend.telegramBot,
      );
      expect(backend.checkTelegramLink(), isFalse);
      expect(backend.checkTelegramLink(), isTrue);
    });

    test('deletion waits for the debt to be paid', () {
      final blocked = DeletionCheckModel.fromJson(
        backend.deletionCheck('ru'),
      ).toEntity();
      expect(blocked.canDelete, isFalse);
      expect(blocked.debt, 52);
      expect(blocked.activeOrders, greaterThan(0));
      expect(blocked.blockReason, isNotNull);
      final request = backend.requestDeletionCode();
      expect(
        () => backend.deleteAccount(
          'ru',
          request['request_id'] as String,
          FakeSettingsBackend.devCode,
        ),
        throwsA(isA<ServerException>()),
      );

      final bill = wallet.surcharges('ru').single['id'] as String;
      wallet.paySurcharge('ru', bill, 'balance');
      expect(backend.deletionCheck('ru')['can_delete'], isTrue);
      backend.deleteAccount(
        'ru',
        request['request_id'] as String,
        FakeSettingsBackend.devCode,
      );
    });
  });

  test('models: unknown channels skipped, service topics forced on', () {
    final settings = AccountSettingsModel.fromJson({
      'code_channel': 'whatsapp',
      'channels': [
        {'id': 'sms', 'is_linked': true},
        {'id': 'whatsapp', 'is_linked': true},
      ],
      'notifications': [
        {'id': 'orders', 'title': 'x', 'is_required': true, 'is_on': false},
      ],
    }).toEntity();
    expect(settings.codeChannel, CodeChannel.sms);
    expect(settings.channels, hasLength(1));
    expect(settings.topics.single.isOn, isTrue);
  });

  group('SettingsCubit', () {
    late _MockRepository repository;

    setUp(() {
      repository = _MockRepository();
      when(
        () => repository.load('ru'),
      ).thenAnswer((_) async => right(sampleSettings));
    });

    test('changes show at once and roll back on failure', () async {
      when(
        () => repository.setTopic('ru', 'promo', isOn: false),
      ).thenAnswer((_) async => right(unit));
      when(
        () => repository.setCodeChannel('ru', CodeChannel.telegram),
      ).thenAnswer((_) async => left(const NetworkFailure()));
      final cubit = SettingsCubit(repository);
      await cubit.load('ru');

      await cubit.setTopic('ru', 'promo', isOn: false);
      expect(
        cubit.state.settings?.topics.firstWhere((t) => t.id == 'promo').isOn,
        isFalse,
      );

      final result = await cubit.setCodeChannel('ru', CodeChannel.telegram);
      expect(result.isLeft(), isTrue);
      expect(cubit.state.settings?.codeChannel, CodeChannel.sms);
      await cubit.close();
    });

    test('a failed load keeps device settings usable', () async {
      when(
        () => repository.load('ru'),
      ).thenAnswer((_) async => left(const NetworkFailure()));
      final cubit = SettingsCubit(repository);
      await cubit.load('ru');
      expect(cubit.state.failure, isA<NetworkFailure>());
      expect(cubit.state.isLoading, isFalse);
      expect(
        await cubit.setTopic('ru', 'promo', isOn: false),
        isA<Left<Failure, Unit>>(),
      );
      await cubit.close();
    });
  });

  group('ChannelLinkCubit', () {
    late _MockRepository repository;

    setUp(() => repository = _MockRepository());

    test('email: code, a wrong one, then done', () async {
      when(() => repository.startEmailLink('ru', 'a@b.tm')).thenAnswer(
        (_) async => right(const CodeRequest(requestId: 'r', codeLength: 4)),
      );
      when(() => repository.confirmEmailLink('ru', 'r', '0000')).thenAnswer(
        (_) async => left(const ServerFailure(message: 'Неверный код')),
      );
      when(
        () => repository.confirmEmailLink('ru', 'r', '1234'),
      ).thenAnswer((_) async => right(unit));
      final cubit = ChannelLinkCubit(repository);
      await cubit.sendEmail('ru', ' a@b.tm ');
      expect(cubit.state.step, LinkStep.emailCode);
      await cubit.confirmEmail('ru', '0000');
      expect(cubit.state.failure, isA<ServerFailure>());
      expect(cubit.state.step, LinkStep.emailCode);
      await cubit.confirmEmail('ru', '1234');
      expect(cubit.state.step, LinkStep.done);
      await cubit.close();
    });

    test('Telegram: not yet, then linked', () async {
      when(() => repository.startTelegramLink()).thenAnswer(
        (_) async => right(const TelegramLink(bot: '@bot', code: 'TM-1')),
      );
      var checks = 0;
      when(
        () => repository.checkTelegramLink(),
      ).thenAnswer((_) async => right(++checks > 1));
      final cubit = ChannelLinkCubit(repository);
      await cubit.startTelegram();
      expect(cubit.state.telegram?.code, 'TM-1');
      await cubit.checkTelegram();
      expect(cubit.state.isNotYet, isTrue);
      await cubit.checkTelegram();
      expect(cubit.state.step, LinkStep.done);
      await cubit.close();
    });
  });

  group('DeleteAccountCubit', () {
    late _MockRepository repository;

    setUp(() {
      repository = _MockRepository();
      when(() => repository.requestDeletionCode()).thenAnswer(
        (_) async => right(const CodeRequest(requestId: 'd', codeLength: 4)),
      );
    });

    test('blocked: no code is sent', () async {
      when(
        () => repository.deletionCheck('ru'),
      ).thenAnswer((_) async => right(blockedCheck));
      final cubit = DeleteAccountCubit(repository);
      await cubit.load('ru');
      expect(cubit.state.step, DeleteStep.warning);
      await cubit.requestCode();
      verifyNever(() => repository.requestDeletionCode());
      await cubit.close();
    });

    test('warning, code, a wrong code, deleted', () async {
      when(
        () => repository.deletionCheck('ru'),
      ).thenAnswer((_) async => right(allowedCheck));
      when(() => repository.deleteAccount('ru', 'd', '0000')).thenAnswer(
        (_) async => left(const ServerFailure(message: 'Неверный код')),
      );
      when(
        () => repository.deleteAccount('ru', 'd', '1234'),
      ).thenAnswer((_) async => right(unit));
      final cubit = DeleteAccountCubit(repository);
      await cubit.load('ru');
      await cubit.requestCode();
      expect(cubit.state.step, DeleteStep.code);
      await cubit.delete('ru', '0000');
      expect(cubit.state.failure, isA<ServerFailure>());
      await cubit.delete('ru', '1234');
      expect(cubit.state.step, DeleteStep.deleted);
      await cubit.close();
    });
  });
}
