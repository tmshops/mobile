import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_hints.freezed.dart';

/// Live hints for what is being typed (TZ §5.7).
@freezed
abstract class SearchHints with _$SearchHints {
  const factory SearchHints({
    @Default(<String>[]) List<String> suggestions,

    /// The server's fix of a typo: «Возможно, вы искали …».
    String? didYouMean,
  }) = _SearchHints;
}
