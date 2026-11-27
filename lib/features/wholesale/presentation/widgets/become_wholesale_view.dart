import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/wholesale.dart';
import '../bloc/wholesale_application_cubit.dart';

/// «Стать оптовиком» (UI_DESIGN §7.23). Expects [WholesaleApplicationCubit].
class BecomeWholesaleView extends StatelessWidget {
  const BecomeWholesaleView({
    required this.onReload,
    required this.onOpenCatalog,
    super.key,
  });

  final VoidCallback onReload;
  final VoidCallback onOpenCatalog;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<WholesaleApplicationCubit, WholesaleApplicationState>(
      builder: (context, state) {
        final cubit = context.read<WholesaleApplicationCubit>();
        final application = state.application;
        final failure = state.loadFailure;
        return Scaffold(
          appBar: AppBar(title: Text(l10n.profileBecomeWholesale)),
          body: switch (state) {
            WholesaleApplicationState(isLoading: true) => const SkeletonList(
              itemCount: 3,
            ),
            _ when failure != null => Center(
              child: SingleChildScrollView(
                child: FailureView(failure: failure, onRetry: onReload),
              ),
            ),
            _ when state.showsForm => const _FormBody(),
            _ when application != null => _StatusBody(
              application: application,
              onRefresh: onReload,
              onReapply: cubit.reapply,
              onOpenCatalog: onOpenCatalog,
            ),
            _ => const SizedBox.shrink(),
          },
          bottomNavigationBar: !state.showsForm || state.isLoading
              ? null
              : StickyActionBar(
                  above: state.form.isComplete
                      ? null
                      : Text(
                          l10n.wholesaleFillAll,
                          textAlign: TextAlign.center,
                          style: context.text.caption.copyWith(
                            color: context.colors.inkSecondary,
                          ),
                        ),
                  primary: PrimaryButton(
                    label: l10n.wholesaleSend,
                    isLoading: state.isSending,
                    onPressed: state.canSend
                        ? () => cubit.submit(
                            context.read<LocaleCubit>().state.languageCode,
                          )
                        : null,
                  ),
                ),
        );
      },
    );
  }
}

/// Benefits on top, then the form.
class _FormBody extends StatefulWidget {
  const _FormBody();

  @override
  State<_FormBody> createState() => _FormBodyState();
}

class _FormBodyState extends State<_FormBody> {
  late final WholesaleApplicationCubit _cubit;
  late final TextEditingController _name;
  late final TextEditingController _phone;
  late final TextEditingController _company;
  late final TextEditingController _city;

  static const _operatorDigits = 2;

  @override
  void initState() {
    super.initState();
    _cubit = context.read<WholesaleApplicationCubit>();
    final form = _cubit.state.form;
    final phone = form.phone;
    _name = TextEditingController(text: form.name);
    // PhoneField keeps the «65 123456» form.
    _phone = TextEditingController(
      text: phone.length == WholesaleForm.phoneDigits
          ? '${phone.substring(0, _operatorDigits)} '
                '${phone.substring(_operatorDigits)}'
          : phone,
    );
    _company = TextEditingController(text: form.company);
    _city = TextEditingController(text: form.city);
  }

  @override
  void dispose() {
    for (final c in [_name, _phone, _company, _city]) {
      c.dispose();
    }
    super.dispose();
  }

  void _change(WholesaleForm Function(WholesaleForm) edit) =>
      _cubit.changed(edit(_cubit.state.form));

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final failure = context.select<WholesaleApplicationCubit, Failure?>(
      (cubit) => cubit.state.sendFailure,
    );
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.screen),
      children: [
        const _Benefits(),
        const SizedBox(height: AppSpacing.section),
        Text(l10n.wholesaleFormTitle, style: context.text.h3),
        const SizedBox(height: AppSpacing.x12),
        AppTextField(
          controller: _name,
          label: l10n.wholesaleName,
          textInputAction: TextInputAction.next,
          autofillHints: const [AutofillHints.name],
          onChanged: (v) => _change((f) => f.copyWith(name: v)),
        ),
        const SizedBox(height: AppSpacing.x16),
        PhoneField(
          controller: _phone,
          onChanged: (v) => _change((f) => f.copyWith(phone: v)),
        ),
        const SizedBox(height: AppSpacing.x16),
        AppTextField(
          controller: _company,
          label: l10n.wholesaleCompany,
          textInputAction: TextInputAction.next,
          autofillHints: const [AutofillHints.organizationName],
          onChanged: (v) => _change((f) => f.copyWith(company: v)),
        ),
        const SizedBox(height: AppSpacing.x16),
        AppTextField(
          controller: _city,
          label: l10n.wholesaleCity,
          textInputAction: TextInputAction.done,
          autofillHints: const [AutofillHints.addressCity],
          onChanged: (v) => _change((f) => f.copyWith(city: v)),
        ),
        if (failure != null) ...[
          const SizedBox(height: AppSpacing.x12),
          Text(
            failure is ValidationFailure
                ? l10n.wholesaleFillAll
                : actionFailureText(l10n, failure),
            style: context.text.caption.copyWith(color: c.danger),
          ),
        ],
      ],
    );
  }
}

