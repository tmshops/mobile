import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/product/domain/product_summary.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/app_dates.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/chat.dart';

/// One message (UI_DESIGN §7.22): the customer's on the right in
/// `primarySoft`, the operator's on the left in `surface`; time and
/// delivery under the customer's, «!» + «Повторить» when it failed.
class MessageBubble extends StatelessWidget {
  const MessageBubble({
    required this.message,
    required this.onRetry,
    required this.onOpenProduct,
    required this.onOpenOrder,
    super.key,
  });

  final ChatMessage message;
  final VoidCallback onRetry;
  final ValueChanged<ProductSummary> onOpenProduct;
  final ValueChanged<String> onOpenOrder;

  static const double _radius = 18;
  static const double _tail = 4;
  static const double _maxWidthFactor = 0.78;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final isMine = message.isMine;
    final content = message.content;
    final isCard = content is ChatProduct || content is ChatRequest;
    final radius = BorderRadius.only(
      topLeft: const Radius.circular(_radius),
      topRight: const Radius.circular(_radius),
      bottomLeft: Radius.circular(isMine ? _radius : _tail),
      bottomRight: Radius.circular(isMine ? _tail : _radius),
    );
    final body = switch (content) {
      ChatText(:final text) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.x12,
          vertical: AppSpacing.x8,
        ),
        child: Text(text, style: context.text.body),
      ),
      ChatImages(:final urls) => _Images(urls: urls),
      ChatProduct(:final product) => _ProductCard(
        product: product,
        onOpen: () => onOpenProduct(product),
      ),
      ChatOrder(:final number) => InkWell(
        onTap: () => onOpenOrder(number),
        child: Padding(
          padding: AppSpacing.cardPadding,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(AppIcons.order, color: c.primary),
              const SizedBox(width: AppSpacing.x8),
              Flexible(
                child: Text(
                  context.l10n.chatOrder(number),
                  style: context.text.bodyStrong,
                ),
              ),
              const SizedBox(width: AppSpacing.x4),
              Icon(
                AppIcons.chevronRight,
                size: AppSizes.iconSmall,
                color: c.inkTertiary,
              ),
            ],
          ),
        ),
      ),
      ChatRequest(:final request) => RequestCard(
        request: request,
        onOpenProduct: onOpenProduct,
      ),
    };
    return Align(
      alignment: isMine
          ? AlignmentDirectional.centerEnd
          : AlignmentDirectional.centerStart,
      child: FractionallySizedBox(
        widthFactor: isCard ? _maxWidthFactor : null,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.sizeOf(context).width * _maxWidthFactor,
          ),
          child: Column(
            crossAxisAlignment: isMine
                ? CrossAxisAlignment.end
                : CrossAxisAlignment.start,
            children: [
              Material(
                color: isCard
                    ? c.background
                    : (isMine ? c.primarySoft : c.surface),
                shape: RoundedRectangleBorder(
                  borderRadius: radius,
                  side: isCard ? BorderSide(color: c.divider) : BorderSide.none,
                ),
                clipBehavior: Clip.antiAlias,
                child: body,
              ),
              const SizedBox(height: AppSpacing.x2),
              _Footer(message: message, onRetry: onRetry),
            ],
          ),
        ),
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer({required this.message, required this.onRetry});

  final ChatMessage message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final caption = context.text.micro.copyWith(color: c.inkTertiary);
    if (message.status == MessageStatus.failed) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(AppIcons.error, size: AppSizes.iconSmall, color: c.danger),
          const SizedBox(width: AppSpacing.x4),
          Text(
            l10n.chatNotSent,
            style: context.text.micro.copyWith(color: c.danger),
          ),
          TertiaryButton(label: l10n.actionRetry, onPressed: onRetry),
        ],
      );
    }
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(AppDates.time(message.sentAt), style: caption),
        if (message.isMine) ...[
          const SizedBox(width: AppSpacing.x4),
          message.status == MessageStatus.sending
              ? Icon(
                  AppIcons.clock,
                  size: AppSizes.iconTiny,
                  color: c.inkTertiary,
                  semanticLabel: l10n.chatSending,
                )
              : Icon(
                  AppIcons.check,
                  size: AppSizes.iconTiny,
                  color: c.success,
                  semanticLabel: l10n.chatSent,
                ),
        ],
      ],
    );
  }
}

