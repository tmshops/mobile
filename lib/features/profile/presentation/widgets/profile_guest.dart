import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/region/region_cubit.dart';
import '../../../../core/region/region_picker_sheet.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import 'profile_menu.dart';

/// «Войдите, чтобы видеть заказы» with an illustration and «Войти».
class GuestSignInCard extends StatelessWidget {
  const GuestSignInCard({required this.onLogin, super.key});

  final VoidCallback onLogin;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.screen,
        AppSpacing.x8,
        AppSpacing.screen,
        AppSpacing.section,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: c.primarySoft,
          borderRadius: AppRadii.cardBorder,
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.x20),
          child: Column(
            children: [
              const SpotIllustration(icon: AppIcons.order),
              const SizedBox(height: AppSpacing.x16),
              Text(
                l10n.profileGuestTitle,
                textAlign: TextAlign.center,
                style: context.text.h2,
              ),
              const SizedBox(height: AppSpacing.x8),
              Text(
                l10n.profileGuestText,
                textAlign: TextAlign.center,
                style: context.text.body.copyWith(color: c.inkSecondary),
              ),
              const SizedBox(height: AppSpacing.x20),
              PrimaryButton(label: l10n.profileSignIn, onPressed: onLogin),
            ],
          ),
        ),
      ),
    );
  }
}

/// A guest sees language, region and information (TZ §5.14).
class GuestMenu extends StatelessWidget {
  const GuestMenu({required this.onComingSoon, super.key});

  final VoidCallback onComingSoon;

  static const double _languageWidth = 120;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final locale = context.watch<LocaleCubit>().state;
    final region = context.watch<RegionCubit>().state;
    return MenuGroup(
      children: [
        MenuRow(
          icon: AppIcons.translate,
          title: l10n.profileLanguage,
          onTap: null,
          trailing: SizedBox(
            width: _languageWidth,
            child: AppSegmentedControl<Locale>(
              segments: const [(AppLocales.ru, 'RU'), (AppLocales.tk, 'TK')],
              selected: locale,
              onChanged: context.read<LocaleCubit>().select,
            ),
          ),
        ),
        MenuRow(
          icon: AppIcons.mapPin,
          title: l10n.regionTitle,
          trailing: Flexible(
            child: Text(
              region.selectedName ?? '',
              overflow: TextOverflow.ellipsis,
              style: context.text.body.copyWith(
                color: context.colors.inkSecondary,
              ),
            ),
          ),
          onTap: () async {
            final cubit = context.read<RegionCubit>();
            final id = await showRegionPicker(
              context,
              regions: region.regions,
              selectedId: region.selectedId,
            );
            if (id != null) await cubit.select(id);
          },
        ),
        MenuRow(
          icon: AppIcons.info,
          title: l10n.profileInfo,
          onTap: onComingSoon,
        ),
      ],
    );
  }
}
