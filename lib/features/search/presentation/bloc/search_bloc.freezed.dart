// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent()';
}


}

/// @nodoc
class $SearchEventCopyWith<$Res>  {
$SearchEventCopyWith(SearchEvent _, $Res Function(SearchEvent) __);
}


/// Adds pattern-matching-related methods to [SearchEvent].
extension SearchEventPatterns on SearchEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SearchStarted value)?  started,TResult Function( SearchTextChanged value)?  textChanged,TResult Function( SearchSubmitted value)?  submitted,TResult Function( SearchHistoryRemoved value)?  historyRemoved,TResult Function( SearchHistoryCleared value)?  historyCleared,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SearchStarted() when started != null:
return started(_that);case SearchTextChanged() when textChanged != null:
return textChanged(_that);case SearchSubmitted() when submitted != null:
return submitted(_that);case SearchHistoryRemoved() when historyRemoved != null:
return historyRemoved(_that);case SearchHistoryCleared() when historyCleared != null:
return historyCleared(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SearchStarted value)  started,required TResult Function( SearchTextChanged value)  textChanged,required TResult Function( SearchSubmitted value)  submitted,required TResult Function( SearchHistoryRemoved value)  historyRemoved,required TResult Function( SearchHistoryCleared value)  historyCleared,}){
final _that = this;
switch (_that) {
case SearchStarted():
return started(_that);case SearchTextChanged():
return textChanged(_that);case SearchSubmitted():
return submitted(_that);case SearchHistoryRemoved():
return historyRemoved(_that);case SearchHistoryCleared():
return historyCleared(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SearchStarted value)?  started,TResult? Function( SearchTextChanged value)?  textChanged,TResult? Function( SearchSubmitted value)?  submitted,TResult? Function( SearchHistoryRemoved value)?  historyRemoved,TResult? Function( SearchHistoryCleared value)?  historyCleared,}){
final _that = this;
switch (_that) {
case SearchStarted() when started != null:
return started(_that);case SearchTextChanged() when textChanged != null:
return textChanged(_that);case SearchSubmitted() when submitted != null:
return submitted(_that);case SearchHistoryRemoved() when historyRemoved != null:
return historyRemoved(_that);case SearchHistoryCleared() when historyCleared != null:
return historyCleared(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String languageCode,  String text)?  started,TResult Function( String text)?  textChanged,TResult Function( String text)?  submitted,TResult Function( String query)?  historyRemoved,TResult Function()?  historyCleared,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SearchStarted() when started != null:
return started(_that.languageCode,_that.text);case SearchTextChanged() when textChanged != null:
return textChanged(_that.text);case SearchSubmitted() when submitted != null:
return submitted(_that.text);case SearchHistoryRemoved() when historyRemoved != null:
return historyRemoved(_that.query);case SearchHistoryCleared() when historyCleared != null:
return historyCleared();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String languageCode,  String text)  started,required TResult Function( String text)  textChanged,required TResult Function( String text)  submitted,required TResult Function( String query)  historyRemoved,required TResult Function()  historyCleared,}) {final _that = this;
switch (_that) {
case SearchStarted():
return started(_that.languageCode,_that.text);case SearchTextChanged():
return textChanged(_that.text);case SearchSubmitted():
return submitted(_that.text);case SearchHistoryRemoved():
return historyRemoved(_that.query);case SearchHistoryCleared():
return historyCleared();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String languageCode,  String text)?  started,TResult? Function( String text)?  textChanged,TResult? Function( String text)?  submitted,TResult? Function( String query)?  historyRemoved,TResult? Function()?  historyCleared,}) {final _that = this;
switch (_that) {
case SearchStarted() when started != null:
return started(_that.languageCode,_that.text);case SearchTextChanged() when textChanged != null:
return textChanged(_that.text);case SearchSubmitted() when submitted != null:
return submitted(_that.text);case SearchHistoryRemoved() when historyRemoved != null:
return historyRemoved(_that.query);case SearchHistoryCleared() when historyCleared != null:
return historyCleared();case _:
  return null;

}
}

}

/// @nodoc


class SearchStarted implements SearchEvent {
  const SearchStarted({required this.languageCode, this.text = ''});
  

 final  String languageCode;
@JsonKey() final  String text;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchStartedCopyWith<SearchStarted> get copyWith => _$SearchStartedCopyWithImpl<SearchStarted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchStarted&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,languageCode,text);

@override
String toString() {
  return 'SearchEvent.started(languageCode: $languageCode, text: $text)';
}


}

