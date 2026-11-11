// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_tree_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryTreeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryTreeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryTreeEvent()';
}


}

/// @nodoc
class $CategoryTreeEventCopyWith<$Res>  {
$CategoryTreeEventCopyWith(CategoryTreeEvent _, $Res Function(CategoryTreeEvent) __);
}


/// Adds pattern-matching-related methods to [CategoryTreeEvent].
extension CategoryTreeEventPatterns on CategoryTreeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CategoryTreeStarted value)?  started,TResult Function( CategoryTreeRefreshed value)?  refreshed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CategoryTreeStarted() when started != null:
return started(_that);case CategoryTreeRefreshed() when refreshed != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CategoryTreeStarted value)  started,required TResult Function( CategoryTreeRefreshed value)  refreshed,}){
final _that = this;
switch (_that) {
case CategoryTreeStarted():
return started(_that);case CategoryTreeRefreshed():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CategoryTreeStarted value)?  started,TResult? Function( CategoryTreeRefreshed value)?  refreshed,}){
final _that = this;
switch (_that) {
case CategoryTreeStarted() when started != null:
return started(_that);case CategoryTreeRefreshed() when refreshed != null:
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
case CategoryTreeStarted() when started != null:
return started(_that.languageCode);case CategoryTreeRefreshed() when refreshed != null:
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
case CategoryTreeStarted():
return started(_that.languageCode);case CategoryTreeRefreshed():
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
case CategoryTreeStarted() when started != null:
return started(_that.languageCode);case CategoryTreeRefreshed() when refreshed != null:
return refreshed();case _:
  return null;

}
}

}

/// @nodoc


class CategoryTreeStarted implements CategoryTreeEvent {
  const CategoryTreeStarted(this.languageCode);
  

 final  String languageCode;

/// Create a copy of CategoryTreeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryTreeStartedCopyWith<CategoryTreeStarted> get copyWith => _$CategoryTreeStartedCopyWithImpl<CategoryTreeStarted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryTreeStarted&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode));
}


@override
int get hashCode => Object.hash(runtimeType,languageCode);

@override
String toString() {
  return 'CategoryTreeEvent.started(languageCode: $languageCode)';
}


}

/// @nodoc
abstract mixin class $CategoryTreeStartedCopyWith<$Res> implements $CategoryTreeEventCopyWith<$Res> {
  factory $CategoryTreeStartedCopyWith(CategoryTreeStarted value, $Res Function(CategoryTreeStarted) _then) = _$CategoryTreeStartedCopyWithImpl;
@useResult
$Res call({
 String languageCode
});




}
/// @nodoc
class _$CategoryTreeStartedCopyWithImpl<$Res>
    implements $CategoryTreeStartedCopyWith<$Res> {
  _$CategoryTreeStartedCopyWithImpl(this._self, this._then);

  final CategoryTreeStarted _self;
  final $Res Function(CategoryTreeStarted) _then;

/// Create a copy of CategoryTreeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? languageCode = null,}) {
  return _then(CategoryTreeStarted(
null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CategoryTreeRefreshed implements CategoryTreeEvent {
  const CategoryTreeRefreshed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryTreeRefreshed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryTreeEvent.refreshed()';
}


}




/// @nodoc
mixin _$CategoryTreeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryTreeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryTreeState()';
}


}

/// @nodoc
class $CategoryTreeStateCopyWith<$Res>  {
$CategoryTreeStateCopyWith(CategoryTreeState _, $Res Function(CategoryTreeState) __);
}


