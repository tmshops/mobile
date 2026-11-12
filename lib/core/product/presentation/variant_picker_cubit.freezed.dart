// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'variant_picker_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VariantPickerState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariantPickerState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VariantPickerState()';
}


}

/// @nodoc
class $VariantPickerStateCopyWith<$Res>  {
$VariantPickerStateCopyWith(VariantPickerState _, $Res Function(VariantPickerState) __);
}


/// Adds pattern-matching-related methods to [VariantPickerState].
extension VariantPickerStatePatterns on VariantPickerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( VariantPickerLoading value)?  loading,TResult Function( VariantPickerReady value)?  ready,TResult Function( VariantPickerFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case VariantPickerLoading() when loading != null:
return loading(_that);case VariantPickerReady() when ready != null:
return ready(_that);case VariantPickerFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( VariantPickerLoading value)  loading,required TResult Function( VariantPickerReady value)  ready,required TResult Function( VariantPickerFailure value)  failure,}){
final _that = this;
switch (_that) {
case VariantPickerLoading():
return loading(_that);case VariantPickerReady():
return ready(_that);case VariantPickerFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( VariantPickerLoading value)?  loading,TResult? Function( VariantPickerReady value)?  ready,TResult? Function( VariantPickerFailure value)?  failure,}){
final _that = this;
switch (_that) {
case VariantPickerLoading() when loading != null:
return loading(_that);case VariantPickerReady() when ready != null:
return ready(_that);case VariantPickerFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( ProductVariants variants,  Map<String, String> chosen)?  ready,TResult Function( Failure? failure)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case VariantPickerLoading() when loading != null:
return loading();case VariantPickerReady() when ready != null:
return ready(_that.variants,_that.chosen);case VariantPickerFailure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( ProductVariants variants,  Map<String, String> chosen)  ready,required TResult Function( Failure? failure)  failure,}) {final _that = this;
switch (_that) {
case VariantPickerLoading():
return loading();case VariantPickerReady():
return ready(_that.variants,_that.chosen);case VariantPickerFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( ProductVariants variants,  Map<String, String> chosen)?  ready,TResult? Function( Failure? failure)?  failure,}) {final _that = this;
switch (_that) {
case VariantPickerLoading() when loading != null:
return loading();case VariantPickerReady() when ready != null:
return ready(_that.variants,_that.chosen);case VariantPickerFailure() when failure != null:
return failure(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class VariantPickerLoading implements VariantPickerState {
  const VariantPickerLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariantPickerLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VariantPickerState.loading()';
}


}




/// @nodoc


class VariantPickerReady implements VariantPickerState {
  const VariantPickerReady({required this.variants, required final  Map<String, String> chosen}): _chosen = chosen;
  

 final  ProductVariants variants;
 final  Map<String, String> _chosen;
 Map<String, String> get chosen {
  if (_chosen is EqualUnmodifiableMapView) return _chosen;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_chosen);
}


/// Create a copy of VariantPickerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariantPickerReadyCopyWith<VariantPickerReady> get copyWith => _$VariantPickerReadyCopyWithImpl<VariantPickerReady>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariantPickerReady&&(identical(other.variants, variants) || other.variants == variants)&&const DeepCollectionEquality().equals(other._chosen, _chosen));
}


@override
int get hashCode => Object.hash(runtimeType,variants,const DeepCollectionEquality().hash(_chosen));

@override
String toString() {
  return 'VariantPickerState.ready(variants: $variants, chosen: $chosen)';
}


}

/// @nodoc
abstract mixin class $VariantPickerReadyCopyWith<$Res> implements $VariantPickerStateCopyWith<$Res> {
  factory $VariantPickerReadyCopyWith(VariantPickerReady value, $Res Function(VariantPickerReady) _then) = _$VariantPickerReadyCopyWithImpl;
@useResult
$Res call({
 ProductVariants variants, Map<String, String> chosen
});


$ProductVariantsCopyWith<$Res> get variants;

}
/// @nodoc
class _$VariantPickerReadyCopyWithImpl<$Res>
    implements $VariantPickerReadyCopyWith<$Res> {
  _$VariantPickerReadyCopyWithImpl(this._self, this._then);

  final VariantPickerReady _self;
  final $Res Function(VariantPickerReady) _then;

/// Create a copy of VariantPickerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? variants = null,Object? chosen = null,}) {
  return _then(VariantPickerReady(
variants: null == variants ? _self.variants : variants // ignore: cast_nullable_to_non_nullable
as ProductVariants,chosen: null == chosen ? _self._chosen : chosen // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}

/// Create a copy of VariantPickerState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductVariantsCopyWith<$Res> get variants {
  
  return $ProductVariantsCopyWith<$Res>(_self.variants, (value) {
    return _then(_self.copyWith(variants: value));
  });
}
}

/// @nodoc


class VariantPickerFailure implements VariantPickerState {
  const VariantPickerFailure([this.failure]);
  

 final  Failure? failure;

/// Create a copy of VariantPickerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariantPickerFailureCopyWith<VariantPickerFailure> get copyWith => _$VariantPickerFailureCopyWithImpl<VariantPickerFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariantPickerFailure&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'VariantPickerState.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $VariantPickerFailureCopyWith<$Res> implements $VariantPickerStateCopyWith<$Res> {
  factory $VariantPickerFailureCopyWith(VariantPickerFailure value, $Res Function(VariantPickerFailure) _then) = _$VariantPickerFailureCopyWithImpl;
@useResult
$Res call({
 Failure? failure
});




}
/// @nodoc
class _$VariantPickerFailureCopyWithImpl<$Res>
    implements $VariantPickerFailureCopyWith<$Res> {
  _$VariantPickerFailureCopyWithImpl(this._self, this._then);

  final VariantPickerFailure _self;
  final $Res Function(VariantPickerFailure) _then;

/// Create a copy of VariantPickerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = freezed,}) {
  return _then(VariantPickerFailure(
freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}


}

// dart format on
