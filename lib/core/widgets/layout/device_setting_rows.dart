import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../l10n/l10n.dart';
import '../../locale/locale_cubit.dart';
import '../../region/region_cubit.dart';
import '../../region/region_picker_sheet.dart';
import '../../theme/theme.dart';
import '../selection/segmented_control.dart';
import 'menu_group.dart';

/// «Язык» with RU / TK segments; switches without a restart (TZ §5.19).
/// Expects [LocaleCubit].
class LanguageMenuRow extends StatelessWidget {
  const LanguageMenuRow({super.key});

  static const double _width = 120;

  @override
  Widget build(BuildContext context) {
    final locale = context.watch<LocaleCubit>().state;
    return MenuRow(
      icon: AppIcons.translate,
      title: context.l10n.profileLanguage,
      onTap: null,
      trailing: SizedBox(
        width: _width,
        child: AppSegmentedControl<Locale>(
          segments: const [(AppLocales.ru, 'RU'), (AppLocales.tk, 'TK')],
          selected: locale,
          onChanged: context.read<LocaleCubit>().select,
        ),
      ),
    );
  }
}

/// «Регион» with the chosen name; opens the picker. Expects [RegionCubit].
class RegionMenuRow extends StatelessWidget {
  const RegionMenuRow({super.key});

  @override
  Widget build(BuildContext context) {
    final region = context.watch<RegionCubit>().state;
    return MenuRow(
      icon: AppIcons.mapPin,
      title: context.l10n.regionTitle,
      trailing: Flexible(
        child: Text(
          region.selectedName ?? '',
          overflow: TextOverflow.ellipsis,
          style: context.text.body.copyWith(color: context.colors.inkSecondary),
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
    );
  }
}
