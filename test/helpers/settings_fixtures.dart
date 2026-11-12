import 'package:tmshop/features/settings/domain/entities/account_settings.dart';

const sampleSettings = AccountSettings(
  codeChannel: CodeChannel.sms,
  channels: [
    ChannelInfo(channel: CodeChannel.sms, isLinked: true),
    ChannelInfo(channel: CodeChannel.telegram, isLinked: true),
    ChannelInfo(channel: CodeChannel.email, isLinked: false),
  ],
  topics: [
    NotificationTopic(
      id: 'orders',
      title: 'Заказы и посылки',
      isRequired: true,
      isOn: true,
    ),
    NotificationTopic(
      id: 'promo',
      title: 'Акции и скидки',
      isRequired: false,
      isOn: true,
    ),
  ],
);

const blockedCheck = DeletionCheck(
  activeOrders: 2,
  debt: 52,
  balance: 120,
  canDelete: false,
  blockReason: 'Сначала погасите долг — потом аккаунт можно удалить',
);

const allowedCheck = DeletionCheck(
  activeOrders: 0,
  debt: 0,
  balance: 0,
  canDelete: true,
);
