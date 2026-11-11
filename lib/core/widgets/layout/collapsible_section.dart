import 'package:flutter/material.dart';

import '../../theme/theme.dart';

/// Group with a tappable header that folds its content, e.g. one filter
/// group. [summary] tells what is picked while the group is folded.
class CollapsibleSection extends StatefulWidget {
  const CollapsibleSection({
    required this.title,
    required this.child,
    this.summary,
    this.initiallyExpanded = true,
    super.key,
  });

  final String title;
  final String? summary;
  final Widget child;
  final bool initiallyExpanded;

  @override
  State<CollapsibleSection> createState() => _CollapsibleSectionState();
}

class _CollapsibleSectionState extends State<CollapsibleSection> {
  late bool _isExpanded = widget.initiallyExpanded;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final summary = widget.summary;
    final duration = AppMotion.of(context, AppMotion.base);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Semantics(
          button: true,
          expanded: _isExpanded,
          child: InkWell(
            onTap: () => setState(() => _isExpanded = !_isExpanded),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minHeight: AppSizes.touchTarget,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: AppSpacing.x8),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.title, style: context.text.h3),
                          if (summary != null && !_isExpanded)
                            Text(
                              summary,
                              style: context.text.caption.copyWith(
                                color: c.primaryPressed,
                              ),
                            ),
                        ],
                      ),
                    ),
                    AnimatedRotation(
                      turns: _isExpanded ? 0.5 : 0,
                      duration: duration,
                      curve: AppMotion.enter,
                      child: Icon(AppIcons.chevronDown, color: c.inkSecondary),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        AnimatedSize(
          duration: duration,
          curve: AppMotion.enter,
          alignment: Alignment.topCenter,
          child: _isExpanded
              ? Padding(
                  padding: const EdgeInsets.only(bottom: AppSpacing.x12),
                  child: widget.child,
                )
              : const SizedBox(width: double.infinity),
        ),
      ],
    );
  }
}
