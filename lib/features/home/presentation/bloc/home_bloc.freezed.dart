// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HomeStarted value)?  started,TResult Function( HomeRefreshed value)?  refreshed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HomeStarted() when started != null:
return started(_that);case HomeRefreshed() when refreshed != null:
return refreshed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HomeStarted value)  started,required TResult Function( HomeRefreshed value)  refreshed,}){
final _that = this;
switch (_that) {
case HomeStarted():
return started(_that);case HomeRefreshed():
return refreshed(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HomeStarted value)?  started,TResult? Function( HomeRefreshed value)?  refreshed,}){
final _that = this;
switch (_that) {
case HomeStarted() when started != null:
return started(_that);case HomeRefreshed() when refreshed != null:
return refreshed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String languageCode)?  started,TResult Function()?  refreshed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HomeStarted() when started != null:
return started(_that.languageCode);case HomeRefreshed() when refreshed != null:
return refreshed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String languageCode)  started,required TResult Function()  refreshed,}) {final _that = this;
switch (_that) {
case HomeStarted():
return started(_that.languageCode);case HomeRefreshed():
return refreshed();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String languageCode)?  started,TResult? Function()?  refreshed,}) {final _that = this;
switch (_that) {
case HomeStarted() when started != null:
return started(_that.languageCode);case HomeRefreshed() when refreshed != null:
return refreshed();case _:
  return null;

}
}

}

/// @nodoc


class HomeStarted implements HomeEvent {
  const HomeStarted(this.languageCode);
  

 final  String languageCode;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStartedCopyWith<HomeStarted> get copyWith => _$HomeStartedCopyWithImpl<HomeStarted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeStarted&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode));
}


@override
int get hashCode => Object.hash(runtimeType,languageCode);

@override
String toString() {
  return 'HomeEvent.started(languageCode: $languageCode)';
}


}