/// @nodoc
abstract mixin class $SearchStartedCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory $SearchStartedCopyWith(SearchStarted value, $Res Function(SearchStarted) _then) = _$SearchStartedCopyWithImpl;
@useResult
$Res call({
 String languageCode, String text
});




}
/// @nodoc
class _$SearchStartedCopyWithImpl<$Res>
    implements $SearchStartedCopyWith<$Res> {
  _$SearchStartedCopyWithImpl(this._self, this._then);

  final SearchStarted _self;
  final $Res Function(SearchStarted) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? languageCode = null,Object? text = null,}) {
  return _then(SearchStarted(
languageCode: null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SearchTextChanged implements SearchEvent {
  const SearchTextChanged(this.text);
  

 final  String text;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchTextChangedCopyWith<SearchTextChanged> get copyWith => _$SearchTextChangedCopyWithImpl<SearchTextChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchTextChanged&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString() {
  return 'SearchEvent.textChanged(text: $text)';
}


}

/// @nodoc
abstract mixin class $SearchTextChangedCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory $SearchTextChangedCopyWith(SearchTextChanged value, $Res Function(SearchTextChanged) _then) = _$SearchTextChangedCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class _$SearchTextChangedCopyWithImpl<$Res>
    implements $SearchTextChangedCopyWith<$Res> {
  _$SearchTextChangedCopyWithImpl(this._self, this._then);

  final SearchTextChanged _self;
  final $Res Function(SearchTextChanged) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(SearchTextChanged(
null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SearchSubmitted implements SearchEvent {
  const SearchSubmitted(this.text);
  

 final  String text;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchSubmittedCopyWith<SearchSubmitted> get copyWith => _$SearchSubmittedCopyWithImpl<SearchSubmitted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchSubmitted&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString() {
  return 'SearchEvent.submitted(text: $text)';
}


}

/// @nodoc
abstract mixin class $SearchSubmittedCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory $SearchSubmittedCopyWith(SearchSubmitted value, $Res Function(SearchSubmitted) _then) = _$SearchSubmittedCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class _$SearchSubmittedCopyWithImpl<$Res>
    implements $SearchSubmittedCopyWith<$Res> {
  _$SearchSubmittedCopyWithImpl(this._self, this._then);

  final SearchSubmitted _self;
  final $Res Function(SearchSubmitted) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(SearchSubmitted(
null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SearchHistoryRemoved implements SearchEvent {
  const SearchHistoryRemoved(this.query);
  

 final  String query;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchHistoryRemovedCopyWith<SearchHistoryRemoved> get copyWith => _$SearchHistoryRemovedCopyWithImpl<SearchHistoryRemoved>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchHistoryRemoved&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'SearchEvent.historyRemoved(query: $query)';
}


}

/// @nodoc
abstract mixin class $SearchHistoryRemovedCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory $SearchHistoryRemovedCopyWith(SearchHistoryRemoved value, $Res Function(SearchHistoryRemoved) _then) = _$SearchHistoryRemovedCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$SearchHistoryRemovedCopyWithImpl<$Res>
    implements $SearchHistoryRemovedCopyWith<$Res> {
  _$SearchHistoryRemovedCopyWithImpl(this._self, this._then);

  final SearchHistoryRemoved _self;
  final $Res Function(SearchHistoryRemoved) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(SearchHistoryRemoved(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SearchHistoryCleared implements SearchEvent {
  const SearchHistoryCleared();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchHistoryCleared);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent.historyCleared()';
}


}




/// @nodoc
mixin _$SearchState {

 String get text; List<String> get history; List<String> get popular; SearchHints get hints;/// Hints for the current [text] are on their way.
 bool get isLoadingHints;/// A marketplace link in [text]: it opens the product instead of a
/// search (TZ §5.9).
 String? get link;
/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchStateCopyWith<SearchState> get copyWith => _$SearchStateCopyWithImpl<SearchState>(this as SearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchState&&(identical(other.text, text) || other.text == text)&&const DeepCollectionEquality().equals(other.history, history)&&const DeepCollectionEquality().equals(other.popular, popular)&&(identical(other.hints, hints) || other.hints == hints)&&(identical(other.isLoadingHints, isLoadingHints) || other.isLoadingHints == isLoadingHints)&&(identical(other.link, link) || other.link == link));
}


@override
int get hashCode => Object.hash(runtimeType,text,const DeepCollectionEquality().hash(history),const DeepCollectionEquality().hash(popular),hints,isLoadingHints,link);

@override
String toString() {
  return 'SearchState(text: $text, history: $history, popular: $popular, hints: $hints, isLoadingHints: $isLoadingHints, link: $link)';
}


}

/// @nodoc
abstract mixin class $SearchStateCopyWith<$Res>  {
  factory $SearchStateCopyWith(SearchState value, $Res Function(SearchState) _then) = _$SearchStateCopyWithImpl;
@useResult
$Res call({
 String text, List<String> history, List<String> popular, SearchHints hints, bool isLoadingHints, String? link
});


$SearchHintsCopyWith<$Res> get hints;

}
/// @nodoc
class _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._self, this._then);

  final SearchState _self;
  final $Res Function(SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? history = null,Object? popular = null,Object? hints = null,Object? isLoadingHints = null,Object? link = freezed,}) {
  return _then(_self.copyWith(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<String>,popular: null == popular ? _self.popular : popular // ignore: cast_nullable_to_non_nullable
as List<String>,hints: null == hints ? _self.hints : hints // ignore: cast_nullable_to_non_nullable
as SearchHints,isLoadingHints: null == isLoadingHints ? _self.isLoadingHints : isLoadingHints // ignore: cast_nullable_to_non_nullable
as bool,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchHintsCopyWith<$Res> get hints {
  
  return $SearchHintsCopyWith<$Res>(_self.hints, (value) {
    return _then(_self.copyWith(hints: value));
  });
}
}


/// Adds pattern-matching-related methods to [SearchState].
extension SearchStatePatterns on SearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchState value)  $default,){
final _that = this;
switch (_that) {
case _SearchState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchState value)?  $default,){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String text,  List<String> history,  List<String> popular,  SearchHints hints,  bool isLoadingHints,  String? link)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.text,_that.history,_that.popular,_that.hints,_that.isLoadingHints,_that.link);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String text,  List<String> history,  List<String> popular,  SearchHints hints,  bool isLoadingHints,  String? link)  $default,) {final _that = this;
switch (_that) {
case _SearchState():
return $default(_that.text,_that.history,_that.popular,_that.hints,_that.isLoadingHints,_that.link);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String text,  List<String> history,  List<String> popular,  SearchHints hints,  bool isLoadingHints,  String? link)?  $default,) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.text,_that.history,_that.popular,_that.hints,_that.isLoadingHints,_that.link);case _:
  return null;

}
}

}

