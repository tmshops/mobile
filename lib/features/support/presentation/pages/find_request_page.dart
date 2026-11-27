import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../domain/entities/chat.dart';
import '../bloc/find_request_cubit.dart';
import '../widgets/find_request_view.dart';

/// «Найдите мне товар» (TZ §5.17): the request goes into the support chat.
class FindRequestPage extends StatelessWidget {
  const FindRequestPage({
    required this.onSent,
    this.description = '',
    this.photo,
    super.key,
  });

  /// Prefilled from a search that found nothing.
  final String description;

  /// Prefilled from a photo search.
  final String? photo;

  /// The request card, to show in the chat.
  final ValueChanged<ChatMessage> onSent;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<FindRequestCubit>()
            ..start(description: description, photo: photo),
      child: FindRequestView(initialDescription: description, onSent: onSent),
    );
  }
}
