import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/app_config.dart';

part 'app_config_model.freezed.dart';
part 'app_config_model.g.dart';

/// GET /config, the fields the app gate needs.
@freezed
abstract class AppConfigModel with _$AppConfigModel {
  const factory AppConfigModel({
    required String minVersion,
    required String storeUrl,
    required SupportContactsModel support,
    @Default(false) bool isMaintenance,
    String? maintenanceMessage,
    @Default(false) bool isAccountBlocked,
  }) = _AppConfigModel;

  factory AppConfigModel.fromJson(Map<String, dynamic> json) =>
      _$AppConfigModelFromJson(json);
}

@freezed
abstract class SupportContactsModel with _$SupportContactsModel {
  const factory SupportContactsModel({
    required String phone,
    String? telegram,
    String? whatsapp,
  }) = _SupportContactsModel;

  factory SupportContactsModel.fromJson(Map<String, dynamic> json) =>
      _$SupportContactsModelFromJson(json);
}

extension AppConfigModelX on AppConfigModel {
  AppConfig toEntity() => AppConfig(
    minVersion: minVersion,
    storeUrl: storeUrl,
    support: SupportContacts(
      phone: support.phone,
      telegram: support.telegram,
      whatsapp: support.whatsapp,
    ),
    isMaintenance: isMaintenance,
    maintenanceMessage: maintenanceMessage,
    isAccountBlocked: isAccountBlocked,
  );
}
