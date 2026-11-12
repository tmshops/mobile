import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/info.dart';
import 'info_common.dart';

/// «Информация» (UI_DESIGN §7.25): the list of pages, grouped as the
/// customer thinks of them: the store and delivery, help, documents.
class InfoMenuView extends StatelessWidget {
  const InfoMenuView({required this.onOpen, super.key});

  final ValueChanged<InfoTopic> onOpen;

  static const _groups = [
    [
      InfoTopic.about,
      InfoTopic.delivery,
      InfoTopic.pickupPoints,
      InfoTopic.returns,
    ],
    [InfoTopic.faq, InfoTopic.contacts],
    [InfoTopic.offer, InfoTopic.privacy],
  ];

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    return Scaffold(
      backgroundColor: c.surface,
      appBar: AppBar(backgroundColor: c.surface, title: Text(l10n.profileInfo)),
      body: ListView(
        padding: const EdgeInsets.only(
          top: AppSpacing.x8,
          bottom: AppSpacing.section,
        ),
        children: [
          for (final (i, group) in _groups.indexed) ...[
            if (i == _groups.length - 1) GroupHeader(l10n.infoDocuments),
            MenuGroup(
              children: [
                for (final topic in group)
                  MenuRow(
                    icon: topic.icon,
                    title: topic.title(l10n),
                    onTap: () => onOpen(topic),
                  ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
