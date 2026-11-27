import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/product/domain/product_summary.dart';
import '../../domain/entities/chat.dart';
import '../bloc/support_chat_cubit.dart';
import '../widgets/chat_sheets.dart';
import '../widgets/support_chat_view.dart';

/// Support chat (TZ §5.17, UI_DESIGN §7.22).
class SupportChatPage extends StatelessWidget {
  const SupportChatPage({
    required this.contacts,
    required this.onOpenProduct,
    required this.onOpenOrder,
    required this.onFindForMe,
    this.aboutOrder,
    super.key,
  });

  /// Opened from an order: it is attached to the conversation.
  final String? aboutOrder;

  /// Phone, Telegram and WhatsApp from the config, for «Другие способы».
  final SupportChannels contacts;
  final ValueChanged<ProductSummary> onOpenProduct;
  final ValueChanged<String> onOpenOrder;

  /// Opens the «Найдите мне товар» form; completes with the request card
  /// once sent, `null` when the customer left the form.
  final Future<ChatMessage?> Function() onFindForMe;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SupportChatCubit>()
        ..load(
          context.read<LocaleCubit>().state.languageCode,
          aboutOrder: aboutOrder,
        ),
      child: SupportChatView(
        contacts: contacts,
        onOpenProduct: onOpenProduct,
        onOpenOrder: onOpenOrder,
        onFindForMe: onFindForMe,
      ),
    );
  }
}
