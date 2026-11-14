import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/product/domain/product_summary.dart';
import '../../../../core/product/presentation/product_summary_tile.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/photo_search.dart';
import '../bloc/photo_search_cubit.dart';

/// Results of photo search (UI_DESIGN §7.6): upload progress, then
/// «Похожие товары» most similar first; nothing found → «Найдите мне
/// товар».
class PhotoResultsView extends StatelessWidget {
  const PhotoResultsView({
    required this.query,
    required this.onRetry,
    required this.onOpenProduct,
    required this.onAnotherPhoto,
    required this.onFindForMe,
    super.key,
  });

  final PhotoQuery query;
  final VoidCallback onRetry;
  final ValueChanged<ProductSummary> onOpenProduct;
  final VoidCallback onAnotherPhoto;
  final VoidCallback onFindForMe;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<PhotoSearchCubit, PhotoSearchState>(
      builder: (context, state) => Scaffold(
        backgroundColor: context.colors.background,
        appBar: AppBar(title: Text(l10n.searchByPhoto)),
        body: switch (state) {
          PhotoSearchState(
            status: PhotoSearchStatus.uploading || PhotoSearchStatus.searching,
          ) =>
            _Progress(imageUrl: query.imageUrl, state: state),
          PhotoSearchState(failure: final failure?) => Center(
            child: SingleChildScrollView(
              child: FailureView(failure: failure, onRetry: onRetry),
            ),
          ),
          PhotoSearchState(matches: []) => _Empty(
            onFindForMe: onFindForMe,
            onAnotherPhoto: onAnotherPhoto,
          ),
          PhotoSearchState(:final matches) => _Results(
            imageUrl: query.imageUrl,
            matches: matches,
            onOpenProduct: onOpenProduct,
            onAnotherPhoto: onAnotherPhoto,
          ),
        },
      ),
    );
  }
}

/// The photo with a scanning line, and how far the upload is.
class _Progress extends StatelessWidget {
  const _Progress({required this.imageUrl, required this.state});

  final String imageUrl;
  final PhotoSearchState state;

  static const double _photo = 200;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final isUploading = state.status == PhotoSearchStatus.uploading;
    final percent = (state.uploadProgress * 100).round();
    return Center(
      child: SingleChildScrollView(
        padding: AppSpacing.screenPadding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox.square(
              dimension: _photo,
              child: ClipRRect(
                borderRadius: AppRadii.cardBorder,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    AppNetworkImage(url: imageUrl),
                    if (!AppMotion.isReduced(context)) const _ScanLine(),
                  ],
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.x24),
            Text(
              isUploading ? l10n.photoUploading(percent) : l10n.photoSearching,
              textAlign: TextAlign.center,
              style: context.text.bodyStrong,
            ),
            const SizedBox(height: AppSpacing.x12),
            SizedBox(
              width: _photo,
              child: ClipRRect(
                borderRadius: AppRadii.chipBorder,
                child: LinearProgressIndicator(
                  minHeight: AppSizes.progressBar,
                  value: isUploading ? state.uploadProgress : null,
                  color: c.primary,
                  backgroundColor: c.surface,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// A glowing line running up and down over the photo while it is studied.
class _ScanLine extends StatefulWidget {
  const _ScanLine();

  @override
  State<_ScanLine> createState() => _ScanLineState();
}

class _ScanLineState extends State<_ScanLine>
    with SingleTickerProviderStateMixin {
  late final _controller = AnimationController(
    vsync: this,
    duration: AppMotion.pulse,
  )..repeat(reverse: true);

  static const double _height = 3;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return IgnorePointer(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) => Align(
          alignment: Alignment(0, _controller.value * 2 - 1),
          child: Container(
            height: _height,
            decoration: BoxDecoration(
              color: c.primary,
              boxShadow: [
                BoxShadow(
                  color: c.primary,
                  blurRadius: AppSpacing.x12,
                  spreadRadius: AppSpacing.x2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Empty extends StatelessWidget {
  const _Empty({required this.onFindForMe, required this.onAnotherPhoto});

  final VoidCallback onFindForMe;
  final VoidCallback onAnotherPhoto;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            EmptyState(
              icon: AppIcons.camera,
              title: l10n.photoEmptyTitle,
              message: l10n.photoEmptyText,
              actionLabel: l10n.photoFindForMe,
              onAction: onFindForMe,
            ),
            TertiaryButton(
              label: l10n.photoAnotherPhoto,
              icon: AppIcons.camera,
              onPressed: onAnotherPhoto,
            ),
          ],
        ),
      ),
    );
  }
}

class _Results extends StatelessWidget {
  const _Results({
    required this.imageUrl,
    required this.matches,
    required this.onOpenProduct,
    required this.onAnotherPhoto,
  });

  final String imageUrl;
  final List<PhotoMatch> matches;
  final ValueChanged<ProductSummary> onOpenProduct;
  final VoidCallback onAnotherPhoto;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: _ResultsHeader(
            imageUrl: imageUrl,
            count: matches.length,
            onAnotherPhoto: onAnotherPhoto,
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.screen,
            AppSpacing.x8,
            AppSpacing.screen,
            AppSpacing.section,
          ),
          // Rows of two, not a fixed-extent grid: tiles grow with long
          // Turkmen titles and large text instead of clipping.
          sliver: SliverList.separated(
            itemCount: (matches.length + 1) ~/ 2,
            separatorBuilder: (_, _) => const SizedBox(height: AppSpacing.x16),
            itemBuilder: (context, row) => Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var col = 0; col < 2; col++) ...[
                  if (col == 1) const SizedBox(width: AppSpacing.x12),
                  Expanded(
                    child: switch (row * 2 + col) {
                      final i when i < matches.length => _MatchTile(
                        match: matches[i],
                        onTap: () => onOpenProduct(matches[i].product),
                      ),
                      _ => const SizedBox.shrink(),
                    },
                  ),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _ResultsHeader extends StatelessWidget {
  const _ResultsHeader({
    required this.imageUrl,
    required this.count,
    required this.onAnotherPhoto,
  });

  final String imageUrl;
  final int count;
  final VoidCallback onAnotherPhoto;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.screen,
        AppSpacing.x8,
        AppSpacing.screen,
        AppSpacing.x8,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: AppRadii.imageBorder,
            child: SizedBox.square(
              dimension: AppSizes.swatch,
              child: AppNetworkImage(url: imageUrl),
            ),
          ),
          const SizedBox(width: AppSpacing.x12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Semantics(
                  header: true,
                  child: Text(l10n.photoResultsTitle, style: context.text.h2),
                ),
                Text(
                  l10n.photoResultsCount(count),
                  style: context.text.caption.copyWith(
                    color: context.colors.inkSecondary,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            tooltip: l10n.photoAnotherPhoto,
            icon: const Icon(AppIcons.camera),
            onPressed: onAnotherPhoto,
          ),
        ],
      ),
    );
  }
}

class _MatchTile extends StatelessWidget {
  const _MatchTile({required this.match, required this.onTap});

  final PhotoMatch match;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return ProductSummaryTile(
      product: match.product,
      onTap: onTap,
      imageFooter: Align(
        alignment: AlignmentDirectional.centerStart,
        child: TileStrip(
          label: context.l10n.photoSimilarity((match.similarity * 100).round()),
          background: c.graphite,
          foreground: c.onGraphite,
        ),
      ),
    );
  }
}