/// @nodoc


class _SearchState extends SearchState {
  const _SearchState({this.text = '', final  List<String> history = const <String>[], final  List<String> popular = const <String>[], this.hints = const SearchHints(), this.isLoadingHints = false, this.link}): _history = history,_popular = popular,super._();
  

@override@JsonKey() final  String text;
 final  List<String> _history;
@override@JsonKey() List<String> get history {
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_history);
}

 final  List<String> _popular;
@override@JsonKey() List<String> get popular {
  if (_popular is EqualUnmodifiableListView) return _popular;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_popular);
}

@override@JsonKey() final  SearchHints hints;
/// Hints for the current [text] are on their way.
@override@JsonKey() final  bool isLoadingHints;
/// A marketplace link in [text]: it opens the product instead of a
/// search (TZ §5.9).
@override final  String? link;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchStateCopyWith<_SearchState> get copyWith => __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchState&&(identical(other.text, text) || other.text == text)&&const DeepCollectionEquality().equals(other._history, _history)&&const DeepCollectionEquality().equals(other._popular, _popular)&&(identical(other.hints, hints) || other.hints == hints)&&(identical(other.isLoadingHints, isLoadingHints) || other.isLoadingHints == isLoadingHints)&&(identical(other.link, link) || other.link == link));
}


@override
int get hashCode => Object.hash(runtimeType,text,const DeepCollectionEquality().hash(_history),const DeepCollectionEquality().hash(_popular),hints,isLoadingHints,link);

@override
String toString() {
  return 'SearchState(text: $text, history: $history, popular: $popular, hints: $hints, isLoadingHints: $isLoadingHints, link: $link)';
}


}

/// @nodoc
abstract mixin class _$SearchStateCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(_SearchState value, $Res Function(_SearchState) _then) = __$SearchStateCopyWithImpl;
@override @useResult
$Res call({
 String text, List<String> history, List<String> popular, SearchHints hints, bool isLoadingHints, String? link
});


@override $SearchHintsCopyWith<$Res> get hints;

}
/// @nodoc
class __$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(this._self, this._then);

  final _SearchState _self;
  final $Res Function(_SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? history = null,Object? popular = null,Object? hints = null,Object? isLoadingHints = null,Object? link = freezed,}) {
  return _then(_SearchState(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,history: null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<String>,popular: null == popular ? _self._popular : popular // ignore: cast_nullable_to_non_nullable
as List<String>,hints: null == hints ? _self.hints : hints // ignore: cast_nullable_to_non_nullable
as SearchHints,isLoadingHints: null == isLoadingHints ? _self.isLoadingHints : isLoadingHints // ignore: cast_nullable_to_non_nullable
as bool,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchHintsCopyWith<$Res> get hints {
  
  return $SearchHintsCopyWith<$Res>(_self.hints, (value) {
    return _then(_self.copyWith(hints: value));
  });
}
}

// dart format on
