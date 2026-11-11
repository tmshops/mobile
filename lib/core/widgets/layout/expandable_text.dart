import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';
import '../../theme/theme.dart';

/// Text clipped to [maxLines] with «Ещё» / «Свернуть». The button only
/// shows when the text really overflows at the current width and scale.
class ExpandableText extends StatefulWidget {
  const ExpandableText(
    this.text, {
    required this.maxLines,
    this.style,
    super.key,
  });

  final String text;
  final int maxLines;
  final TextStyle? style;

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final style = widget.style ?? context.text.body;
    return LayoutBuilder(
      builder: (context, constraints) {
        final painter = TextPainter(
          text: TextSpan(text: widget.text, style: style),
          maxLines: widget.maxLines,
          textDirection: Directionality.of(context),
          textScaler: MediaQuery.textScalerOf(context),
        )..layout(maxWidth: constraints.maxWidth);
        final overflows = painter.didExceedMaxLines;
        painter.dispose();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedSize(
              duration: AppMotion.of(context, AppMotion.base),
              curve: AppMotion.enter,
              alignment: Alignment.topCenter,
              child: Text(
                widget.text,
                style: style,
                maxLines: _isExpanded ? null : widget.maxLines,
                overflow: _isExpanded ? null : TextOverflow.ellipsis,
              ),
            ),
            if (overflows)
              GestureDetector(
                onTap: () => setState(() => _isExpanded = !_isExpanded),
                behavior: HitTestBehavior.opaque,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: AppSpacing.x4),
                  child: Text(
                    _isExpanded
                        ? context.l10n.actionShowLess
                        : context.l10n.actionShowMore,
                    style: context.text.bodyStrong.copyWith(
                      color: context.colors.primaryPressed,
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
