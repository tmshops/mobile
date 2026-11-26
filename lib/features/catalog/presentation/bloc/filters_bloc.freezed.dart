// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filters_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FiltersEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FiltersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FiltersEvent()';
}


}

/// @nodoc
class $FiltersEventCopyWith<$Res>  {
$FiltersEventCopyWith(FiltersEvent _, $Res Function(FiltersEvent) __);
}


/// Adds pattern-matching-related methods to [FiltersEvent].
extension FiltersEventPatterns on FiltersEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FiltersStarted value)?  started,TResult Function( FiltersChanged value)?  changed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FiltersStarted() when started != null:
return started(_that);case FiltersChanged() when changed != null:
return changed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FiltersStarted value)  started,required TResult Function( FiltersChanged value)  changed,}){
final _that = this;
switch (_that) {
case FiltersStarted():
return started(_that);case FiltersChanged():
return changed(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FiltersStarted value)?  started,TResult? Function( FiltersChanged value)?  changed,}){
final _that = this;
switch (_that) {
case FiltersStarted() when started != null:
return started(_that);case FiltersChanged() when changed != null:
return changed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String languageCode,  ProductQuery query)?  started,TResult Function( AppliedFilters draft)?  changed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FiltersStarted() when started != null:
return started(_that.languageCode,_that.query);case FiltersChanged() when changed != null:
return changed(_that.draft);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String languageCode,  ProductQuery query)  started,required TResult Function( AppliedFilters draft)  changed,}) {final _that = this;
switch (_that) {
case FiltersStarted():
return started(_that.languageCode,_that.query);case FiltersChanged():
return changed(_that.draft);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String languageCode,  ProductQuery query)?  started,TResult? Function( AppliedFilters draft)?  changed,}) {final _that = this;
switch (_that) {
case FiltersStarted() when started != null:
return started(_that.languageCode,_that.query);case FiltersChanged() when changed != null:
return changed(_that.draft);case _:
  return null;

}
}

}

/// @nodoc


class FiltersStarted implements FiltersEvent {
  const FiltersStarted({required this.languageCode, required this.query});
  

 final  String languageCode;
 final  ProductQuery query;

/// Create a copy of FiltersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FiltersStartedCopyWith<FiltersStarted> get copyWith => _$FiltersStartedCopyWithImpl<FiltersStarted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FiltersStarted&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,languageCode,query);

@override
String toString() {
  return 'FiltersEvent.started(languageCode: $languageCode, query: $query)';
}


}

/// @nodoc
abstract mixin class $FiltersStartedCopyWith<$Res> implements $FiltersEventCopyWith<$Res> {
  factory $FiltersStartedCopyWith(FiltersStarted value, $Res Function(FiltersStarted) _then) = _$FiltersStartedCopyWithImpl;
@useResult
$Res call({
 String languageCode, ProductQuery query
});


$ProductQueryCopyWith<$Res> get query;

}
/// @nodoc
class _$FiltersStartedCopyWithImpl<$Res>
    implements $FiltersStartedCopyWith<$Res> {
  _$FiltersStartedCopyWithImpl(this._self, this._then);

  final FiltersStarted _self;
  final $Res Function(FiltersStarted) _then;

/// Create a copy of FiltersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? languageCode = null,Object? query = null,}) {
  return _then(FiltersStarted(
languageCode: null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as ProductQuery,
  ));
}

/// Create a copy of FiltersEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductQueryCopyWith<$Res> get query {
  
  return $ProductQueryCopyWith<$Res>(_self.query, (value) {
    return _then(_self.copyWith(query: value));
  });
}
}

/// @nodoc


class FiltersChanged implements FiltersEvent {
  const FiltersChanged(this.draft);
  

 final  AppliedFilters draft;

/// Create a copy of FiltersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FiltersChangedCopyWith<FiltersChanged> get copyWith => _$FiltersChangedCopyWithImpl<FiltersChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FiltersChanged&&(identical(other.draft, draft) || other.draft == draft));
}


@override
int get hashCode => Object.hash(runtimeType,draft);

@override
String toString() {
  return 'FiltersEvent.changed(draft: $draft)';
}


}

/// @nodoc
abstract mixin class $FiltersChangedCopyWith<$Res> implements $FiltersEventCopyWith<$Res> {
  factory $FiltersChangedCopyWith(FiltersChanged value, $Res Function(FiltersChanged) _then) = _$FiltersChangedCopyWithImpl;
@useResult
$Res call({
 AppliedFilters draft
});


$AppliedFiltersCopyWith<$Res> get draft;

}
/// @nodoc
class _$FiltersChangedCopyWithImpl<$Res>
    implements $FiltersChangedCopyWith<$Res> {
  _$FiltersChangedCopyWithImpl(this._self, this._then);

  final FiltersChanged _self;
  final $Res Function(FiltersChanged) _then;

/// Create a copy of FiltersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? draft = null,}) {
  return _then(FiltersChanged(
null == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as AppliedFilters,
  ));
}

/// Create a copy of FiltersEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppliedFiltersCopyWith<$Res> get draft {
  
  return $AppliedFiltersCopyWith<$Res>(_self.draft, (value) {
    return _then(_self.copyWith(draft: value));
  });
}
}