/// Adds pattern-matching-related methods to [CategoryTreeState].
extension CategoryTreeStatePatterns on CategoryTreeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CategoryTreeInitial value)?  initial,TResult Function( CategoryTreeLoading value)?  loading,TResult Function( CategoryTreeLoaded value)?  loaded,TResult Function( CategoryTreeFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CategoryTreeInitial() when initial != null:
return initial(_that);case CategoryTreeLoading() when loading != null:
return loading(_that);case CategoryTreeLoaded() when loaded != null:
return loaded(_that);case CategoryTreeFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CategoryTreeInitial value)  initial,required TResult Function( CategoryTreeLoading value)  loading,required TResult Function( CategoryTreeLoaded value)  loaded,required TResult Function( CategoryTreeFailure value)  failure,}){
final _that = this;
switch (_that) {
case CategoryTreeInitial():
return initial(_that);case CategoryTreeLoading():
return loading(_that);case CategoryTreeLoaded():
return loaded(_that);case CategoryTreeFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CategoryTreeInitial value)?  initial,TResult? Function( CategoryTreeLoading value)?  loading,TResult? Function( CategoryTreeLoaded value)?  loaded,TResult? Function( CategoryTreeFailure value)?  failure,}){
final _that = this;
switch (_that) {
case CategoryTreeInitial() when initial != null:
return initial(_that);case CategoryTreeLoading() when loading != null:
return loading(_that);case CategoryTreeLoaded() when loaded != null:
return loaded(_that);case CategoryTreeFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( CategoryTree tree,  bool isRefreshing,  Failure? refreshFailure)?  loaded,TResult Function( Failure failure)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CategoryTreeInitial() when initial != null:
return initial();case CategoryTreeLoading() when loading != null:
return loading();case CategoryTreeLoaded() when loaded != null:
return loaded(_that.tree,_that.isRefreshing,_that.refreshFailure);case CategoryTreeFailure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( CategoryTree tree,  bool isRefreshing,  Failure? refreshFailure)  loaded,required TResult Function( Failure failure)  failure,}) {final _that = this;
switch (_that) {
case CategoryTreeInitial():
return initial();case CategoryTreeLoading():
return loading();case CategoryTreeLoaded():
return loaded(_that.tree,_that.isRefreshing,_that.refreshFailure);case CategoryTreeFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( CategoryTree tree,  bool isRefreshing,  Failure? refreshFailure)?  loaded,TResult? Function( Failure failure)?  failure,}) {final _that = this;
switch (_that) {
case CategoryTreeInitial() when initial != null:
return initial();case CategoryTreeLoading() when loading != null:
return loading();case CategoryTreeLoaded() when loaded != null:
return loaded(_that.tree,_that.isRefreshing,_that.refreshFailure);case CategoryTreeFailure() when failure != null:
return failure(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class CategoryTreeInitial implements CategoryTreeState {
  const CategoryTreeInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryTreeInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryTreeState.initial()';
}


}




/// @nodoc


class CategoryTreeLoading implements CategoryTreeState {
  const CategoryTreeLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryTreeLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryTreeState.loading()';
}


}




/// @nodoc


class CategoryTreeLoaded implements CategoryTreeState {
  const CategoryTreeLoaded({required this.tree, this.isRefreshing = false, this.refreshFailure});
  

 final  CategoryTree tree;
@JsonKey() final  bool isRefreshing;
 final  Failure? refreshFailure;

/// Create a copy of CategoryTreeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryTreeLoadedCopyWith<CategoryTreeLoaded> get copyWith => _$CategoryTreeLoadedCopyWithImpl<CategoryTreeLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryTreeLoaded&&(identical(other.tree, tree) || other.tree == tree)&&(identical(other.isRefreshing, isRefreshing) || other.isRefreshing == isRefreshing)&&(identical(other.refreshFailure, refreshFailure) || other.refreshFailure == refreshFailure));
}


@override
int get hashCode => Object.hash(runtimeType,tree,isRefreshing,refreshFailure);

@override
String toString() {
  return 'CategoryTreeState.loaded(tree: $tree, isRefreshing: $isRefreshing, refreshFailure: $refreshFailure)';
}


}

/// @nodoc
abstract mixin class $CategoryTreeLoadedCopyWith<$Res> implements $CategoryTreeStateCopyWith<$Res> {
  factory $CategoryTreeLoadedCopyWith(CategoryTreeLoaded value, $Res Function(CategoryTreeLoaded) _then) = _$CategoryTreeLoadedCopyWithImpl;
@useResult
$Res call({
 CategoryTree tree, bool isRefreshing, Failure? refreshFailure
});


$CategoryTreeCopyWith<$Res> get tree;

}
/// @nodoc
class _$CategoryTreeLoadedCopyWithImpl<$Res>
    implements $CategoryTreeLoadedCopyWith<$Res> {
  _$CategoryTreeLoadedCopyWithImpl(this._self, this._then);

  final CategoryTreeLoaded _self;
  final $Res Function(CategoryTreeLoaded) _then;

/// Create a copy of CategoryTreeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tree = null,Object? isRefreshing = null,Object? refreshFailure = freezed,}) {
  return _then(CategoryTreeLoaded(
tree: null == tree ? _self.tree : tree // ignore: cast_nullable_to_non_nullable
as CategoryTree,isRefreshing: null == isRefreshing ? _self.isRefreshing : isRefreshing // ignore: cast_nullable_to_non_nullable
as bool,refreshFailure: freezed == refreshFailure ? _self.refreshFailure : refreshFailure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

/// Create a copy of CategoryTreeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryTreeCopyWith<$Res> get tree {
  
  return $CategoryTreeCopyWith<$Res>(_self.tree, (value) {
    return _then(_self.copyWith(tree: value));
  });
}
}

/// @nodoc


class CategoryTreeFailure implements CategoryTreeState {
  const CategoryTreeFailure(this.failure);
  

 final  Failure failure;

/// Create a copy of CategoryTreeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryTreeFailureCopyWith<CategoryTreeFailure> get copyWith => _$CategoryTreeFailureCopyWithImpl<CategoryTreeFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryTreeFailure&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'CategoryTreeState.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $CategoryTreeFailureCopyWith<$Res> implements $CategoryTreeStateCopyWith<$Res> {
  factory $CategoryTreeFailureCopyWith(CategoryTreeFailure value, $Res Function(CategoryTreeFailure) _then) = _$CategoryTreeFailureCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class _$CategoryTreeFailureCopyWithImpl<$Res>
    implements $CategoryTreeFailureCopyWith<$Res> {
  _$CategoryTreeFailureCopyWithImpl(this._self, this._then);

  final CategoryTreeFailure _self;
  final $Res Function(CategoryTreeFailure) _then;

/// Create a copy of CategoryTreeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(CategoryTreeFailure(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

// dart format on
