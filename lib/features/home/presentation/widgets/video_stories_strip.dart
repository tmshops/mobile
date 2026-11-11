import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/home_section.dart';

/// Stories-style row of round video thumbnails: the entry into the video
/// feed. Unwatched ones get an orange ring.
class VideoStoriesStrip extends StatelessWidget {
  const VideoStoriesStrip({
    required this.stories,
    required this.onOpen,
    super.key,
  });

  final List<VideoStory> stories;
  final ValueChanged<VideoStory> onOpen;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: AppSpacing.screenPadding,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (final (i, story) in stories.indexed) ...[
              if (i > 0) const SizedBox(width: AppSpacing.x12),
              _StoryBubble(story: story, onTap: () => onOpen(story)),
            ],
          ],
        ),
      ),
    );
  }
}

class _StoryBubble extends StatelessWidget {
  const _StoryBubble({required this.story, required this.onTap});

  final VideoStory story;
  final VoidCallback onTap;

  static const double _size = 72;
  static const double _ring = 2.5;
  static const double _gap = 2;
  static const double _playSize = 22;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final isNew = !story.isViewed;
    return Semantics(
      button: true,
      label: isNew ? context.l10n.homeStoryNew(story.title) : story.title,
      excludeSemantics: true,
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          width: _size + AppSpacing.x8,
          child: Column(
            children: [
              Container(
                width: _size,
                height: _size,
                padding: const EdgeInsets.all(_ring + _gap),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isNew ? c.primary : c.divider,
                    width: _ring,
                  ),
                ),
                child: ClipOval(
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      AppNetworkImage(url: story.posterUrl),
                      Center(
                        child: Container(
                          width: _playSize,
                          height: _playSize,
                          decoration: BoxDecoration(
                            color: c.graphite.withValues(
                              alpha: AppOpacity.overlayPanel,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            AppIcons.play,
                            size: AppSizes.iconTiny,
                            color: c.onGraphite,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.x4),
              Text(
                story.title,
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: context.text.micro.copyWith(
                  color: isNew ? c.ink : c.inkSecondary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
