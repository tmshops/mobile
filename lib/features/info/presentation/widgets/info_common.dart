import 'package:flutter/material.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/info.dart';

extension InfoTopicUiX on InfoTopic {
  String title(AppLocalizations l10n) => switch (this) {
    InfoTopic.about => l10n.infoAbout,
    InfoTopic.delivery => l10n.infoDelivery,
    InfoTopic.pickupPoints => l10n.infoPickupPoints,
    InfoTopic.returns => l10n.infoReturns,
    InfoTopic.faq => l10n.infoFaq,
    InfoTopic.contacts => l10n.infoContacts,
    InfoTopic.offer => l10n.infoOffer,
    InfoTopic.privacy => l10n.infoPrivacy,
  };

  IconData get icon => switch (this) {
    InfoTopic.about => AppIcons.store,
    InfoTopic.delivery => AppIcons.deliveryTruck,
    InfoTopic.pickupPoints => AppIcons.mapPin,
    InfoTopic.returns => AppIcons.returns,
    InfoTopic.faq => AppIcons.question,
    InfoTopic.contacts => AppIcons.phone,
    InfoTopic.offer => AppIcons.document,
    InfoTopic.privacy => AppIcons.privacy,
  };
}

/// Body of an information page: skeleton, then the page with
/// pull-to-refresh, or the failure with «Повторить» when there is nothing
/// to show (TZ §8).
class InfoBody<T> extends StatelessWidget {
  const InfoBody({
    required this.isLoading,
    required this.data,
    required this.failure,
    required this.onRefresh,
    required this.builder,
    this.skeleton = const SkeletonList(),
    super.key,
  });

  final bool isLoading;
  final T? data;
  final Failure? failure;
  final Future<void> Function() onRefresh;

  /// A scrollable for the loaded page (it sits in a [RefreshIndicator]).
  final Widget Function(BuildContext context, T data) builder;
  final Widget skeleton;

  @override
  Widget build(BuildContext context) {
    final (page, error) = (data, failure);
    if (page != null) {
      return RefreshIndicator(
        onRefresh: onRefresh,
        child: builder(context, page),
      );
    }
    if (error != null) {
      return Center(
        child: SingleChildScrollView(
          child: FailureView(failure: error, onRetry: onRefresh),
        ),
      );
    }
    return skeleton;
  }
}

/// Text-shaped placeholder for an article: a subhead and paragraphs.
class ArticleSkeleton extends StatelessWidget {
  const ArticleSkeleton({super.key});

  static const double _line = 14;
  static const double _head = 20;
  static const _paragraphs = 3;
  static const _linesPerParagraph = 4;
  static const double _lastLine = 0.6;

  @override
  Widget build(BuildContext context) => Semantics(
    label: context.l10n.loading,
    child: Shimmer(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.screen),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var p = 0; p < _paragraphs; p++) ...[
              const FractionallySizedBox(
                widthFactor: _lastLine,
                child: SkeletonBox(height: _head),
              ),
              const SizedBox(height: AppSpacing.x12),
              for (var i = 0; i < _linesPerParagraph; i++)
                Padding(
                  padding: const EdgeInsets.only(bottom: AppSpacing.x8),
                  child: FractionallySizedBox(
                    widthFactor: i == _linesPerParagraph - 1 ? _lastLine : 1,
                    child: const SkeletonBox(height: _line),
                  ),
                ),
              const SizedBox(height: AppSpacing.x16),
            ],
          ],
        ),
      ),
    ),
  );
}

/// Icon + text row inside a card (address, hours, phone). Tappable rows
/// get the brand colour so they read as actions.
class InfoLine extends StatelessWidget {
  const InfoLine({
    required this.icon,
    required this.text,
    this.onTap,
    this.semanticsHint,
    super.key,
  });

  final IconData icon;
  final String text;
  final VoidCallback? onTap;

  /// What a tap does, for screen readers («Позвонить»).
  final String? semanticsHint;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final isAction = onTap != null;
    return Semantics(
      button: isAction,
      hint: semanticsHint,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadii.inputBorder,
        child: ConstrainedBox(
          constraints: const BoxConstraints(minHeight: AppSizes.touchTarget),
          child: Row(
            children: [
              Icon(
                icon,
                size: AppSizes.iconDense,
                color: isAction ? c.primaryPressed : c.inkSecondary,
              ),
              const SizedBox(width: AppSpacing.x12),
              Expanded(
                child: Text(
                  text,
                  style: context.text.body.copyWith(
                    color: isAction ? c.primaryPressed : c.ink,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
