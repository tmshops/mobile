import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

import '../../theme/theme.dart';

/// HTML from the server (product descriptions, information pages) drawn
/// with the app's tokens: `body` text, h2 subheads and tables styled like
/// the specs table (zebra rows).
///
/// Only [allowedTags] are drawn; anything else (script, iframe, forms,
/// embeds) renders as nothing, so server HTML can never run code.
class ServerHtml extends StatelessWidget {
  const ServerHtml({
    required this.html,
    this.isArticle = false,
    this.onTapLink,
    super.key,
  });

  final String html;

  /// Article layout (UI_DESIGN §7.25): roomier 1.5 line height.
  final bool isArticle;

  /// A tapped `<a href>`; links do nothing without it.
  final ValueChanged<String>? onTapLink;

  static const allowedTags = {
    'p', 'br', 'b', 'strong', 'i', 'em', 'u', 'span', 'div', //
    'h1', 'h2', 'h3', 'h4', 'ul', 'ol', 'li', 'img', 'table', 'thead',
    'tbody', 'tr', 'th', 'td', 'blockquote', 'hr', 'body', 'html', 'a',
    'small', 'sup', 'sub', 's', 'code', 'pre', 'figure', 'figcaption',
    'section', 'article',
  };

  /// Line height of article text, as a multiple of the font size.
  static const double articleLineHeight = 1.5;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final t = context.text;
    final tap = onTapLink;
    return HtmlWidget(
      html,
      textStyle: isArticle
          ? t.body.copyWith(height: articleLineHeight)
          : t.body,
      customWidgetBuilder: (element) => allowedTags.contains(element.localName)
          ? null
          : const SizedBox.shrink(),
      customStylesBuilder: (element) => _styles(
        element.localName,
        // Position among sibling rows, for zebra colours.
        element.parent?.children.indexOf(element) ?? 0,
        c,
        t,
      ),
      onTapUrl: (url) {
        if (tap == null) return false;
        tap(url);
        return true;
      },
    );
  }

  static Map<String, String>? _styles(
    String? name,
    int index,
    AppColors c,
    AppTypography t,
  ) {
    String px(double v) => '${v.toStringAsFixed(0)}px';
    String weight(TextStyle s) => '${s.fontWeight?.value ?? 400}';
    return switch (name) {
      'h1' || 'h2' => {
        'font-size': px(t.h2.fontSize ?? 0),
        'font-weight': weight(t.h2),
        'margin': '${px(AppSpacing.x24)} 0 ${px(AppSpacing.x8)} 0',
      },
      'h3' || 'h4' => {
        'font-size': px(t.h3.fontSize ?? 0),
        'font-weight': weight(t.h3),
        'margin': '${px(AppSpacing.x16)} 0 ${px(AppSpacing.x4)} 0',
      },
      'table' => {'border-collapse': 'collapse', 'width': '100%'},
      'tr' => {
        'background-color': _hex(index.isEven ? c.surface : c.background),
      },
      'th' || 'td' => {
        'padding': '${px(AppSpacing.x8)} ${px(AppSpacing.x12)}',
        'vertical-align': 'top',
        'text-align': 'left',
        if (name == 'th') 'font-weight': weight(t.bodyStrong),
      },
      'a' => {'color': _hex(c.primaryPressed)},
      _ => null,
    };
  }

  static String _hex(Color color) =>
      '#${(color.toARGB32() & 0xFFFFFF).toRadixString(16).padLeft(6, '0')}';
}
