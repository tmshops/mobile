import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';

/// Top of the search results: the query in a search bar that reopens the
/// search screen to edit it.
class SearchResultsHeader extends StatefulWidget {
  const SearchResultsHeader({
    required this.query,
    required this.onEdit,
    required this.onPhotoSearch,
    super.key,
  });

  final String query;
  final VoidCallback onEdit;
  final VoidCallback onPhotoSearch;

  @override
  State<SearchResultsHeader> createState() => _SearchResultsHeaderState();
}

class _SearchResultsHeaderState extends State<SearchResultsHeader> {
  late final _controller = TextEditingController(text: widget.query);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      titleSpacing: 0,
      backgroundColor: context.colors.background,
      title: Padding(
        padding: const EdgeInsetsDirectional.only(end: AppSpacing.screen),
        child: AppSearchBar(
          controller: _controller,
          onTap: widget.onEdit,
          onCameraTap: widget.onPhotoSearch,
        ),
      ),
    );
  }
}

/// Nothing found (TZ §5.7): «Поиск по фото» and «Найдите мне товар».
class SearchEmptyState extends StatelessWidget {
  const SearchEmptyState({
    required this.query,
    required this.onPhotoSearch,
    required this.onFindForMe,
    super.key,
  });

  final String query;
  final VoidCallback onPhotoSearch;
  final VoidCallback onFindForMe;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        EmptyState(
          icon: AppIcons.search,
          title: l10n.searchEmptyTitle(query),
          message: l10n.searchEmptyText,
          actionLabel: l10n.photoFindForMe,
          onAction: onFindForMe,
        ),
        TertiaryButton(
          label: l10n.searchByPhoto,
          icon: AppIcons.camera,
          onPressed: onPhotoSearch,
        ),
      ],
    );
  }
}
