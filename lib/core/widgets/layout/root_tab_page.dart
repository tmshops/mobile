import 'package:flutter/material.dart';

import '../../navigation/tab_reselect_scroll.dart';
import '../../theme/theme.dart';

/// Scaffold for a bottom-nav tab root: large `h1` title (UI_DESIGN §6) over
/// [slivers]. Re-tapping the active tab scrolls back to the top.
class RootTabPage extends StatefulWidget {
  const RootTabPage({
    required this.title,
    this.actions = const [],
    this.slivers = const [],
    this.top,
    this.bottomBar,
    super.key,
  });

  final String title;

  /// Icon buttons to the right of the title, e.g. the bell on Home.
  final List<Widget> actions;
  final List<Widget> slivers;

  /// Pinned above the scroll area, e.g. the offline bar.
  final Widget? top;

  /// Sticky bar under the content, e.g. the cart total and «Оформить».
  final Widget? bottomBar;

  @override
  State<RootTabPage> createState() => _RootTabPageState();
}

class _RootTabPageState extends State<RootTabPage> with TabReselectScrollMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: widget.bottomBar,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            ?widget.top,
            Expanded(child: _scrollView(context)),
          ],
        ),
      ),
    );
  }

  Widget _scrollView(BuildContext context) => CustomScrollView(
    controller: scrollController,
    slivers: [
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
            start: AppSpacing.screen,
            end: AppSpacing.x4,
            top: AppSpacing.x16,
            bottom: AppSpacing.x8,
          ),
          child: Row(
            children: [
              Expanded(
                child: Semantics(
                  header: true,
                  child: Text(widget.title, style: context.text.h1),
                ),
              ),
              ...widget.actions,
            ],
          ),
        ),
      ),
      ...widget.slivers,
    ],
  );
}