/// @nodoc
abstract mixin class $HomeStartedCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $HomeStartedCopyWith(HomeStarted value, $Res Function(HomeStarted) _then) = _$HomeStartedCopyWithImpl;
@useResult
$Res call({
 String languageCode
});




}
/// @nodoc
class _$HomeStartedCopyWithImpl<$Res>
    implements $HomeStartedCopyWith<$Res> {
  _$HomeStartedCopyWithImpl(this._self, this._then);

  final HomeStarted _self;
  final $Res Function(HomeStarted) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? languageCode = null,}) {
  return _then(HomeStarted(
null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class HomeRefreshed implements HomeEvent {
  const HomeRefreshed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeRefreshed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.refreshed()';
}


}




/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HomeInitial value)?  initial,TResult Function( HomeLoading value)?  loading,TResult Function( HomeLoaded value)?  loaded,TResult Function( HomeFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HomeInitial() when initial != null:
return initial(_that);case HomeLoading() when loading != null:
return loading(_that);case HomeLoaded() when loaded != null:
return loaded(_that);case HomeFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HomeInitial value)  initial,required TResult Function( HomeLoading value)  loading,required TResult Function( HomeLoaded value)  loaded,required TResult Function( HomeFailure value)  failure,}){
final _that = this;
switch (_that) {
case HomeInitial():
return initial(_that);case HomeLoading():
return loading(_that);case HomeLoaded():
return loaded(_that);case HomeFailure():
return failure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HomeInitial value)?  initial,TResult? Function( HomeLoading value)?  loading,TResult? Function( HomeLoaded value)?  loaded,TResult? Function( HomeFailure value)?  failure,}){
final _that = this;
switch (_that) {
case HomeInitial() when initial != null:
return initial(_that);case HomeLoading() when loading != null:
return loading(_that);case HomeLoaded() when loaded != null:
return loaded(_that);case HomeFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( HomeContent content,  bool isRefreshing,  Failure? refreshFailure)?  loaded,TResult Function( Failure failure)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HomeInitial() when initial != null:
return initial();case HomeLoading() when loading != null:
return loading();case HomeLoaded() when loaded != null:
return loaded(_that.content,_that.isRefreshing,_that.refreshFailure);case HomeFailure() when failure != null:
return failure(_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( HomeContent content,  bool isRefreshing,  Failure? refreshFailure)  loaded,required TResult Function( Failure failure)  failure,}) {final _that = this;
switch (_that) {
case HomeInitial():
return initial();case HomeLoading():
return loading();case HomeLoaded():
return loaded(_that.content,_that.isRefreshing,_that.refreshFailure);case HomeFailure():
return failure(_that.failure);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( HomeContent content,  bool isRefreshing,  Failure? refreshFailure)?  loaded,TResult? Function( Failure failure)?  failure,}) {final _that = this;
switch (_that) {
case HomeInitial() when initial != null:
return initial();case HomeLoading() when loading != null:
return loading();case HomeLoaded() when loaded != null:
return loaded(_that.content,_that.isRefreshing,_that.refreshFailure);case HomeFailure() when failure != null:
return failure(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class HomeInitial implements HomeState {
  const HomeInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class HomeLoading implements HomeState {
  const HomeLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.loading()';
}


}




/// @nodoc


class HomeLoaded implements HomeState {
  const HomeLoaded({required this.content, this.isRefreshing = false, this.refreshFailure});
  

 final  HomeContent content;
/// A download is running behind the shown content.
@JsonKey() final  bool isRefreshing;
/// The last download failed; [content] is older (cache or previous).
 final  Failure? refreshFailure;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeLoadedCopyWith<HomeLoaded> get copyWith => _$HomeLoadedCopyWithImpl<HomeLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeLoaded&&(identical(other.content, content) || other.content == content)&&(identical(other.isRefreshing, isRefreshing) || other.isRefreshing == isRefreshing)&&(identical(other.refreshFailure, refreshFailure) || other.refreshFailure == refreshFailure));
}


@override
int get hashCode => Object.hash(runtimeType,content,isRefreshing,refreshFailure);

@override
String toString() {
  return 'HomeState.loaded(content: $content, isRefreshing: $isRefreshing, refreshFailure: $refreshFailure)';
}


}

/// @nodoc
abstract mixin class $HomeLoadedCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $HomeLoadedCopyWith(HomeLoaded value, $Res Function(HomeLoaded) _then) = _$HomeLoadedCopyWithImpl;
@useResult
$Res call({
 HomeContent content, bool isRefreshing, Failure? refreshFailure
});


$HomeContentCopyWith<$Res> get content;

}
/// @nodoc
class _$HomeLoadedCopyWithImpl<$Res>
    implements $HomeLoadedCopyWith<$Res> {
  _$HomeLoadedCopyWithImpl(this._self, this._then);

  final HomeLoaded _self;
  final $Res Function(HomeLoaded) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? content = null,Object? isRefreshing = null,Object? refreshFailure = freezed,}) {
  return _then(HomeLoaded(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as HomeContent,isRefreshing: null == isRefreshing ? _self.isRefreshing : isRefreshing // ignore: cast_nullable_to_non_nullable
as bool,refreshFailure: freezed == refreshFailure ? _self.refreshFailure : refreshFailure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeContentCopyWith<$Res> get content {
  
  return $HomeContentCopyWith<$Res>(_self.content, (value) {
    return _then(_self.copyWith(content: value));
  });
}
}

/// @nodoc


class HomeFailure implements HomeState {
  const HomeFailure(this.failure);
  

 final  Failure failure;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeFailureCopyWith<HomeFailure> get copyWith => _$HomeFailureCopyWithImpl<HomeFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeFailure&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'HomeState.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $HomeFailureCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $HomeFailureCopyWith(HomeFailure value, $Res Function(HomeFailure) _then) = _$HomeFailureCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class _$HomeFailureCopyWithImpl<$Res>
    implements $HomeFailureCopyWith<$Res> {
  _$HomeFailureCopyWithImpl(this._self, this._then);

  final HomeFailure _self;
  final $Res Function(HomeFailure) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(HomeFailure(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

// dart format on
