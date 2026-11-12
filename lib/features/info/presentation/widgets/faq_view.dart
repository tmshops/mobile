import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/info.dart';
import '../bloc/info_cubits.dart';
import 'info_common.dart';

/// FAQ as a searchable accordion (UI_DESIGN §7.25). While searching, the
/// matching answers open by themselves. Expects [FaqCubit].
class FaqView extends StatelessWidget {
  const FaqView({required this.onOpenContacts, this.onTapLink, super.key});

  /// «Нет ответа? Напишите нам» when nothing matches.
  final VoidCallback onOpenContacts;
  final ValueChanged<String>? onTapLink;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final cubit = context.read<FaqCubit>();
    return Scaffold(
      backgroundColor: c.surface,
      appBar: AppBar(
        backgroundColor: c.surface,
        title: Text(InfoTopic.faq.title(l10n)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.screen,
              AppSpacing.x4,
              AppSpacing.screen,
              AppSpacing.x12,
            ),
            child: AppSearchBar(
              hintText: l10n.infoFaqSearchHint,
              onChanged: cubit.search,
            ),
          ),
          Expanded(
            child: BlocBuilder<FaqCubit, FaqState>(
              builder: (context, state) => InfoBody<List<FaqSection>>(
                isLoading: state.isLoading,
                data: state.loaded,
                failure: state.failure,
                onRefresh: () =>
                    cubit.load(context.read<LocaleCubit>().state.languageCode),
                builder: (context, sections) => sections.isEmpty
                    ? ListView(
                        children: [
                          EmptyState(
                            icon: AppIcons.search,
                            title: l10n.infoFaqNothingTitle,
                            message: l10n.infoFaqNothingText,
                            actionLabel: l10n.infoContacts,
                            onAction: onOpenContacts,
                          ),
                        ],
                      )
                    : ListView(
                        padding: const EdgeInsets.only(
                          bottom: AppSpacing.section,
                        ),
                        keyboardDismissBehavior:
                            ScrollViewKeyboardDismissBehavior.onDrag,
                        children: [
                          for (final section in sections) ...[
                            GroupHeader(section.title),
                            _FaqGroup(
                              section: section,
                              isSearching: state.isSearching,
                              onTapLink: onTapLink,
                            ),
                          ],
                        ],
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FaqGroup extends StatelessWidget {
  const _FaqGroup({
    required this.section,
    required this.isSearching,
    required this.onTapLink,
  });

  final FaqSection section;
  final bool isSearching;
  final ValueChanged<String>? onTapLink;

  @override
  Widget build(BuildContext context) => ContentCard(
    padding: const EdgeInsets.symmetric(
      horizontal: AppSpacing.x16,
      vertical: AppSpacing.x4,
    ),
    child: Column(
      children: [
        for (final (i, item) in section.items.indexed) ...[
          if (i > 0) const Divider(height: AppSizes.hairline),
          CollapsibleSection(
            // A new search re-opens matches; clearing it folds them again.
            key: ValueKey((item.id, isSearching)),
            title: item.question,
            initiallyExpanded: isSearching,
            child: ServerHtml(
              html: item.answer,
              isArticle: true,
              onTapLink: onTapLink,
            ),
          ),
        ],
      ],
    ),
  );
}
