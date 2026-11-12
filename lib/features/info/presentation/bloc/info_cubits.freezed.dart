// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'info_cubits.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InfoState<T> {

 bool get isLoading; T? get data;/// Only kept while there is nothing to show; a failed refresh leaves
/// the page as it was.
 Failure? get failure;
/// Create a copy of InfoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InfoStateCopyWith<T, InfoState<T>> get copyWith => _$InfoStateCopyWithImpl<T, InfoState<T>>(this as InfoState<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InfoState<T>&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(data),failure);

@override
String toString() {
  return 'InfoState<$T>(isLoading: $isLoading, data: $data, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $InfoStateCopyWith<T,$Res>  {
  factory $InfoStateCopyWith(InfoState<T> value, $Res Function(InfoState<T>) _then) = _$InfoStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, T? data, Failure? failure
});




}
/// @nodoc
class _$InfoStateCopyWithImpl<T,$Res>
    implements $InfoStateCopyWith<T, $Res> {
  _$InfoStateCopyWithImpl(this._self, this._then);

  final InfoState<T> _self;
  final $Res Function(InfoState<T>) _then;

/// Create a copy of InfoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? data = freezed,Object? failure = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

}


/// Adds pattern-matching-related methods to [InfoState].
extension InfoStatePatterns<T> on InfoState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InfoState<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InfoState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InfoState<T> value)  $default,){
final _that = this;
switch (_that) {
case _InfoState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InfoState<T> value)?  $default,){
final _that = this;
switch (_that) {
case _InfoState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  T? data,  Failure? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InfoState() when $default != null:
return $default(_that.isLoading,_that.data,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  T? data,  Failure? failure)  $default,) {final _that = this;
switch (_that) {
case _InfoState():
return $default(_that.isLoading,_that.data,_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  T? data,  Failure? failure)?  $default,) {final _that = this;
switch (_that) {
case _InfoState() when $default != null:
return $default(_that.isLoading,_that.data,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _InfoState<T> implements InfoState<T> {
  const _InfoState({this.isLoading = true, this.data, this.failure});
  

@override@JsonKey() final  bool isLoading;
@override final  T? data;
/// Only kept while there is nothing to show; a failed refresh leaves
/// the page as it was.
@override final  Failure? failure;

/// Create a copy of InfoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InfoStateCopyWith<T, _InfoState<T>> get copyWith => __$InfoStateCopyWithImpl<T, _InfoState<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InfoState<T>&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(data),failure);

@override
String toString() {
  return 'InfoState<$T>(isLoading: $isLoading, data: $data, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$InfoStateCopyWith<T,$Res> implements $InfoStateCopyWith<T, $Res> {
  factory _$InfoStateCopyWith(_InfoState<T> value, $Res Function(_InfoState<T>) _then) = __$InfoStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, T? data, Failure? failure
});




}
/// @nodoc
class __$InfoStateCopyWithImpl<T,$Res>
    implements _$InfoStateCopyWith<T, $Res> {
  __$InfoStateCopyWithImpl(this._self, this._then);

  final _InfoState<T> _self;
  final $Res Function(_InfoState<T>) _then;

/// Create a copy of InfoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? data = freezed,Object? failure = freezed,}) {
  return _then(_InfoState<T>(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}


}

/// @nodoc
mixin _$FaqState {

 bool get isLoading; List<FaqSection> get sections; String get query; Failure? get failure;
/// Create a copy of FaqState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FaqStateCopyWith<FaqState> get copyWith => _$FaqStateCopyWithImpl<FaqState>(this as FaqState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FaqState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.sections, sections)&&(identical(other.query, query) || other.query == query)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(sections),query,failure);

@override
String toString() {
  return 'FaqState(isLoading: $isLoading, sections: $sections, query: $query, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $FaqStateCopyWith<$Res>  {
  factory $FaqStateCopyWith(FaqState value, $Res Function(FaqState) _then) = _$FaqStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<FaqSection> sections, String query, Failure? failure
});




}
/// @nodoc
class _$FaqStateCopyWithImpl<$Res>
    implements $FaqStateCopyWith<$Res> {
  _$FaqStateCopyWithImpl(this._self, this._then);

  final FaqState _self;
  final $Res Function(FaqState) _then;

/// Create a copy of FaqState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? sections = null,Object? query = null,Object? failure = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,sections: null == sections ? _self.sections : sections // ignore: cast_nullable_to_non_nullable
as List<FaqSection>,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

}


/// Adds pattern-matching-related methods to [FaqState].
extension FaqStatePatterns on FaqState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FaqState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FaqState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FaqState value)  $default,){
final _that = this;
switch (_that) {
case _FaqState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FaqState value)?  $default,){
final _that = this;
switch (_that) {
case _FaqState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<FaqSection> sections,  String query,  Failure? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FaqState() when $default != null:
return $default(_that.isLoading,_that.sections,_that.query,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<FaqSection> sections,  String query,  Failure? failure)  $default,) {final _that = this;
switch (_that) {
case _FaqState():
return $default(_that.isLoading,_that.sections,_that.query,_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<FaqSection> sections,  String query,  Failure? failure)?  $default,) {final _that = this;
switch (_that) {
case _FaqState() when $default != null:
return $default(_that.isLoading,_that.sections,_that.query,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _FaqState extends FaqState {
  const _FaqState({this.isLoading = true, final  List<FaqSection> sections = const <FaqSection>[], this.query = '', this.failure}): _sections = sections,super._();
  

@override@JsonKey() final  bool isLoading;
 final  List<FaqSection> _sections;
@override@JsonKey() List<FaqSection> get sections {
  if (_sections is EqualUnmodifiableListView) return _sections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sections);
}

@override@JsonKey() final  String query;
@override final  Failure? failure;

/// Create a copy of FaqState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FaqStateCopyWith<_FaqState> get copyWith => __$FaqStateCopyWithImpl<_FaqState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FaqState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._sections, _sections)&&(identical(other.query, query) || other.query == query)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_sections),query,failure);

@override
String toString() {
  return 'FaqState(isLoading: $isLoading, sections: $sections, query: $query, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$FaqStateCopyWith<$Res> implements $FaqStateCopyWith<$Res> {
  factory _$FaqStateCopyWith(_FaqState value, $Res Function(_FaqState) _then) = __$FaqStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<FaqSection> sections, String query, Failure? failure
});




}
/// @nodoc
class __$FaqStateCopyWithImpl<$Res>
    implements _$FaqStateCopyWith<$Res> {
  __$FaqStateCopyWithImpl(this._self, this._then);

  final _FaqState _self;
  final $Res Function(_FaqState) _then;

/// Create a copy of FaqState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? sections = null,Object? query = null,Object? failure = freezed,}) {
  return _then(_FaqState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,sections: null == sections ? _self._sections : sections // ignore: cast_nullable_to_non_nullable
as List<FaqSection>,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}


}

// dart format on
