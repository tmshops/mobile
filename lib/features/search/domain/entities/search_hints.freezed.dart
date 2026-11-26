// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_hints.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchHints {

 List<String> get suggestions;/// The server's fix of a typo: «Возможно, вы искали …».
 String? get didYouMean;
/// Create a copy of SearchHints
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchHintsCopyWith<SearchHints> get copyWith => _$SearchHintsCopyWithImpl<SearchHints>(this as SearchHints, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchHints&&const DeepCollectionEquality().equals(other.suggestions, suggestions)&&(identical(other.didYouMean, didYouMean) || other.didYouMean == didYouMean));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(suggestions),didYouMean);

@override
String toString() {
  return 'SearchHints(suggestions: $suggestions, didYouMean: $didYouMean)';
}


}

/// @nodoc
abstract mixin class $SearchHintsCopyWith<$Res>  {
  factory $SearchHintsCopyWith(SearchHints value, $Res Function(SearchHints) _then) = _$SearchHintsCopyWithImpl;
@useResult
$Res call({
 List<String> suggestions, String? didYouMean
});




}
/// @nodoc
class _$SearchHintsCopyWithImpl<$Res>
    implements $SearchHintsCopyWith<$Res> {
  _$SearchHintsCopyWithImpl(this._self, this._then);

  final SearchHints _self;
  final $Res Function(SearchHints) _then;

/// Create a copy of SearchHints
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? suggestions = null,Object? didYouMean = freezed,}) {
  return _then(_self.copyWith(
suggestions: null == suggestions ? _self.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<String>,didYouMean: freezed == didYouMean ? _self.didYouMean : didYouMean // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchHints].
extension SearchHintsPatterns on SearchHints {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchHints value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchHints() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchHints value)  $default,){
final _that = this;
switch (_that) {
case _SearchHints():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchHints value)?  $default,){
final _that = this;
switch (_that) {
case _SearchHints() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> suggestions,  String? didYouMean)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchHints() when $default != null:
return $default(_that.suggestions,_that.didYouMean);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> suggestions,  String? didYouMean)  $default,) {final _that = this;
switch (_that) {
case _SearchHints():
return $default(_that.suggestions,_that.didYouMean);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> suggestions,  String? didYouMean)?  $default,) {final _that = this;
switch (_that) {
case _SearchHints() when $default != null:
return $default(_that.suggestions,_that.didYouMean);case _:
  return null;

}
}

}

/// @nodoc


class _SearchHints implements SearchHints {
  const _SearchHints({final  List<String> suggestions = const <String>[], this.didYouMean}): _suggestions = suggestions;
  

 final  List<String> _suggestions;
@override@JsonKey() List<String> get suggestions {
  if (_suggestions is EqualUnmodifiableListView) return _suggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestions);
}

/// The server's fix of a typo: «Возможно, вы искали …».
@override final  String? didYouMean;

/// Create a copy of SearchHints
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchHintsCopyWith<_SearchHints> get copyWith => __$SearchHintsCopyWithImpl<_SearchHints>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchHints&&const DeepCollectionEquality().equals(other._suggestions, _suggestions)&&(identical(other.didYouMean, didYouMean) || other.didYouMean == didYouMean));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_suggestions),didYouMean);

@override
String toString() {
  return 'SearchHints(suggestions: $suggestions, didYouMean: $didYouMean)';
}


}

/// @nodoc
abstract mixin class _$SearchHintsCopyWith<$Res> implements $SearchHintsCopyWith<$Res> {
  factory _$SearchHintsCopyWith(_SearchHints value, $Res Function(_SearchHints) _then) = __$SearchHintsCopyWithImpl;
@override @useResult
$Res call({
 List<String> suggestions, String? didYouMean
});




}
/// @nodoc
class __$SearchHintsCopyWithImpl<$Res>
    implements _$SearchHintsCopyWith<$Res> {
  __$SearchHintsCopyWithImpl(this._self, this._then);

  final _SearchHints _self;
  final $Res Function(_SearchHints) _then;

/// Create a copy of SearchHints
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? suggestions = null,Object? didYouMean = freezed,}) {
  return _then(_SearchHints(
suggestions: null == suggestions ? _self._suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<String>,didYouMean: freezed == didYouMean ? _self.didYouMean : didYouMean // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