class _Benefits extends StatelessWidget {
  const _Benefits();

  static const double _badge = 44;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    return ContentCard(
      color: c.surface,
      child: Column(
        children: [
          for (final (icon, title, text) in [
            (
              AppIcons.coins,
              l10n.wholesaleBenefitPrices,
              l10n.wholesaleBenefitPricesText,
            ),
            (
              AppIcons.document,
              l10n.wholesaleBenefitDocs,
              l10n.wholesaleBenefitDocsText,
            ),
            (
              AppIcons.wholesale,
              l10n.wholesaleBenefitTerms,
              l10n.wholesaleBenefitTermsText,
            ),
          ])
            Padding(
              padding: const EdgeInsets.symmetric(vertical: AppSpacing.x8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: _badge / 2,
                    backgroundColor: c.primarySoft,
                    child: Icon(icon, color: c.primary),
                  ),
                  const SizedBox(width: AppSpacing.x12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title, style: context.text.bodyStrong),
                        const SizedBox(height: AppSpacing.x2),
                        Text(
                          text,
                          style: context.text.caption.copyWith(
                            color: c.inkSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

/// На рассмотрении / Одобрена / Отклонена.
class _StatusBody extends StatelessWidget {
  const _StatusBody({
    required this.application,
    required this.onRefresh,
    required this.onReapply,
    required this.onOpenCatalog,
  });

  final WholesaleApplication application;
  final VoidCallback onRefresh;
  final VoidCallback onReapply;
  final VoidCallback onOpenCatalog;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final (icon, tone, title, text, action, onAction) = switch (application) {
      WholesalePending() => (
        AppIcons.clock,
        StatusTone.info,
        l10n.wholesalePendingTitle,
        l10n.wholesalePendingText,
        l10n.wholesaleRefresh,
        onRefresh,
      ),
      WholesaleApproved(:final group) => (
        AppIcons.checkCircle,
        StatusTone.success,
        l10n.wholesaleApprovedTitle,
        l10n.wholesaleApprovedText(group),
        l10n.wholesaleToCatalog,
        onOpenCatalog,
      ),
      WholesaleRejected(:final reason) => (
        AppIcons.cancelled,
        StatusTone.danger,
        l10n.wholesaleRejectedTitle,
        reason,
        l10n.wholesaleReapply,
        onReapply,
      ),
      WholesaleNone() => (
        AppIcons.wholesale,
        StatusTone.neutral,
        '',
        '',
        l10n.wholesaleSend,
        onReapply,
      ),
    };
    return RefreshIndicator(
      onRefresh: () async => onRefresh(),
      child: ListView(
        padding: const EdgeInsets.all(AppSpacing.screen),
        children: [
          const SizedBox(height: AppSpacing.x24),
          Center(
            child: CircleAvatar(
              radius: AppSizes.touchTarget,
              backgroundColor: tone.tint(c),
              child: Icon(
                icon,
                size: AppSizes.touchTarget,
                color: tone.color(c),
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.x16),
          Semantics(
            liveRegion: true,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: context.text.h2,
            ),
          ),
          const SizedBox(height: AppSpacing.x8),
          Text(
            text,
            textAlign: TextAlign.center,
            style: context.text.body.copyWith(color: c.inkSecondary),
          ),
          const SizedBox(height: AppSpacing.x24),
          PrimaryButton(label: action, onPressed: onAction),
        ],
      ),
    );
  }
}
