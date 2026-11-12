import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/info.dart';
import '../bloc/info_cubits.dart';
import 'info_common.dart';

/// A server-written page (UI_DESIGN §7.25 article layout): 16-dp margins,
/// `body` at 1.5 line height, h2 subheads, tables like the specs table.
/// Expects [InfoArticleCubit].
class InfoArticleView extends StatelessWidget {
  const InfoArticleView({required this.topic, this.onTapLink, super.key});

  final InfoTopic topic;

  /// A link inside the page (another info page, a product, a website).
  final ValueChanged<String>? onTapLink;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<InfoArticleCubit>();
    return Scaffold(
      appBar: AppBar(title: Text(topic.title(context.l10n))),
      body: BlocBuilder<InfoArticleCubit, InfoState<InfoArticle>>(
        builder: (context, state) => InfoBody<InfoArticle>(
          isLoading: state.isLoading,
          data: state.data,
          failure: state.failure,
          skeleton: const ArticleSkeleton(),
          onRefresh: () =>
              cubit.load(context.read<LocaleCubit>().state.languageCode, topic),
          builder: (context, article) => ListView(
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.screen,
              AppSpacing.x8,
              AppSpacing.screen,
              AppSpacing.section,
            ),
            children: [
              ServerHtml(
                html: article.html,
                isArticle: true,
                onTapLink: onTapLink,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
