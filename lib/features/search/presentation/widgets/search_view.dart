import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/source_link.dart';
import '../../../../core/widgets/widgets.dart';
import '../bloc/search_bloc.dart';
import 'search_parts.dart';

/// Search screen (UI_DESIGN §7.6, TZ §5.7): a field with ×, camera and
/// live hints; history and popular queries while it is empty; a typed or
/// copied marketplace link offers to open the product.
class SearchView extends StatefulWidget {
  const SearchView({
    required this.initialText,
    required this.onSearch,
    required this.onOpenLink,
    required this.onPhotoSearch,
    super.key,
  });

  final String initialText;
  final ValueChanged<String> onSearch;
  final ValueChanged<String> onOpenLink;
  final VoidCallback onPhotoSearch;

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  late final _controller = TextEditingController(text: widget.initialText);

  /// A marketplace link on the clipboard when the screen opened.
  String? _clipboardLink;

  SearchBloc get _bloc => context.read<SearchBloc>();

  @override
  void initState() {
    super.initState();
    _readClipboard();
  }

  Future<void> _readClipboard() async {
    final data = await Clipboard.getData(Clipboard.kTextPlain);
    final link = SourceLinks.find(data?.text ?? '');
    if (link != null && mounted) setState(() => _clipboardLink = link);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _search(String text) {
    final query = text.trim();
    if (query.isEmpty) return;
    final link = SourceLinks.find(query);
    if (link != null) return widget.onOpenLink(link);
    _bloc.add(SearchEvent.submitted(query));
    widget.onSearch(query);
  }

  /// A hint fills the field too, so back from the results shows it.
  void _pick(String query) {
    _controller.value = TextEditingValue(
      text: query,
      selection: TextSelection.collapsed(offset: query.length),
    );
    _bloc.add(SearchEvent.textChanged(query));
    _search(query);
  }

  void _clear() {
    _controller.clear();
    _bloc.add(const SearchEvent.textChanged(''));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: AppBar(
        titleSpacing: 0,
        title: AppSearchBar(
          controller: _controller,
          autofocus: true,
          onChanged: (text) => _bloc.add(SearchEvent.textChanged(text)),
          onSubmitted: _search,
          onCameraTap: widget.onPhotoSearch,
        ),
        actions: [
          BlocSelector<SearchBloc, SearchState, bool>(
            selector: (s) => s.text.isNotEmpty,
            builder: (_, hasText) => hasText
                ? IconButton(
                    tooltip: l10n.searchClearText,
                    icon: const Icon(AppIcons.close),
                    onPressed: _clear,
                  )
                : const SizedBox(width: AppSpacing.x8),
          ),
        ],
      ),
      body: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) => ListView(
          padding: const EdgeInsets.only(bottom: AppSpacing.section),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          children: switch (state) {
            SearchState(:final link?) => [
              OpenLinkRow(link: link, onTap: () => widget.onOpenLink(link)),
            ],
            SearchState(isTyping: true) => [
              HintsList(state: state, onPick: _pick),
            ],
            _ => [
              if (_clipboardLink case final link?)
                OpenLinkRow(link: link, onTap: () => widget.onOpenLink(link)),
              if (state.history.isNotEmpty)
                HistorySection(
                  history: state.history,
                  onPick: _pick,
                  onRemove: (q) => _bloc.add(SearchEvent.historyRemoved(q)),
                  onClear: () => _bloc.add(const SearchEvent.historyCleared()),
                ),
              if (state.popular.isNotEmpty)
                PopularSection(popular: state.popular, onPick: _pick),
            ],
          },
        ),
      ),
    );
  }
}
