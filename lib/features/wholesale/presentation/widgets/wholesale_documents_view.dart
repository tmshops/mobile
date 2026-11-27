import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/app_dates.dart';
import '../../../../core/utils/external_links.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/wholesale.dart';
import '../bloc/wholesale_documents_cubit.dart';

/// «Опт: документы» (UI_DESIGN §7.23): per order, «Счёт №…» and
/// «Накладная №…» with «Скачать» / «Поделиться».
/// Expects [WholesaleDocumentsCubit].
class WholesaleDocumentsView extends StatelessWidget {
  const WholesaleDocumentsView({required this.onReload, super.key});

  final Future<void> Function() onReload;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    return Scaffold(
      backgroundColor: c.surface,
      appBar: AppBar(
        backgroundColor: c.surface,
        title: Text(l10n.profileWholesaleDocs),
      ),
      body: BlocBuilder<WholesaleDocumentsCubit, WholesaleDocumentsState>(
        builder: (context, state) => switch (state) {
          DocumentsLoading() => const SkeletonList(),
          DocumentsFailure(:final failure) => Center(
            child: SingleChildScrollView(
              child: FailureView(failure: failure, onRetry: onReload),
            ),
          ),
          DocumentsLoaded(orders: []) => Center(
            child: EmptyState(
              icon: AppIcons.document,
              title: l10n.wholesaleDocsEmpty,
              message: l10n.wholesaleDocsEmptyText,
            ),
          ),
          DocumentsLoaded(:final orders) => RefreshIndicator(
            onRefresh: onReload,
            child: ListView(
              padding: const EdgeInsets.only(bottom: AppSpacing.section),
              children: [
                for (final order in orders) ...[
                  GroupHeader(
                    '${l10n.chatOrder(order.orderNumber)} · '
                    '${AppDates.dayMonth(l10n, order.createdAt)}',
                  ),
                  MenuGroup(
                    children: [
                      for (final doc in order.documents)
                        _DocumentRow(document: doc),
                    ],
                  ),
                ],
              ],
            ),
          ),
        },
      ),
    );
  }
}

class _DocumentRow extends StatelessWidget {
  const _DocumentRow({required this.document});

  final WholesaleDocument document;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final title = switch (document.kind) {
      WholesaleDocumentKind.invoice => l10n.wholesaleInvoice(document.number),
      WholesaleDocumentKind.waybill => l10n.wholesaleWaybill(document.number),
    };
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.screen,
        vertical: AppSpacing.x8,
      ),
      child: Row(
        children: [
          Icon(AppIcons.filePdf, color: c.danger),
          const SizedBox(width: AppSpacing.x12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: context.text.body),
                Text(
                  AppDates.dayMonth(l10n, document.date),
                  style: context.text.caption.copyWith(color: c.inkSecondary),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(AppIcons.share),
            tooltip: l10n.actionShare,
            onPressed: () => SharePlus.instance.share(
              ShareParams(uri: Uri.parse(document.url), title: title),
            ),
          ),
          TertiaryButton(
            label: l10n.wholesaleDownload,
            onPressed: () => ExternalLinks.url(context, document.url),
          ),
        ],
      ),
    );
  }
}
