import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/utils/source_link.dart';
import '../../domain/entities/search_hints.dart';
import '../../domain/repositories/search_repository.dart';

part 'search_bloc.freezed.dart';

@freezed
sealed class SearchEvent with _$SearchEvent {
  /// The screen opened, maybe with the query of the results it came from.
  const factory SearchEvent.started({
    required String languageCode,
    @Default('') String text,
  }) = SearchStarted;

  const factory SearchEvent.textChanged(String text) = SearchTextChanged;

  /// A query was searched: it goes on top of the history.
  const factory SearchEvent.submitted(String text) = SearchSubmitted;

  const factory SearchEvent.historyRemoved(String query) = SearchHistoryRemoved;

  const factory SearchEvent.historyCleared() = SearchHistoryCleared;
}

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState({
    @Default('') String text,
    @Default(<String>[]) List<String> history,
    @Default(<String>[]) List<String> popular,
    @Default(SearchHints()) SearchHints hints,

    /// Hints for the current [text] are on their way.
    @Default(false) bool isLoadingHints,

    /// A marketplace link in [text]: it opens the product instead of a
    /// search (TZ §5.9).
    String? link,
  }) = _SearchState;

  const SearchState._();

  bool get isTyping => text.trim().isNotEmpty;
}

/// The search screen (UI_DESIGN §7.6, TZ §5.7): history and popular
/// queries while empty, live hints while typing.
@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(this._repository) : super(const SearchState()) {
    on<SearchStarted>(_onStarted);
    // Each keystroke cancels the previous wait and request: only the text
    // that stayed for [debounce] is sent.
    on<SearchTextChanged>(_onTextChanged, transformer: restartable());
    on<SearchSubmitted>(_onSubmitted, transformer: sequential());
    on<SearchHistoryRemoved>(_onRemoved, transformer: sequential());
    on<SearchHistoryCleared>(_onCleared, transformer: sequential());
  }

  final SearchRepository _repository;

  static const debounce = Duration(milliseconds: 300);

  String _languageCode = '';

  Future<void> _onStarted(
    SearchStarted event,
    Emitter<SearchState> emit,
  ) async {
    _languageCode = event.languageCode;
    final history = await _repository.history();
    emit(
      state.copyWith(
        history: history.getOrElse((_) => const []),
        text: event.text,
        link: SourceLinks.find(event.text),
      ),
    );
    if (state.isTyping && state.link == null) await _loadHints(emit);
    final popular = await _repository.popular(_languageCode);
    // Without popular queries the history alone is still useful.
    emit(state.copyWith(popular: popular.getOrElse((_) => state.popular)));
  }

  Future<void> _onTextChanged(
    SearchTextChanged event,
    Emitter<SearchState> emit,
  ) async {
    final link = SourceLinks.find(event.text);
    final isTyping = event.text.trim().isNotEmpty && link == null;
    emit(
      state.copyWith(
        text: event.text,
        link: link,
        isLoadingHints: isTyping,
        hints: isTyping ? state.hints : const SearchHints(),
      ),
    );
    if (!isTyping) return;
    await Future<void>.delayed(debounce);
    if (emit.isDone) return;
    await _loadHints(emit);
  }

  Future<void> _loadHints(Emitter<SearchState> emit) async {
    final text = state.text;
    final result = await _repository.hints(_languageCode, text.trim());
    if (emit.isDone || state.text != text) return;
    emit(
      state.copyWith(
        isLoadingHints: false,
        // A failed hint request leaves the field usable: search still works.
        hints: result.getOrElse((_) => const SearchHints()),
      ),
    );
  }

  Future<void> _onSubmitted(
    SearchSubmitted event,
    Emitter<SearchState> emit,
  ) async {
    if (event.text.trim().isEmpty) return;
    final result = await _repository.remember(event.text);
    emit(state.copyWith(history: result.getOrElse((_) => state.history)));
  }

  Future<void> _onRemoved(
    SearchHistoryRemoved event,
    Emitter<SearchState> emit,
  ) async {
    final result = await _repository.forget(event.query);
    emit(state.copyWith(history: result.getOrElse((_) => state.history)));
  }

  Future<void> _onCleared(
    SearchHistoryCleared event,
    Emitter<SearchState> emit,
  ) async {
    final result = await _repository.clearHistory();
    if (result.isRight()) emit(state.copyWith(history: const []));
  }
}
