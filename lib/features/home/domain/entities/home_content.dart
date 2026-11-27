import 'package:freezed_annotation/freezed_annotation.dart';

import 'home_section.dart';

part 'home_content.freezed.dart';

@freezed
abstract class HomeContent with _$HomeContent {
  const factory HomeContent({
    required List<HomeSection> sections,

    /// When this content was downloaded (device clock).
    required DateTime fetchedAt,

    /// `true` when it came from the local cache.
    @Default(false) bool isFromCache,
  }) = _HomeContent;
}
