import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/product/domain/product_summary.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../bloc/video_feed_cubit.dart';
import 'clip_page.dart';

/// Full-screen video feed (UI_DESIGN §7.3). Expects [VideoFeedCubit].
///
/// Playback stops while something covers the feed (the product page, the
/// variant sheet) and while the app is in the background.
class VideoFeedView extends StatefulWidget {
  const VideoFeedView({
    required this.startId,
    required this.onOpenProduct,
    required this.onAddToCart,
    super.key,
  });

  final String? startId;

  /// Complete when the customer is back on the feed.
  final Future<void> Function(ProductSummary product) onOpenProduct;
  final Future<void> Function(ProductSummary product) onAddToCart;

  @override
  State<VideoFeedView> createState() => _VideoFeedViewState();
}

class _VideoFeedViewState extends State<VideoFeedView> {
  late final AppLifecycleListener _lifecycle;
  var _isForeground = true;
  var _isCovered = false;

  @override
  void initState() {
    super.initState();
    _lifecycle = AppLifecycleListener(
      onStateChange: (s) =>
          setState(() => _isForeground = s == AppLifecycleState.resumed),
    );
  }

  @override
  void dispose() {
    _lifecycle.dispose();
    super.dispose();
  }

  /// Pauses the feed while [cover] is open.
  Future<void> _covered(Future<void> Function() cover) async {
    setState(() => _isCovered = true);
    await cover();
    if (mounted) setState(() => _isCovered = false);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final cubit = context.read<VideoFeedCubit>();
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: c.graphite,
        body: BlocBuilder<VideoFeedCubit, VideoFeedState>(
          buildWhen: (a, b) =>
              a.isLoading != b.isLoading ||
              a.failure != b.failure ||
              a.clips.length != b.clips.length,
          builder: (context, state) => switch (state) {
            VideoFeedState(isLoading: true) => const Center(
              child: CircularProgressIndicator(),
            ),
            VideoFeedState(:final failure?) => _OnDark(
              child: FailureView(
                failure: failure,
                onRetry: () => cubit.load(
                  context.read<LocaleCubit>().state.languageCode,
                  startId: widget.startId,
                ),
              ),
            ),
            VideoFeedState(clips: []) => _OnDark(
              child: EmptyState(icon: AppIcons.play, title: l10n.videoEmpty),
            ),
            VideoFeedState(:final clips) => PageView.builder(
              scrollDirection: Axis.vertical,
              itemCount: clips.length,
              onPageChanged: cubit.pageChanged,
              itemBuilder: (context, i) =>
                  BlocBuilder<VideoFeedCubit, VideoFeedState>(
                    buildWhen: (a, b) =>
                        a.current != b.current ||
                        a.isMuted != b.isMuted ||
                        a.clips[i] != b.clips[i],
                    builder: (context, state) {
                      final clip = state.clips[i];
                      return ClipPage(
                        key: ValueKey(clip.id),
                        clip: clip,
                        isActive:
                            state.current == i && _isForeground && !_isCovered,
                        isMuted: state.isMuted,
                        onToggleSound: cubit.toggleSound,
                        onLike: () => cubit.toggleLike(clip.id),
                        onOpenProduct: () =>
                            _covered(() => widget.onOpenProduct(clip.product)),
                        onAddToCart: () =>
                            _covered(() => widget.onAddToCart(clip.product)),
                      );
                    },
                  ),
            ),
          },
        ),
      ),
    );
  }
}

/// Light-on-dark text for the state views over the graphite background.
class _OnDark extends StatelessWidget {
  const _OnDark({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return SafeArea(
      child: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              child: DefaultTextStyle.merge(
                style: TextStyle(color: c.onGraphite),
                child: child,
              ),
            ),
          ),
          const CloseFeedButton(),
        ],
      ),
    );
  }
}

/// «×» top-left.
class CloseFeedButton extends StatelessWidget {
  const CloseFeedButton({super.key});

  @override
  Widget build(BuildContext context) => PositionedDirectional(
    top: AppSpacing.x8,
    start: AppSpacing.x8,
    child: IconCircleButton(
      icon: AppIcons.close,
      semanticLabel: context.l10n.actionClose,
      onPressed: () => unawaited(Navigator.of(context).maybePop()),
    ),
  );
}
