import 'package:flutter/material.dart';

import '../../../../core/theme/theme.dart';
import 'kit_section.dart';

/// Colours, type scale and radii: the part to tune first.
class KitTokensSection extends StatelessWidget {
  const KitTokensSection({super.key});

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final swatches = <(String, Color)>[
      ('primary', c.primary),
      ('primaryPressed', c.primaryPressed),
      ('primarySoft', c.primarySoft),
      ('accent', c.accent),
      ('ink', c.ink),
      ('inkSecondary', c.inkSecondary),
      ('inkTertiary', c.inkTertiary),
      ('graphite', c.graphite),
      ('background', c.background),
      ('surface', c.surface),
      ('divider', c.divider),
      ('success', c.success),
      ('warning', c.warning),
      ('danger', c.danger),
      ('info', c.info),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        KitSection(
          title: 'Colours',
          children: [
            Wrap(
              spacing: AppSpacing.x8,
              runSpacing: AppSpacing.x12,
              children: [
                for (final (name, color) in swatches)
                  _Swatch(name: name, color: color),
              ],
            ),
          ],
        ),
        const KitSection(title: 'Typography', children: [_TypeScale()]),
        const KitSection(title: 'Radii', children: [_Radii()]),
      ],
    );
  }
}

class _Swatch extends StatelessWidget {
  const _Swatch({required this.name, required this.color});

  final String name;
  final Color color;

  static const double _size = 64;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final hex = color.toARGB32().toRadixString(16).substring(2).toUpperCase();
    return SizedBox(
      width: _size + AppSpacing.x12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: _size,
            decoration: BoxDecoration(
              color: color,
              borderRadius: AppRadii.imageBorder,
              border: Border.all(color: c.divider),
            ),
          ),
          const SizedBox(height: AppSpacing.x4),
          Text(
            name,
            style: context.text.micro,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            '#$hex',
            style: context.text.micro.copyWith(color: c.inkSecondary),
          ),
        ],
      ),
    );
  }
}

class _TypeScale extends StatelessWidget {
  const _TypeScale();

  /// Every Turkmen letter plus Cyrillic, to spot missing glyphs.
  static const _glyphs = 'Ää Çç Ňň Öö Şş Üü Ýý Žž · Ёё Щщ Ъъ';

  @override
  Widget build(BuildContext context) {
    final t = context.text;
    final styles = <(String, TextStyle)>[
      ('display 28/34', t.display),
      ('h1 22/28', t.h1),
      ('h2 18/24', t.h2),
      ('h3 16/22', t.h3),
      ('body 15/22', t.body),
      ('bodyStrong 15/22', t.bodyStrong),
      ('caption 13/18', t.caption),
      ('micro 11/14', t.micro),
      ('price 17/22', t.price),
      ('priceLarge 26/32', t.priceLarge),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final (name, style) in styles) ...[
          KitLabel(name),
          Text(name.startsWith('price') ? '1 216 TMT' : _glyphs, style: style),
          const SizedBox(height: AppSpacing.x8),
        ],
      ],
    );
  }
}

class _Radii extends StatelessWidget {
  const _Radii();

  static const double _box = 64;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final radii = <(String, double)>[
      ('image/input 12', AppRadii.image),
      ('button 14', AppRadii.button),
      ('card 16', AppRadii.card),
      ('sheet 24', AppRadii.sheet),
    ];
    return Wrap(
      spacing: AppSpacing.x12,
      runSpacing: AppSpacing.x12,
      children: [
        for (final (name, r) in radii)
          Column(
            children: [
              Container(
                width: _box,
                height: _box,
                decoration: BoxDecoration(
                  color: c.primarySoft,
                  border: Border.all(color: c.primary),
                  borderRadius: BorderRadius.circular(r),
                ),
              ),
              const SizedBox(height: AppSpacing.x4),
              KitLabel(name),
            ],
          ),
      ],
    );
  }
}
