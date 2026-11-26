import 'package:freezed_annotation/freezed_annotation.dart';

part 'link_import.freezed.dart';

/// What the server is doing with the page (UI_DESIGN §7.6).
enum LinkImportStep { opening, translating, pricing }

/// Where a link import stands (TZ §5.9).
@freezed
sealed class LinkImportStatus with _$LinkImportStatus {
  /// The server is still working on [taskId].
  const factory LinkImportStatus.pending({
    required String taskId,
    required LinkImportStep step,
  }) = LinkImportPending;

  /// The product is ready (or was in the catalog already).
  const factory LinkImportStatus.done(String productId) = LinkImportDone;

  /// The page could not be read; the server passed the link to an operator
  /// as a «Найдите мне товар» request.
  const factory LinkImportStatus.failed() = LinkImportFailed;
}
