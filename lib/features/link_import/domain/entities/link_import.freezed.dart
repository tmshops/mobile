// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'link_import.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LinkImportStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LinkImportStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LinkImportStatus()';
}


}

/// @nodoc
class $LinkImportStatusCopyWith<$Res>  {
$LinkImportStatusCopyWith(LinkImportStatus _, $Res Function(LinkImportStatus) __);
}


/// Adds pattern-matching-related methods to [LinkImportStatus].
extension LinkImportStatusPatterns on LinkImportStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LinkImportPending value)?  pending,TResult Function( LinkImportDone value)?  done,TResult Function( LinkImportFailed value)?  failed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LinkImportPending() when pending != null:
return pending(_that);case LinkImportDone() when done != null:
return done(_that);case LinkImportFailed() when failed != null:
return failed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LinkImportPending value)  pending,required TResult Function( LinkImportDone value)  done,required TResult Function( LinkImportFailed value)  failed,}){
final _that = this;
switch (_that) {
case LinkImportPending():
return pending(_that);case LinkImportDone():
return done(_that);case LinkImportFailed():
return failed(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LinkImportPending value)?  pending,TResult? Function( LinkImportDone value)?  done,TResult? Function( LinkImportFailed value)?  failed,}){
final _that = this;
switch (_that) {
case LinkImportPending() when pending != null:
return pending(_that);case LinkImportDone() when done != null:
return done(_that);case LinkImportFailed() when failed != null:
return failed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String taskId,  LinkImportStep step)?  pending,TResult Function( String productId)?  done,TResult Function()?  failed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LinkImportPending() when pending != null:
return pending(_that.taskId,_that.step);case LinkImportDone() when done != null:
return done(_that.productId);case LinkImportFailed() when failed != null:
return failed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String taskId,  LinkImportStep step)  pending,required TResult Function( String productId)  done,required TResult Function()  failed,}) {final _that = this;
switch (_that) {
case LinkImportPending():
return pending(_that.taskId,_that.step);case LinkImportDone():
return done(_that.productId);case LinkImportFailed():
return failed();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String taskId,  LinkImportStep step)?  pending,TResult? Function( String productId)?  done,TResult? Function()?  failed,}) {final _that = this;
switch (_that) {
case LinkImportPending() when pending != null:
return pending(_that.taskId,_that.step);case LinkImportDone() when done != null:
return done(_that.productId);case LinkImportFailed() when failed != null:
return failed();case _:
  return null;

}
}

}

/// @nodoc


class LinkImportPending implements LinkImportStatus {
  const LinkImportPending({required this.taskId, required this.step});
  

 final  String taskId;
 final  LinkImportStep step;

/// Create a copy of LinkImportStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LinkImportPendingCopyWith<LinkImportPending> get copyWith => _$LinkImportPendingCopyWithImpl<LinkImportPending>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LinkImportPending&&(identical(other.taskId, taskId) || other.taskId == taskId)&&(identical(other.step, step) || other.step == step));
}


@override
int get hashCode => Object.hash(runtimeType,taskId,step);

@override
String toString() {
  return 'LinkImportStatus.pending(taskId: $taskId, step: $step)';
}


}

/// @nodoc
abstract mixin class $LinkImportPendingCopyWith<$Res> implements $LinkImportStatusCopyWith<$Res> {
  factory $LinkImportPendingCopyWith(LinkImportPending value, $Res Function(LinkImportPending) _then) = _$LinkImportPendingCopyWithImpl;
@useResult
$Res call({
 String taskId, LinkImportStep step
});




}
/// @nodoc
class _$LinkImportPendingCopyWithImpl<$Res>
    implements $LinkImportPendingCopyWith<$Res> {
  _$LinkImportPendingCopyWithImpl(this._self, this._then);

  final LinkImportPending _self;
  final $Res Function(LinkImportPending) _then;

/// Create a copy of LinkImportStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? taskId = null,Object? step = null,}) {
  return _then(LinkImportPending(
taskId: null == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String,step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as LinkImportStep,
  ));
}


}

/// @nodoc


class LinkImportDone implements LinkImportStatus {
  const LinkImportDone(this.productId);
  

 final  String productId;

/// Create a copy of LinkImportStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LinkImportDoneCopyWith<LinkImportDone> get copyWith => _$LinkImportDoneCopyWithImpl<LinkImportDone>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LinkImportDone&&(identical(other.productId, productId) || other.productId == productId));
}


@override
int get hashCode => Object.hash(runtimeType,productId);

@override
String toString() {
  return 'LinkImportStatus.done(productId: $productId)';
}


}

/// @nodoc
abstract mixin class $LinkImportDoneCopyWith<$Res> implements $LinkImportStatusCopyWith<$Res> {
  factory $LinkImportDoneCopyWith(LinkImportDone value, $Res Function(LinkImportDone) _then) = _$LinkImportDoneCopyWithImpl;
@useResult
$Res call({
 String productId
});




}
/// @nodoc
class _$LinkImportDoneCopyWithImpl<$Res>
    implements $LinkImportDoneCopyWith<$Res> {
  _$LinkImportDoneCopyWithImpl(this._self, this._then);

  final LinkImportDone _self;
  final $Res Function(LinkImportDone) _then;

/// Create a copy of LinkImportStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? productId = null,}) {
  return _then(LinkImportDone(
null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LinkImportFailed implements LinkImportStatus {
  const LinkImportFailed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LinkImportFailed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LinkImportStatus.failed()';
}


}




// dart format on
