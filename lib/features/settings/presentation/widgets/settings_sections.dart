import 'package:flutter/material.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/account_settings.dart';

/// Small heading above a [MenuGroup].
class GroupHeader extends StatelessWidget {
  const GroupHeader(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.fromLTRB(
      AppSpacing.screen + AppSpacing.x4,
      AppSpacing.x8,
      AppSpacing.screen,
      AppSpacing.x8,
    ),
    child: Semantics(
      header: true,
      child: Text(
        text,
        style: context.text.caption.copyWith(
          color: context.colors.inkSecondary,
        ),
      ),
    ),
  );
}

String channelTitle(AppLocalizations l10n, CodeChannel channel) =>
    switch (channel) {
      CodeChannel.sms => l10n.settingsChannelSms,
      CodeChannel.telegram => l10n.settingsChannelTelegram,
      CodeChannel.email => l10n.settingsChannelEmail,
    };

/// «Код входа приходит в»: SMS / Telegram / Email as radio rows; an
/// unlinked channel offers «Привязать» instead of a radio.
class CodeChannelGroup extends StatelessWidget {
  const CodeChannelGroup({
    required this.settings,
    required this.onSelect,
    super.key,
  });

  final AccountSettings settings;
  final ValueChanged<CodeChannel> onSelect;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return MenuGroup(
      children: [
        for (final channel in CodeChannel.values)
          _ChannelRow(
            title: channelTitle(l10n, channel),
            icon: switch (channel) {
              CodeChannel.sms => AppIcons.phone,
              CodeChannel.telegram => AppIcons.chat,
              CodeChannel.email => AppIcons.receipt,
            },
            subtitle: settings.channels
                .where((c) => c.channel == channel)
                .firstOrNull
                ?.address,
            isLinked: settings.isLinked(channel),
            isSelected: settings.codeChannel == channel,
            onTap: () => onSelect(channel),
          ),
      ],
    );
  }
}

class _ChannelRow extends StatelessWidget {
  const _ChannelRow({
    required this.title,
    required this.icon,
    required this.isLinked,
    required this.isSelected,
    required this.onTap,
    this.subtitle,
  });

  final String title;
  final IconData icon;
  final String? subtitle;
  final bool isLinked;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final hint = subtitle;
    return Semantics(
      inMutuallyExclusiveGroup: isLinked,
      checked: isLinked ? isSelected : null,
      button: true,
      child: InkWell(
        onTap: onTap,
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: AppSizes.touchTarget + AppSpacing.x4,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.x16,
              vertical: AppSpacing.x8,
            ),
            child: Row(
              children: [
                Icon(icon, size: AppSizes.icon, color: c.inkSecondary),
                const SizedBox(width: AppSpacing.x16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: context.text.body),
                      if (hint != null)
                        Text(
                          hint,
                          overflow: TextOverflow.ellipsis,
                          style: context.text.caption.copyWith(
                            color: c.inkSecondary,
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(width: AppSpacing.x8),
                if (isLinked)
                  RadioMark(isSelected: isSelected)
                else
                  Text(
                    l10n.settingsLink,
                    style: context.text.bodyStrong.copyWith(
                      color: c.primaryPressed,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// One switch per notification type; service ones are locked on with
/// «Обязательные» (TZ §5.19: advertising can be turned off, service not).
class TopicsGroup extends StatelessWidget {
  const TopicsGroup({required this.topics, required this.onChanged, super.key});

  final List<NotificationTopic> topics;
  final void Function(NotificationTopic topic, bool isOn) onChanged;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    return MenuGroup(
      children: [
        for (final topic in topics)
          MergeSemantics(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.x16,
                AppSpacing.x4,
                AppSpacing.x8,
                AppSpacing.x4,
              ),
              child: Row(
                children: [
                  Icon(
                    topic.isRequired ? AppIcons.lock : AppIcons.bell,
                    size: AppSizes.icon,
                    color: c.inkSecondary,
                  ),
                  const SizedBox(width: AppSpacing.x16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(topic.title, style: context.text.body),
                        if (topic.isRequired)
                          Text(
                            l10n.settingsRequired,
                            style: context.text.caption.copyWith(
                              color: c.inkSecondary,
                            ),
                          ),
                      ],
                    ),
                  ),
                  Switch(
                    value: topic.isOn,
                    onChanged: topic.isRequired
                        ? null
                        : (isOn) => onChanged(topic, isOn),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}

/// Placeholder for the server groups while they load or after a failure.
class ServerGroupsState extends StatelessWidget {
  const ServerGroupsState({required this.onRetry, this.failure, super.key});

  final Failure? failure;
  final VoidCallback onRetry;

  static const double _skeleton = 168;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    if (failure == null) {
      return const Padding(
        padding: EdgeInsets.fromLTRB(
          AppSpacing.screen,
          0,
          AppSpacing.screen,
          AppSpacing.x12,
        ),
        child: Shimmer(
          child: SkeletonBox(width: double.infinity, height: _skeleton),
        ),
      );
    }
    return ContentCard(
      color: context.colors.background,
      child: Row(
        children: [
          Icon(AppIcons.warning, color: context.colors.warning),
          const SizedBox(width: AppSpacing.x12),
          Expanded(
            child: Text(l10n.settingsLoadFailed, style: context.text.body),
          ),
          TertiaryButton(label: l10n.actionRetry, onPressed: onRetry),
        ],
      ),
    );
  }
}
