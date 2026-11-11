import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../widgets/kit_buttons_section.dart';
import '../widgets/kit_feedback_section.dart';
import '../widgets/kit_inputs_section.dart';
import '../widgets/kit_navigation_section.dart';
import '../widgets/kit_product_section.dart';
import '../widgets/kit_samples.dart';
import '../widgets/kit_selection_section.dart';
import '../widgets/kit_status_section.dart';
import '../widgets/kit_tokens_section.dart';

/// Dev-only catalogue of the design system and component kit
/// (UI_DESIGN §4–5). The app-bar toggles switch language and text scale for
/// this screen only, to check Turkmen lengths at 1.3×.
class KitPage extends StatefulWidget {
  const KitPage({super.key});

  @override
  State<KitPage> createState() => _KitPageState();
}

class _KitPageState extends State<KitPage> {
  static const _largeScale = 1.3;

  Locale _locale = AppLocales.ru;
  bool _isLargeText = false;

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    return Localizations.override(
      context: context,
      locale: _locale,
      child: MediaQuery(
        data: media.copyWith(
          textScaler: TextScaler.linear(_isLargeText ? _largeScale : 1),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Kit'),
            actions: [
              _Toggle(
                label: _locale.languageCode.toUpperCase(),
                onTap: () => setState(
                  () => _locale = _locale == AppLocales.ru
                      ? AppLocales.tk
                      : AppLocales.ru,
                ),
              ),
              _Toggle(
                label: _isLargeText ? '1.3×' : '1.0×',
                onTap: () => setState(() => _isLargeText = !_isLargeText),
              ),
              const SizedBox(width: AppSpacing.x8),
            ],
          ),
          body: const SingleChildScrollView(
            padding: EdgeInsets.only(bottom: AppSpacing.x48),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                KitTokensSection(),
                KitButtonsSection(),
                KitProductSection(),
                KitSelectionSection(),
                KitInputsSection(),
                KitStatusSection(),
                KitFeedbackSection(),
                KitNavigationSection(),
              ],
            ),
          ),
          bottomNavigationBar: const _KitActionBar(),
        ),
      ),
    );
  }
}

class _KitActionBar extends StatelessWidget {
  const _KitActionBar();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return StickyActionBar(
      above: TertiaryButton(
        label: KitSamples.of(context).quickOrder,
        onPressed: () {},
      ),
      secondary: SecondaryButton(label: l10n.actionAddToCart, onPressed: () {}),
      primary: PrimaryButton(label: l10n.actionBuyNow, onPressed: () {}),
    );
  }
}

class _Toggle extends StatelessWidget {
  const _Toggle({required this.label, required this.onTap});

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: AppSpacing.x8),
      child: AppChip(label: label, isSelected: true, onTap: onTap),
    );
  }
}
