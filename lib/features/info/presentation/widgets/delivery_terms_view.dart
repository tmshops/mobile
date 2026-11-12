import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/money_format.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/info.dart';
import '../bloc/info_cubits.dart';
import 'info_common.dart';

/// «Доставка и оплата» (UI_DESIGN §7.25): delivery types as
/// [DeliveryOptionCard]s, the region tariff table and the payment rules.
/// Expects [DeliveryTermsCubit].
class DeliveryTermsView extends StatelessWidget {
  const DeliveryTermsView({this.onTapLink, super.key});

  final ValueChanged<String>? onTapLink;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DeliveryTermsCubit>();
    return Scaffold(
      appBar: AppBar(title: Text(InfoTopic.delivery.title(context.l10n))),
      body: BlocBuilder<DeliveryTermsCubit, InfoState<DeliveryTerms>>(
        builder: (context, state) => InfoBody<DeliveryTerms>(
          isLoading: state.isLoading,
          data: state.data,
          failure: state.failure,
          onRefresh: () =>
              cubit.load(context.read<LocaleCubit>().state.languageCode),
          builder: (context, terms) =>
              _DeliveryTermsList(terms: terms, onTapLink: onTapLink),
        ),
      ),
    );
  }
}

class _DeliveryTermsList extends StatelessWidget {
  const _DeliveryTermsList({required this.terms, required this.onTapLink});

  final DeliveryTerms terms;
  final ValueChanged<String>? onTapLink;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ListView(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.screen,
        AppSpacing.x8,
        AppSpacing.screen,
        AppSpacing.section,
      ),
      children: [
        _Heading(l10n.infoDeliveryTypes),
        for (final type in terms.types)
          Padding(
            padding: const EdgeInsets.only(bottom: AppSpacing.x8),
            child: DeliveryOptionCard(
              icon: switch (type.kind) {
                DeliveryKind.express => AppIcons.deliveryExpress,
                DeliveryKind.air => AppIcons.deliveryAir,
                DeliveryKind.truck ||
                DeliveryKind.other => AppIcons.deliveryTruck,
              },
              title: type.name,
              term: l10n.infoDeliveryTerm(type.term, type.minWeight),
              priceLabel: switch (terms.lowestPerKg(type.code)) {
                null => '',
                final price => l10n.infoPerKgFrom(MoneyFormat.tmt(l10n, price)),
              },
              isSelected: false,
              onTap: null,
            ),
          ),
        const _WeighingNote(),
        const SizedBox(height: AppSpacing.section),
        _Heading(l10n.infoTariffs),
        Text(
          l10n.infoTariffsCaption,
          style: context.text.caption.copyWith(
            color: context.colors.inkSecondary,
          ),
        ),
        const SizedBox(height: AppSpacing.x12),
        TariffTable(types: terms.types, tariffs: terms.tariffs),
        ServerHtml(html: terms.html, isArticle: true, onTapLink: onTapLink),
      ],
    );
  }
}

class _Heading extends StatelessWidget {
  const _Heading(this.text);

  final String text;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: AppSpacing.x12),
    child: Semantics(header: true, child: Text(text, style: context.text.h2)),
  );
}

/// «Уточнится после взвешивания» explained once, under the cards.
class _WeighingNote extends StatelessWidget {
  const _WeighingNote();

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: c.primarySoft,
        borderRadius: AppRadii.cardBorder,
      ),
      child: Padding(
        padding: AppSpacing.cardPadding,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(AppIcons.info, size: AppSizes.iconDense, color: c.primary),
            const SizedBox(width: AppSpacing.x12),
            Expanded(
              child: Text(
                context.l10n.deliveryAfterWeighingInfo,
                style: context.text.caption.copyWith(color: c.ink),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Region × delivery type, TMT per kg, with zebra rows like the specs
/// table. A type not delivered to a region shows a dash.
class TariffTable extends StatelessWidget {
  const TariffTable({required this.types, required this.tariffs, super.key});

  final List<DeliveryTypeTerm> types;
  final List<RegionTariff> tariffs;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final t = context.text;
    final l10n = context.l10n;
    final numbers = t.body.copyWith(fontFeatures: AppTypography.tabularFigures);
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.section),
      child: ClipRRect(
        borderRadius: AppRadii.imageBorder,
        child: Table(
          columnWidths: {
            0: const FlexColumnWidth(),
            for (var i = 1; i <= types.length; i++)
              i: const IntrinsicColumnWidth(),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(
              decoration: BoxDecoration(color: c.divider),
              children: [
                _Cell(l10n.infoTariffRegion, t.caption, isNumber: false),
                for (final type in types) _Cell(type.name, t.caption),
              ],
            ),
            for (final (i, row) in tariffs.indexed)
              TableRow(
                decoration: BoxDecoration(
                  color: i.isEven ? c.surface : c.background,
                ),
                children: [
                  _Cell(row.region, t.body, isNumber: false),
                  for (final type in types)
                    switch (row.perKg[type.code]) {
                      null => Semantics(
                        label: l10n.infoTariffNone,
                        child: ExcludeSemantics(
                          child: _Cell(l10n.infoTariffDash, numbers),
                        ),
                      ),
                      final price => _Cell(MoneyFormat.group(price), numbers),
                    },
                ],
              ),
          ],
        ),
      ),
    );
  }
}

class _Cell extends StatelessWidget {
  const _Cell(this.text, this.style, {this.isNumber = true});

  final String text;
  final TextStyle style;
  final bool isNumber;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(AppSpacing.x8),
    child: Text(
      text,
      style: style,
      textAlign: isNumber ? TextAlign.end : TextAlign.start,
    ),
  );
}
