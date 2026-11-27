// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wholesale_documents_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WholesaleDocumentsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WholesaleDocumentsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WholesaleDocumentsState()';
}


}

/// @nodoc
class $WholesaleDocumentsStateCopyWith<$Res>  {
$WholesaleDocumentsStateCopyWith(WholesaleDocumentsState _, $Res Function(WholesaleDocumentsState) __);
}


/// Adds pattern-matching-related methods to [WholesaleDocumentsState].
extension WholesaleDocumentsStatePatterns on WholesaleDocumentsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DocumentsLoading value)?  loading,TResult Function( DocumentsLoaded value)?  loaded,TResult Function( DocumentsFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DocumentsLoading() when loading != null:
return loading(_that);case DocumentsLoaded() when loaded != null:
return loaded(_that);case DocumentsFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DocumentsLoading value)  loading,required TResult Function( DocumentsLoaded value)  loaded,required TResult Function( DocumentsFailure value)  failure,}){
final _that = this;
switch (_that) {
case DocumentsLoading():
return loading(_that);case DocumentsLoaded():
return loaded(_that);case DocumentsFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DocumentsLoading value)?  loading,TResult? Function( DocumentsLoaded value)?  loaded,TResult? Function( DocumentsFailure value)?  failure,}){
final _that = this;
switch (_that) {
case DocumentsLoading() when loading != null:
return loading(_that);case DocumentsLoaded() when loaded != null:
return loaded(_that);case DocumentsFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<OrderDocuments> orders)?  loaded,TResult Function( Failure failure)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DocumentsLoading() when loading != null:
return loading();case DocumentsLoaded() when loaded != null:
return loaded(_that.orders);case DocumentsFailure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<OrderDocuments> orders)  loaded,required TResult Function( Failure failure)  failure,}) {final _that = this;
switch (_that) {
case DocumentsLoading():
return loading();case DocumentsLoaded():
return loaded(_that.orders);case DocumentsFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<OrderDocuments> orders)?  loaded,TResult? Function( Failure failure)?  failure,}) {final _that = this;
switch (_that) {
case DocumentsLoading() when loading != null:
return loading();case DocumentsLoaded() when loaded != null:
return loaded(_that.orders);case DocumentsFailure() when failure != null:
return failure(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class DocumentsLoading implements WholesaleDocumentsState {
  const DocumentsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocumentsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WholesaleDocumentsState.loading()';
}


}




/// @nodoc


class DocumentsLoaded implements WholesaleDocumentsState {
  const DocumentsLoaded(final  List<OrderDocuments> orders): _orders = orders;
  

 final  List<OrderDocuments> _orders;
 List<OrderDocuments> get orders {
  if (_orders is EqualUnmodifiableListView) return _orders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_orders);
}


/// Create a copy of WholesaleDocumentsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentsLoadedCopyWith<DocumentsLoaded> get copyWith => _$DocumentsLoadedCopyWithImpl<DocumentsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocumentsLoaded&&const DeepCollectionEquality().equals(other._orders, _orders));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_orders));

@override
String toString() {
  return 'WholesaleDocumentsState.loaded(orders: $orders)';
}


}

/// @nodoc
abstract mixin class $DocumentsLoadedCopyWith<$Res> implements $WholesaleDocumentsStateCopyWith<$Res> {
  factory $DocumentsLoadedCopyWith(DocumentsLoaded value, $Res Function(DocumentsLoaded) _then) = _$DocumentsLoadedCopyWithImpl;
@useResult
$Res call({
 List<OrderDocuments> orders
});




}
/// @nodoc
class _$DocumentsLoadedCopyWithImpl<$Res>
    implements $DocumentsLoadedCopyWith<$Res> {
  _$DocumentsLoadedCopyWithImpl(this._self, this._then);

  final DocumentsLoaded _self;
  final $Res Function(DocumentsLoaded) _then;

/// Create a copy of WholesaleDocumentsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? orders = null,}) {
  return _then(DocumentsLoaded(
null == orders ? _self._orders : orders // ignore: cast_nullable_to_non_nullable
as List<OrderDocuments>,
  ));
}


}

/// @nodoc


class DocumentsFailure implements WholesaleDocumentsState {
  const DocumentsFailure(this.failure);
  

 final  Failure failure;

/// Create a copy of WholesaleDocumentsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentsFailureCopyWith<DocumentsFailure> get copyWith => _$DocumentsFailureCopyWithImpl<DocumentsFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocumentsFailure&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'WholesaleDocumentsState.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $DocumentsFailureCopyWith<$Res> implements $WholesaleDocumentsStateCopyWith<$Res> {
  factory $DocumentsFailureCopyWith(DocumentsFailure value, $Res Function(DocumentsFailure) _then) = _$DocumentsFailureCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class _$DocumentsFailureCopyWithImpl<$Res>
    implements $DocumentsFailureCopyWith<$Res> {
  _$DocumentsFailureCopyWithImpl(this._self, this._then);

  final DocumentsFailure _self;
  final $Res Function(DocumentsFailure) _then;

/// Create a copy of WholesaleDocumentsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(DocumentsFailure(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

// dart format on
