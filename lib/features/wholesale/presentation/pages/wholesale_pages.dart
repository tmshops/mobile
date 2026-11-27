import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/auth/auth_cubit.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../domain/entities/wholesale.dart';
import '../bloc/wholesale_application_cubit.dart';
import '../bloc/wholesale_documents_cubit.dart';
import '../widgets/become_wholesale_view.dart';
import '../widgets/wholesale_documents_view.dart';

/// «Стать оптовиком» (TZ §5.19): the form, then the application status.
class BecomeWholesalePage extends StatelessWidget {
  const BecomeWholesalePage({required this.onOpenCatalog, super.key});

  final VoidCallback onOpenCatalog;

  static WholesaleForm? _prefill(BuildContext context) =>
      switch (context.read<AuthCubit>().state) {
        AuthSignedIn(:final profile) => WholesaleForm(
          name: profile.fullName,
          phone: profile.phone,
        ),
        _ => null,
      };

  @override
  Widget build(BuildContext context) {
    String lang(BuildContext context) =>
        context.read<LocaleCubit>().state.languageCode;
    return BlocProvider(
      create: (context) =>
          getIt<WholesaleApplicationCubit>()
            ..load(lang(context), prefill: _prefill(context)),
      child: Builder(
        builder: (context) => BecomeWholesaleView(
          onReload: () =>
              context.read<WholesaleApplicationCubit>().load(lang(context)),
          onOpenCatalog: onOpenCatalog,
        ),
      ),
    );
  }
}

/// Invoices and waybills of a wholesale customer (TZ §5.19).
class WholesaleDocumentsPage extends StatelessWidget {
  const WholesaleDocumentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    String lang(BuildContext context) =>
        context.read<LocaleCubit>().state.languageCode;
    return BlocProvider(
      create: (context) =>
          getIt<WholesaleDocumentsCubit>()..load(lang(context)),
      child: Builder(
        builder: (context) => WholesaleDocumentsView(
          onReload: () =>
              context.read<WholesaleDocumentsCubit>().load(lang(context)),
        ),
      ),
    );
  }
}