/// @nodoc
mixin _$FiltersState {

 AppliedFilters get draft;/// Last known facets; kept while new counts load so nothing jumps.
 List<Facet> get facets;/// Products matching [draft]; `null` until first counted.
 int? get total; bool get isCounting; Failure? get failure;
/// Create a copy of FiltersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FiltersStateCopyWith<FiltersState> get copyWith => _$FiltersStateCopyWithImpl<FiltersState>(this as FiltersState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FiltersState&&(identical(other.draft, draft) || other.draft == draft)&&const DeepCollectionEquality().equals(other.facets, facets)&&(identical(other.total, total) || other.total == total)&&(identical(other.isCounting, isCounting) || other.isCounting == isCounting)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,draft,const DeepCollectionEquality().hash(facets),total,isCounting,failure);

@override
String toString() {
  return 'FiltersState(draft: $draft, facets: $facets, total: $total, isCounting: $isCounting, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $FiltersStateCopyWith<$Res>  {
  factory $FiltersStateCopyWith(FiltersState value, $Res Function(FiltersState) _then) = _$FiltersStateCopyWithImpl;
@useResult
$Res call({
 AppliedFilters draft, List<Facet> facets, int? total, bool isCounting, Failure? failure
});


$AppliedFiltersCopyWith<$Res> get draft;

}
/// @nodoc
class _$FiltersStateCopyWithImpl<$Res>
    implements $FiltersStateCopyWith<$Res> {
  _$FiltersStateCopyWithImpl(this._self, this._then);

  final FiltersState _self;
  final $Res Function(FiltersState) _then;

/// Create a copy of FiltersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? draft = null,Object? facets = null,Object? total = freezed,Object? isCounting = null,Object? failure = freezed,}) {
  return _then(_self.copyWith(
draft: null == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as AppliedFilters,facets: null == facets ? _self.facets : facets // ignore: cast_nullable_to_non_nullable
as List<Facet>,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,isCounting: null == isCounting ? _self.isCounting : isCounting // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}
/// Create a copy of FiltersState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppliedFiltersCopyWith<$Res> get draft {
  
  return $AppliedFiltersCopyWith<$Res>(_self.draft, (value) {
    return _then(_self.copyWith(draft: value));
  });
}
}


/// Adds pattern-matching-related methods to [FiltersState].
extension FiltersStatePatterns on FiltersState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FiltersState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FiltersState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FiltersState value)  $default,){
final _that = this;
switch (_that) {
case _FiltersState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FiltersState value)?  $default,){
final _that = this;
switch (_that) {
case _FiltersState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AppliedFilters draft,  List<Facet> facets,  int? total,  bool isCounting,  Failure? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FiltersState() when $default != null:
return $default(_that.draft,_that.facets,_that.total,_that.isCounting,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AppliedFilters draft,  List<Facet> facets,  int? total,  bool isCounting,  Failure? failure)  $default,) {final _that = this;
switch (_that) {
case _FiltersState():
return $default(_that.draft,_that.facets,_that.total,_that.isCounting,_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AppliedFilters draft,  List<Facet> facets,  int? total,  bool isCounting,  Failure? failure)?  $default,) {final _that = this;
switch (_that) {
case _FiltersState() when $default != null:
return $default(_that.draft,_that.facets,_that.total,_that.isCounting,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _FiltersState implements FiltersState {
  const _FiltersState({this.draft = const AppliedFilters(), final  List<Facet> facets = const <Facet>[], this.total, this.isCounting = true, this.failure}): _facets = facets;
  

@override@JsonKey() final  AppliedFilters draft;
/// Last known facets; kept while new counts load so nothing jumps.
 final  List<Facet> _facets;
/// Last known facets; kept while new counts load so nothing jumps.
@override@JsonKey() List<Facet> get facets {
  if (_facets is EqualUnmodifiableListView) return _facets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_facets);
}

/// Products matching [draft]; `null` until first counted.
@override final  int? total;
@override@JsonKey() final  bool isCounting;
@override final  Failure? failure;

/// Create a copy of FiltersState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FiltersStateCopyWith<_FiltersState> get copyWith => __$FiltersStateCopyWithImpl<_FiltersState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FiltersState&&(identical(other.draft, draft) || other.draft == draft)&&const DeepCollectionEquality().equals(other._facets, _facets)&&(identical(other.total, total) || other.total == total)&&(identical(other.isCounting, isCounting) || other.isCounting == isCounting)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,draft,const DeepCollectionEquality().hash(_facets),total,isCounting,failure);

@override
String toString() {
  return 'FiltersState(draft: $draft, facets: $facets, total: $total, isCounting: $isCounting, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$FiltersStateCopyWith<$Res> implements $FiltersStateCopyWith<$Res> {
  factory _$FiltersStateCopyWith(_FiltersState value, $Res Function(_FiltersState) _then) = __$FiltersStateCopyWithImpl;
@override @useResult
$Res call({
 AppliedFilters draft, List<Facet> facets, int? total, bool isCounting, Failure? failure
});


@override $AppliedFiltersCopyWith<$Res> get draft;

}
/// @nodoc
class __$FiltersStateCopyWithImpl<$Res>
    implements _$FiltersStateCopyWith<$Res> {
  __$FiltersStateCopyWithImpl(this._self, this._then);

  final _FiltersState _self;
  final $Res Function(_FiltersState) _then;

/// Create a copy of FiltersState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? draft = null,Object? facets = null,Object? total = freezed,Object? isCounting = null,Object? failure = freezed,}) {
  return _then(_FiltersState(
draft: null == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as AppliedFilters,facets: null == facets ? _self._facets : facets // ignore: cast_nullable_to_non_nullable
as List<Facet>,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,isCounting: null == isCounting ? _self.isCounting : isCounting // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

/// Create a copy of FiltersState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppliedFiltersCopyWith<$Res> get draft {
  
  return $AppliedFiltersCopyWith<$Res>(_self.draft, (value) {
    return _then(_self.copyWith(draft: value));
  });
}
}

// dart format on
