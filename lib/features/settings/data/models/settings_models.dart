import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/account_settings.dart';

part 'settings_models.freezed.dart';
part 'settings_models.g.dart';

/// GET /account/settings.
@freezed
abstract class AccountSettingsModel with _$AccountSettingsModel {
  const factory AccountSettingsModel({
    required String codeChannel,
    required List<ChannelModel> channels,
    required List<TopicModel> notifications,
  }) = _AccountSettingsModel;

  factory AccountSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$AccountSettingsModelFromJson(json);
}

@freezed
abstract class ChannelModel with _$ChannelModel {
  const factory ChannelModel({
    required String id,
    required bool isLinked,
    String? address,
  }) = _ChannelModel;

  factory ChannelModel.fromJson(Map<String, dynamic> json) =>
      _$ChannelModelFromJson(json);
}

@freezed
abstract class TopicModel with _$TopicModel {
  const factory TopicModel({
    required String id,
    required String title,
    required bool isRequired,
    required bool isOn,
  }) = _TopicModel;

  factory TopicModel.fromJson(Map<String, dynamic> json) =>
      _$TopicModelFromJson(json);
}

/// GET /account/deletion-check.
@freezed
abstract class DeletionCheckModel with _$DeletionCheckModel {
  const factory DeletionCheckModel({
    required int activeOrders,
    required int debt,
    required int balance,
    required bool canDelete,
    String? blockReason,
  }) = _DeletionCheckModel;

  factory DeletionCheckModel.fromJson(Map<String, dynamic> json) =>
      _$DeletionCheckModelFromJson(json);
}

/// `sms`, `telegram`, `email`; `null` for channels this version lacks.
CodeChannel? codeChannelOf(String id) => switch (id) {
  'sms' => CodeChannel.sms,
  'telegram' => CodeChannel.telegram,
  'email' => CodeChannel.email,
  _ => null,
};

extension AccountSettingsModelX on AccountSettingsModel {
  AccountSettings toEntity() => AccountSettings(
    codeChannel: codeChannelOf(codeChannel) ?? CodeChannel.sms,
    channels: [
      for (final c in channels)
        if (codeChannelOf(c.id) case final channel?)
          ChannelInfo(
            channel: channel,
            isLinked: c.isLinked,
            address: c.address,
          ),
    ],
    topics: [
      for (final t in notifications)
        NotificationTopic(
          id: t.id,
          title: t.title,
          isRequired: t.isRequired,
          // A service topic is always on, whatever is stored.
          isOn: t.isOn || t.isRequired,
        ),
    ],
  );
}

extension DeletionCheckModelX on DeletionCheckModel {
  DeletionCheck toEntity() => DeletionCheck(
    activeOrders: activeOrders,
    debt: debt,
    balance: balance,
    canDelete: canDelete,
    blockReason: blockReason,
  );
}
