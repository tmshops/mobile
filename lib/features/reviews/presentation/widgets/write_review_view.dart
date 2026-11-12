import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/review.dart';
import '../bloc/reviews_cubits.dart';
import 'review_parts.dart';

/// «Написать отзыв» (UI_DESIGN §7.19): the item, a star picker, text, and
/// «Отправить»; afterwards «Спасибо! Отзыв появится после модерации».
/// Expects [WriteReviewCubit].
///
/// Photos and video wait for a media picker package (not approved yet).
class WriteReviewView extends StatelessWidget {
  const WriteReviewView({required this.onDone, super.key});

  /// Leaves the screen after sending or when there is nothing to review.
  final VoidCallback onDone;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<WriteReviewCubit, WriteReviewState>(
      builder: (context, state) {
        final target = state.target;
        final failure = state.loadFailure;
        return Scaffold(
          appBar: AppBar(title: Text(l10n.reviewsWriteTitle)),
          body: switch (state) {
            WriteReviewState(isSent: true) => _Sent(onDone: onDone),
            WriteReviewState(isLoading: true) => const SkeletonList(
              itemCount: 2,
            ),
            WriteReviewState(isNotReviewable: true) => Center(
              child: EmptyState(
                icon: AppIcons.starOutline,
                title: l10n.reviewsNotReviewableTitle,
                message: l10n.reviewsNotReviewableText,
                actionLabel: l10n.walletDone,
                onAction: onDone,
              ),
            ),
            _ when target == null && failure != null => Center(
              child: SingleChildScrollView(
                child: FailureView(
                  failure: failure,
                  onRetry: () => context.read<WriteReviewCubit>().retry(
                    context.read<LocaleCubit>().state.languageCode,
                  ),
                ),
              ),
            ),
            _ when target != null => _Form(state: state, target: target),
            _ => const SizedBox.shrink(),
          },
          bottomNavigationBar: target == null || state.isSent
              ? null
              : StickyActionBar(
                  primary: PrimaryButton(
                    label: l10n.reviewsSend,
                    isLoading: state.isSending,
                    onPressed: state.canSend
                        ? () => context.read<WriteReviewCubit>().send(
                            context.read<LocaleCubit>().state.languageCode,
                          )
                        : null,
                  ),
                ),
        );
      },
    );
  }
}

class _Form extends StatelessWidget {
  const _Form({required this.state, required this.target});

  final WriteReviewState state;
  final ReviewTarget target;

  static const double _image = 64;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final cubit = context.read<WriteReviewCubit>();
    final sendFailure = state.sendFailure;
    final sku = target.skuLabel;
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.screen),
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: AppRadii.imageBorder,
              child: SizedBox.square(
                dimension: _image,
                child: AppNetworkImage(
                  url: target.imageUrl,
                  semanticLabel: target.title,
                ),
              ),
            ),
            const SizedBox(width: AppSpacing.x12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    target.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: context.text.body,
                  ),
                  if (sku != null)
                    Text(
                      sku,
                      style: context.text.caption.copyWith(
                        color: c.inkSecondary,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.x24),
        Center(
          child: StarPicker(rating: state.rating, onChanged: cubit.rate),
        ),
        const SizedBox(height: AppSpacing.x24),
        AppTextField(
          label: l10n.reviewsTextLabel,
          hint: l10n.reviewsTextHint,
          minLines: 4,
          maxLines: 8,
          maxLength: WriteReviewState.maxText,
          onChanged: cubit.write,
        ),
        if (sendFailure != null) ...[
          const SizedBox(height: AppSpacing.x8),
          Text(
            actionFailureText(l10n, sendFailure),
            style: context.text.caption.copyWith(color: c.danger),
          ),
        ],
      ],
    );
  }
}

class _Sent extends StatelessWidget {
  const _Sent({required this.onDone});

  final VoidCallback onDone;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Center(
      child: SingleChildScrollView(
        child: Semantics(
          liveRegion: true,
          child: EmptyState(
            icon: AppIcons.checkCircle,
            title: l10n.reviewsSentTitle,
            message: l10n.reviewsSentText,
            actionLabel: l10n.walletDone,
            onAction: onDone,
          ),
        ),
      ),
    );
  }
}
