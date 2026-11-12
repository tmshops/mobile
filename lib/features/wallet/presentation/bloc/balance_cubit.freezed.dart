// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'balance_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BalanceState {

 WalletSummary? get summary;/// Newest first, as many pages as loaded.
 List<WalletOperation> get operations; String? get nextCursor; bool get isLoading; bool get isLoadingMore;/// The first load failed: nothing to show.
 Failure? get failure;/// The next page failed: the list stays, with «Повторить» under it.
 Failure? get moreFailure;
/// Create a copy of BalanceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BalanceStateCopyWith<BalanceState> get copyWith => _$BalanceStateCopyWithImpl<BalanceState>(this as BalanceState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BalanceState&&(identical(other.summary, summary) || other.summary == summary)&&const DeepCollectionEquality().equals(other.operations, operations)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.moreFailure, moreFailure) || other.moreFailure == moreFailure));
}


@override
int get hashCode => Object.hash(runtimeType,summary,const DeepCollectionEquality().hash(operations),nextCursor,isLoading,isLoadingMore,failure,moreFailure);

@override
String toString() {
  return 'BalanceState(summary: $summary, operations: $operations, nextCursor: $nextCursor, isLoading: $isLoading, isLoadingMore: $isLoadingMore, failure: $failure, moreFailure: $moreFailure)';
}


}

/// @nodoc
abstract mixin class $BalanceStateCopyWith<$Res>  {
  factory $BalanceStateCopyWith(BalanceState value, $Res Function(BalanceState) _then) = _$BalanceStateCopyWithImpl;
@useResult
$Res call({
 WalletSummary? summary, List<WalletOperation> operations, String? nextCursor, bool isLoading, bool isLoadingMore, Failure? failure, Failure? moreFailure
});


$WalletSummaryCopyWith<$Res>? get summary;

}
/// @nodoc
class _$BalanceStateCopyWithImpl<$Res>
    implements $BalanceStateCopyWith<$Res> {
  _$BalanceStateCopyWithImpl(this._self, this._then);

  final BalanceState _self;
  final $Res Function(BalanceState) _then;

/// Create a copy of BalanceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? summary = freezed,Object? operations = null,Object? nextCursor = freezed,Object? isLoading = null,Object? isLoadingMore = null,Object? failure = freezed,Object? moreFailure = freezed,}) {
  return _then(_self.copyWith(
summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as WalletSummary?,operations: null == operations ? _self.operations : operations // ignore: cast_nullable_to_non_nullable
as List<WalletOperation>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,moreFailure: freezed == moreFailure ? _self.moreFailure : moreFailure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}
/// Create a copy of BalanceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletSummaryCopyWith<$Res>? get summary {
    if (_self.summary == null) {
    return null;
  }

  return $WalletSummaryCopyWith<$Res>(_self.summary!, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// Adds pattern-matching-related methods to [BalanceState].
extension BalanceStatePatterns on BalanceState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BalanceState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BalanceState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BalanceState value)  $default,){
final _that = this;
switch (_that) {
case _BalanceState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BalanceState value)?  $default,){
final _that = this;
switch (_that) {
case _BalanceState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WalletSummary? summary,  List<WalletOperation> operations,  String? nextCursor,  bool isLoading,  bool isLoadingMore,  Failure? failure,  Failure? moreFailure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BalanceState() when $default != null:
return $default(_that.summary,_that.operations,_that.nextCursor,_that.isLoading,_that.isLoadingMore,_that.failure,_that.moreFailure);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WalletSummary? summary,  List<WalletOperation> operations,  String? nextCursor,  bool isLoading,  bool isLoadingMore,  Failure? failure,  Failure? moreFailure)  $default,) {final _that = this;
switch (_that) {
case _BalanceState():
return $default(_that.summary,_that.operations,_that.nextCursor,_that.isLoading,_that.isLoadingMore,_that.failure,_that.moreFailure);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WalletSummary? summary,  List<WalletOperation> operations,  String? nextCursor,  bool isLoading,  bool isLoadingMore,  Failure? failure,  Failure? moreFailure)?  $default,) {final _that = this;
switch (_that) {
case _BalanceState() when $default != null:
return $default(_that.summary,_that.operations,_that.nextCursor,_that.isLoading,_that.isLoadingMore,_that.failure,_that.moreFailure);case _:
  return null;

}
}

}

/// @nodoc


class _BalanceState extends BalanceState {
  const _BalanceState({this.summary, final  List<WalletOperation> operations = const <WalletOperation>[], this.nextCursor, this.isLoading = true, this.isLoadingMore = false, this.failure, this.moreFailure}): _operations = operations,super._();
  

@override final  WalletSummary? summary;
/// Newest first, as many pages as loaded.
 final  List<WalletOperation> _operations;
/// Newest first, as many pages as loaded.
@override@JsonKey() List<WalletOperation> get operations {
  if (_operations is EqualUnmodifiableListView) return _operations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_operations);
}

@override final  String? nextCursor;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isLoadingMore;
/// The first load failed: nothing to show.
@override final  Failure? failure;
/// The next page failed: the list stays, with «Повторить» under it.
@override final  Failure? moreFailure;

/// Create a copy of BalanceState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BalanceStateCopyWith<_BalanceState> get copyWith => __$BalanceStateCopyWithImpl<_BalanceState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BalanceState&&(identical(other.summary, summary) || other.summary == summary)&&const DeepCollectionEquality().equals(other._operations, _operations)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.moreFailure, moreFailure) || other.moreFailure == moreFailure));
}


@override
int get hashCode => Object.hash(runtimeType,summary,const DeepCollectionEquality().hash(_operations),nextCursor,isLoading,isLoadingMore,failure,moreFailure);

@override
String toString() {
  return 'BalanceState(summary: $summary, operations: $operations, nextCursor: $nextCursor, isLoading: $isLoading, isLoadingMore: $isLoadingMore, failure: $failure, moreFailure: $moreFailure)';
}


}

/// @nodoc
abstract mixin class _$BalanceStateCopyWith<$Res> implements $BalanceStateCopyWith<$Res> {
  factory _$BalanceStateCopyWith(_BalanceState value, $Res Function(_BalanceState) _then) = __$BalanceStateCopyWithImpl;
@override @useResult
$Res call({
 WalletSummary? summary, List<WalletOperation> operations, String? nextCursor, bool isLoading, bool isLoadingMore, Failure? failure, Failure? moreFailure
});


@override $WalletSummaryCopyWith<$Res>? get summary;

}
/// @nodoc
class __$BalanceStateCopyWithImpl<$Res>
    implements _$BalanceStateCopyWith<$Res> {
  __$BalanceStateCopyWithImpl(this._self, this._then);

  final _BalanceState _self;
  final $Res Function(_BalanceState) _then;

/// Create a copy of BalanceState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? summary = freezed,Object? operations = null,Object? nextCursor = freezed,Object? isLoading = null,Object? isLoadingMore = null,Object? failure = freezed,Object? moreFailure = freezed,}) {
  return _then(_BalanceState(
summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as WalletSummary?,operations: null == operations ? _self._operations : operations // ignore: cast_nullable_to_non_nullable
as List<WalletOperation>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,moreFailure: freezed == moreFailure ? _self.moreFailure : moreFailure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

/// Create a copy of BalanceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletSummaryCopyWith<$Res>? get summary {
    if (_self.summary == null) {
    return null;
  }

  return $WalletSummaryCopyWith<$Res>(_self.summary!, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}

// dart format on
