import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/order_status.dart';

part 'loadable.freezed.dart';

/// Server data on a screen: what is shown, whether a request is running,
/// and the last failure (TZ §8: loading, error, offline with a copy).
@freezed
abstract class Loadable<T> with _$Loadable<T> {
  const factory Loadable({
    T? data,
    @Default(false) bool isLoading,
    Failure? failure,
    DateTime? fetchedAt,

    /// [data] is the device copy: «Данные на …» and changes are disabled.
    @Default(false) bool isFromCache,
  }) = _Loadable<T>;

  const Loadable._();

  bool get hasData => data != null;

  /// Skeleton: nothing to show yet and no answer either.
  bool get isFirstLoad => data == null && failure == null;

  Loadable<T> started() => copyWith(isLoading: true, failure: null);

  Loadable<T> loaded(Fetched<T> fetched) => Loadable(
    data: fetched.data,
    fetchedAt: fetched.fetchedAt,
    isFromCache: fetched.isFromCache,
  );

  /// A failed refresh keeps what is on screen.
  Loadable<T> failed(Failure failure) =>
      copyWith(isLoading: false, failure: failure);
}
