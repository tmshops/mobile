import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../bloc/search_bloc.dart';
import '../widgets/search_view.dart';

/// «Поиск» over the menu (TZ §5.7).
class SearchPage extends StatelessWidget {
  const SearchPage({
    required this.onSearch,
    required this.onOpenLink,
    required this.onPhotoSearch,
    this.initialText = '',
    super.key,
  });

  /// The query of the results this screen was opened from, to edit it.
  final String initialText;
  final ValueChanged<String> onSearch;
  final ValueChanged<String> onOpenLink;
  final VoidCallback onPhotoSearch;

  @override
  Widget build(BuildContext context) {
    final languageCode = context.read<LocaleCubit>().state.languageCode;
    return BlocProvider(
      create: (_) => getIt<SearchBloc>()
        ..add(
          SearchEvent.started(languageCode: languageCode, text: initialText),
        ),
      child: SearchView(
        initialText: initialText,
        onSearch: onSearch,
        onOpenLink: onOpenLink,
        onPhotoSearch: onPhotoSearch,
      ),
    );
  }
}