/// One photo full width, 2–4 as a grid of squares.
class _Images extends StatelessWidget {
  const _Images({required this.urls});

  final List<String> urls;

  static const double _single = 200;

  @override
  Widget build(BuildContext context) {
    if (urls.length == 1) {
      return GestureDetector(
        onTap: () => showPhotoViewer(context, urls),
        child: SizedBox.square(
          dimension: _single,
          child: AppNetworkImage(url: urls.single),
        ),
      );
    }
    return SizedBox(
      width: _single,
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        mainAxisSpacing: AppSpacing.x2,
        crossAxisSpacing: AppSpacing.x2,
        children: [
          for (var i = 0; i < urls.length; i++)
            GestureDetector(
              onTap: () => showPhotoViewer(context, urls, initialIndex: i),
              child: AppNetworkImage(url: urls[i]),
            ),
        ],
      ),
    );
  }
}

class _ProductCard extends StatelessWidget {
  const _ProductCard({required this.product, required this.onOpen});

  final ProductSummary product;
  final VoidCallback onOpen;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onOpen,
      child: Padding(
        padding: AppSpacing.cardPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: ClipRRect(
                borderRadius: AppRadii.imageBorder,
                child: AppNetworkImage(
                  url: product.imageUrl,
                  semanticLabel: product.title,
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.x8),
            Text(
              product.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: context.text.body,
            ),
            const SizedBox(height: AppSpacing.x4),
            PriceTag(
              price: product.price,
              oldPrice: product.oldPrice,
              size: PriceTagSize.s,
            ),
            const SizedBox(height: AppSpacing.x8),
            SecondaryButton(
              label: context.l10n.chatOpenProduct,
              size: AppButtonSize.medium,
              onPressed: onOpen,
            ),
          ],
        ),
      ),
    );
  }
}

/// «Найдите мне товар» card: what was asked, «Ищем» / «Найдено», and the
/// product once found.
class RequestCard extends StatelessWidget {
  const RequestCard({
    required this.request,
    required this.onOpenProduct,
    super.key,
  });

  final FindRequest request;
  final ValueChanged<ProductSummary> onOpenProduct;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final isFound = request.status == FindRequestStatus.found;
    final product = request.product;
    return Padding(
      padding: AppSpacing.cardPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Icon(AppIcons.sparkle, color: c.primary),
              const SizedBox(width: AppSpacing.x8),
              Expanded(
                child: Text(
                  l10n.requestTitle(request.id),
                  style: context.text.bodyStrong,
                ),
              ),
              StatusChip(
                label: isFound ? l10n.requestFound : l10n.requestSearching,
                tone: isFound ? StatusTone.success : StatusTone.info,
                icon: isFound ? AppIcons.checkCircle : AppIcons.search,
              ),
            ],
          ),
          if (request.description.isNotEmpty) ...[
            const SizedBox(height: AppSpacing.x8),
            Text(request.description, style: context.text.body),
          ],
          if (request.photos.isNotEmpty) ...[
            const SizedBox(height: AppSpacing.x8),
            Wrap(
              spacing: AppSpacing.x4,
              runSpacing: AppSpacing.x4,
              children: [
                for (final photo in request.photos)
                  ClipRRect(
                    borderRadius: AppRadii.imageBorder,
                    child: SizedBox.square(
                      dimension: AppSizes.touchTarget,
                      child: AppNetworkImage(url: photo),
                    ),
                  ),
              ],
            ),
          ],
          if (request.link case final link?) ...[
            const SizedBox(height: AppSpacing.x8),
            Text(
              link,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.text.caption.copyWith(color: c.inkSecondary),
            ),
          ],
          if (isFound && product != null) ...[
            const Divider(height: AppSpacing.x24),
            _ProductCard(
              product: product,
              onOpen: () => onOpenProduct(product),
            ),
          ],
        ],
      ),
    );
  }
}

/// «Сегодня» / «Вчера» / «24 ноября» between days.
class DaySeparator extends StatelessWidget {
  const DaySeparator({required this.date, required this.now, super.key});

  final DateTime date;
  final DateTime now;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.x12),
      child: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: c.surface,
            borderRadius: AppRadii.chipBorder,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.x12,
              vertical: AppSpacing.x4,
            ),
            child: Text(
              AppDates.dayLabel(context.l10n, date, now),
              style: context.text.caption.copyWith(color: c.inkSecondary),
            ),
          ),
        ),
      ),
    );
  }
}
