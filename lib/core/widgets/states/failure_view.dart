import 'package:flutter/material.dart';

import '../../error/failures.dart';
import '../../l10n/l10n.dart';
import '../../theme/theme.dart';
import 'state_views.dart';

/// Full-screen state for a [Failure]: offline or error, with «Повторить».
/// Server messages are already localised; anything else gets generic text.
class FailureView extends StatelessWidget {
  const FailureView({required this.failure, required this.onRetry, super.key});

  final Failure failure;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return switch (failure) {
      NetworkFailure() => ErrorState(
        icon: AppIcons.offline,
        title: l10n.offlineTitle,
        message: l10n.offlineMessage,
        onRetry: onRetry,
      ),
      ServerFailure(:final message) => ErrorState(
        message: message,
        onRetry: onRetry,
      ),
      CacheFailure() ||
      ValidationFailure() ||
      UnexpectedFailure() => ErrorState(onRetry: onRetry),
    };
  }
}
