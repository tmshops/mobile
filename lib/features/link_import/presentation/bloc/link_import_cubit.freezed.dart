// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'link_import_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LinkImportState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LinkImportState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LinkImportState()';
}


}

/// @nodoc
class $LinkImportStateCopyWith<$Res>  {
$LinkImportStateCopyWith(LinkImportState _, $Res Function(LinkImportState) __);
}


/// Adds pattern-matching-related methods to [LinkImportState].
extension LinkImportStatePatterns on LinkImportState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LinkImportWorking value)?  working,TResult Function( LinkImportReady value)?  done,TResult Function( LinkImportGaveUp value)?  failed,TResult Function( LinkImportError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LinkImportWorking() when working != null:
return working(_that);case LinkImportReady() when done != null:
return done(_that);case LinkImportGaveUp() when failed != null:
return failed(_that);case LinkImportError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LinkImportWorking value)  working,required TResult Function( LinkImportReady value)  done,required TResult Function( LinkImportGaveUp value)  failed,required TResult Function( LinkImportError value)  error,}){
final _that = this;
switch (_that) {
case LinkImportWorking():
return working(_that);case LinkImportReady():
return done(_that);case LinkImportGaveUp():
return failed(_that);case LinkImportError():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LinkImportWorking value)?  working,TResult? Function( LinkImportReady value)?  done,TResult? Function( LinkImportGaveUp value)?  failed,TResult? Function( LinkImportError value)?  error,}){
final _that = this;
switch (_that) {
case LinkImportWorking() when working != null:
return working(_that);case LinkImportReady() when done != null:
return done(_that);case LinkImportGaveUp() when failed != null:
return failed(_that);case LinkImportError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( LinkImportStep step)?  working,TResult Function( String productId)?  done,TResult Function()?  failed,TResult Function( Failure failure)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LinkImportWorking() when working != null:
return working(_that.step);case LinkImportReady() when done != null:
return done(_that.productId);case LinkImportGaveUp() when failed != null:
return failed();case LinkImportError() when error != null:
return error(_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( LinkImportStep step)  working,required TResult Function( String productId)  done,required TResult Function()  failed,required TResult Function( Failure failure)  error,}) {final _that = this;
switch (_that) {
case LinkImportWorking():
return working(_that.step);case LinkImportReady():
return done(_that.productId);case LinkImportGaveUp():
return failed();case LinkImportError():
return error(_that.failure);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( LinkImportStep step)?  working,TResult? Function( String productId)?  done,TResult? Function()?  failed,TResult? Function( Failure failure)?  error,}) {final _that = this;
switch (_that) {
case LinkImportWorking() when working != null:
return working(_that.step);case LinkImportReady() when done != null:
return done(_that.productId);case LinkImportGaveUp() when failed != null:
return failed();case LinkImportError() when error != null:
return error(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class LinkImportWorking implements LinkImportState {
  const LinkImportWorking(this.step);
  

 final  LinkImportStep step;

/// Create a copy of LinkImportState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LinkImportWorkingCopyWith<LinkImportWorking> get copyWith => _$LinkImportWorkingCopyWithImpl<LinkImportWorking>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LinkImportWorking&&(identical(other.step, step) || other.step == step));
}


@override
int get hashCode => Object.hash(runtimeType,step);

@override
String toString() {
  return 'LinkImportState.working(step: $step)';
}


}

/// @nodoc
abstract mixin class $LinkImportWorkingCopyWith<$Res> implements $LinkImportStateCopyWith<$Res> {
  factory $LinkImportWorkingCopyWith(LinkImportWorking value, $Res Function(LinkImportWorking) _then) = _$LinkImportWorkingCopyWithImpl;
@useResult
$Res call({
 LinkImportStep step
});




}
/// @nodoc
class _$LinkImportWorkingCopyWithImpl<$Res>
    implements $LinkImportWorkingCopyWith<$Res> {
  _$LinkImportWorkingCopyWithImpl(this._self, this._then);

  final LinkImportWorking _self;
  final $Res Function(LinkImportWorking) _then;

/// Create a copy of LinkImportState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? step = null,}) {
  return _then(LinkImportWorking(
null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as LinkImportStep,
  ));
}


}

/// @nodoc


class LinkImportReady implements LinkImportState {
  const LinkImportReady(this.productId);
  

 final  String productId;

/// Create a copy of LinkImportState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LinkImportReadyCopyWith<LinkImportReady> get copyWith => _$LinkImportReadyCopyWithImpl<LinkImportReady>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LinkImportReady&&(identical(other.productId, productId) || other.productId == productId));
}


@override
int get hashCode => Object.hash(runtimeType,productId);

@override
String toString() {
  return 'LinkImportState.done(productId: $productId)';
}


}

/// @nodoc
abstract mixin class $LinkImportReadyCopyWith<$Res> implements $LinkImportStateCopyWith<$Res> {
  factory $LinkImportReadyCopyWith(LinkImportReady value, $Res Function(LinkImportReady) _then) = _$LinkImportReadyCopyWithImpl;
@useResult
$Res call({
 String productId
});




}
/// @nodoc
class _$LinkImportReadyCopyWithImpl<$Res>
    implements $LinkImportReadyCopyWith<$Res> {
  _$LinkImportReadyCopyWithImpl(this._self, this._then);

  final LinkImportReady _self;
  final $Res Function(LinkImportReady) _then;

/// Create a copy of LinkImportState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? productId = null,}) {
  return _then(LinkImportReady(
null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LinkImportGaveUp implements LinkImportState {
  const LinkImportGaveUp();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LinkImportGaveUp);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LinkImportState.failed()';
}


}




/// @nodoc


class LinkImportError implements LinkImportState {
  const LinkImportError(this.failure);
  

 final  Failure failure;

/// Create a copy of LinkImportState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LinkImportErrorCopyWith<LinkImportError> get copyWith => _$LinkImportErrorCopyWithImpl<LinkImportError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LinkImportError&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'LinkImportState.error(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $LinkImportErrorCopyWith<$Res> implements $LinkImportStateCopyWith<$Res> {
  factory $LinkImportErrorCopyWith(LinkImportError value, $Res Function(LinkImportError) _then) = _$LinkImportErrorCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class _$LinkImportErrorCopyWithImpl<$Res>
    implements $LinkImportErrorCopyWith<$Res> {
  _$LinkImportErrorCopyWithImpl(this._self, this._then);

  final LinkImportError _self;
  final $Res Function(LinkImportError) _then;

/// Create a copy of LinkImportState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(LinkImportError(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

// dart format on
