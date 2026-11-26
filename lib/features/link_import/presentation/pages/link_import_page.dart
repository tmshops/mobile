import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../bloc/link_import_cubit.dart';
import '../widgets/link_import_view.dart';

/// «Товар по ссылке» (TZ §5.9).
class LinkImportPage extends StatelessWidget {
  const LinkImportPage({
    required this.link,
    required this.onCancel,
    required this.onDone,
    required this.onSupport,
    super.key,
  });

  final String link;
  final VoidCallback onCancel;

  /// The product is ready: open it in place of this screen.
  final ValueChanged<String> onDone;
  final VoidCallback onSupport;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LinkImportCubit>()..start(link),
      child: Builder(
        builder: (context) => LinkImportView(
          link: link,
          onRetry: () => context.read<LinkImportCubit>().start(link),
          onCancel: onCancel,
          onDone: onDone,
          onSupport: onSupport,
        ),
      ),
    );
  }
}
