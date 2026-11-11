// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductEvent()';
}


}

/// @nodoc
class $ProductEventCopyWith<$Res>  {
$ProductEventCopyWith(ProductEvent _, $Res Function(ProductEvent) __);
}


/// Adds pattern-matching-related methods to [ProductEvent].
extension ProductEventPatterns on ProductEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProductStarted value)?  started,TResult Function( ProductRetried value)?  retried,TResult Function( ProductRegionChanged value)?  regionChanged,TResult Function( ProductDeliveryRetried value)?  deliveryRetried,TResult Function( ProductValueSelected value)?  valueSelected,TResult Function( ProductQuantityChanged value)?  quantityChanged,TResult Function( ProductCommentChanged value)?  commentChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProductStarted() when started != null:
return started(_that);case ProductRetried() when retried != null:
return retried(_that);case ProductRegionChanged() when regionChanged != null:
return regionChanged(_that);case ProductDeliveryRetried() when deliveryRetried != null:
return deliveryRetried(_that);case ProductValueSelected() when valueSelected != null:
return valueSelected(_that);case ProductQuantityChanged() when quantityChanged != null:
return quantityChanged(_that);case ProductCommentChanged() when commentChanged != null:
return commentChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProductStarted value)  started,required TResult Function( ProductRetried value)  retried,required TResult Function( ProductRegionChanged value)  regionChanged,required TResult Function( ProductDeliveryRetried value)  deliveryRetried,required TResult Function( ProductValueSelected value)  valueSelected,required TResult Function( ProductQuantityChanged value)  quantityChanged,required TResult Function( ProductCommentChanged value)  commentChanged,}){
final _that = this;
switch (_that) {
case ProductStarted():
return started(_that);case ProductRetried():
return retried(_that);case ProductRegionChanged():
return regionChanged(_that);case ProductDeliveryRetried():
return deliveryRetried(_that);case ProductValueSelected():
return valueSelected(_that);case ProductQuantityChanged():
return quantityChanged(_that);case ProductCommentChanged():
return commentChanged(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProductStarted value)?  started,TResult? Function( ProductRetried value)?  retried,TResult? Function( ProductRegionChanged value)?  regionChanged,TResult? Function( ProductDeliveryRetried value)?  deliveryRetried,TResult? Function( ProductValueSelected value)?  valueSelected,TResult? Function( ProductQuantityChanged value)?  quantityChanged,TResult? Function( ProductCommentChanged value)?  commentChanged,}){
final _that = this;
switch (_that) {
case ProductStarted() when started != null:
return started(_that);case ProductRetried() when retried != null:
return retried(_that);case ProductRegionChanged() when regionChanged != null:
return regionChanged(_that);case ProductDeliveryRetried() when deliveryRetried != null:
return deliveryRetried(_that);case ProductValueSelected() when valueSelected != null:
return valueSelected(_that);case ProductQuantityChanged() when quantityChanged != null:
return quantityChanged(_that);case ProductCommentChanged() when commentChanged != null:
return commentChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String languageCode,  String id,  String regionId,  ProductSummary? preview)?  started,TResult Function()?  retried,TResult Function( String regionId)?  regionChanged,TResult Function()?  deliveryRetried,TResult Function( String propertyId,  String valueId)?  valueSelected,TResult Function( int quantity)?  quantityChanged,TResult Function( String comment)?  commentChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProductStarted() when started != null:
return started(_that.languageCode,_that.id,_that.regionId,_that.preview);case ProductRetried() when retried != null:
return retried();case ProductRegionChanged() when regionChanged != null:
return regionChanged(_that.regionId);case ProductDeliveryRetried() when deliveryRetried != null:
return deliveryRetried();case ProductValueSelected() when valueSelected != null:
return valueSelected(_that.propertyId,_that.valueId);case ProductQuantityChanged() when quantityChanged != null:
return quantityChanged(_that.quantity);case ProductCommentChanged() when commentChanged != null:
return commentChanged(_that.comment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String languageCode,  String id,  String regionId,  ProductSummary? preview)  started,required TResult Function()  retried,required TResult Function( String regionId)  regionChanged,required TResult Function()  deliveryRetried,required TResult Function( String propertyId,  String valueId)  valueSelected,required TResult Function( int quantity)  quantityChanged,required TResult Function( String comment)  commentChanged,}) {final _that = this;
switch (_that) {
case ProductStarted():
return started(_that.languageCode,_that.id,_that.regionId,_that.preview);case ProductRetried():
return retried();case ProductRegionChanged():
return regionChanged(_that.regionId);case ProductDeliveryRetried():
return deliveryRetried();case ProductValueSelected():
return valueSelected(_that.propertyId,_that.valueId);case ProductQuantityChanged():
return quantityChanged(_that.quantity);case ProductCommentChanged():
return commentChanged(_that.comment);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String languageCode,  String id,  String regionId,  ProductSummary? preview)?  started,TResult? Function()?  retried,TResult? Function( String regionId)?  regionChanged,TResult? Function()?  deliveryRetried,TResult? Function( String propertyId,  String valueId)?  valueSelected,TResult? Function( int quantity)?  quantityChanged,TResult? Function( String comment)?  commentChanged,}) {final _that = this;
switch (_that) {
case ProductStarted() when started != null:
return started(_that.languageCode,_that.id,_that.regionId,_that.preview);case ProductRetried() when retried != null:
return retried();case ProductRegionChanged() when regionChanged != null:
return regionChanged(_that.regionId);case ProductDeliveryRetried() when deliveryRetried != null:
return deliveryRetried();case ProductValueSelected() when valueSelected != null:
return valueSelected(_that.propertyId,_that.valueId);case ProductQuantityChanged() when quantityChanged != null:
return quantityChanged(_that.quantity);case ProductCommentChanged() when commentChanged != null:
return commentChanged(_that.comment);case _:
  return null;

}
}

}

/// @nodoc


class ProductStarted implements ProductEvent {
  const ProductStarted({required this.languageCode, required this.id, required this.regionId, this.preview});
  

 final  String languageCode;
 final  String id;
 final  String regionId;
/// The tile the user tapped: painted at once while details load.
 final  ProductSummary? preview;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductStartedCopyWith<ProductStarted> get copyWith => _$ProductStartedCopyWithImpl<ProductStarted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductStarted&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.id, id) || other.id == id)&&(identical(other.regionId, regionId) || other.regionId == regionId)&&(identical(other.preview, preview) || other.preview == preview));
}


@override
int get hashCode => Object.hash(runtimeType,languageCode,id,regionId,preview);

@override
String toString() {
  return 'ProductEvent.started(languageCode: $languageCode, id: $id, regionId: $regionId, preview: $preview)';
}


}

/// @nodoc
abstract mixin class $ProductStartedCopyWith<$Res> implements $ProductEventCopyWith<$Res> {
  factory $ProductStartedCopyWith(ProductStarted value, $Res Function(ProductStarted) _then) = _$ProductStartedCopyWithImpl;
@useResult
$Res call({
 String languageCode, String id, String regionId, ProductSummary? preview
});


$ProductSummaryCopyWith<$Res>? get preview;

}
/// @nodoc
class _$ProductStartedCopyWithImpl<$Res>
    implements $ProductStartedCopyWith<$Res> {
  _$ProductStartedCopyWithImpl(this._self, this._then);

  final ProductStarted _self;
  final $Res Function(ProductStarted) _then;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? languageCode = null,Object? id = null,Object? regionId = null,Object? preview = freezed,}) {
  return _then(ProductStarted(
languageCode: null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,regionId: null == regionId ? _self.regionId : regionId // ignore: cast_nullable_to_non_nullable
as String,preview: freezed == preview ? _self.preview : preview // ignore: cast_nullable_to_non_nullable
as ProductSummary?,
  ));
}

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductSummaryCopyWith<$Res>? get preview {
    if (_self.preview == null) {
    return null;
  }

  return $ProductSummaryCopyWith<$Res>(_self.preview!, (value) {
    return _then(_self.copyWith(preview: value));
  });
}
}

/// @nodoc


class ProductRetried implements ProductEvent {
  const ProductRetried();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductRetried);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductEvent.retried()';
}


}




/// @nodoc


class ProductRegionChanged implements ProductEvent {
  const ProductRegionChanged(this.regionId);
  

 final  String regionId;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductRegionChangedCopyWith<ProductRegionChanged> get copyWith => _$ProductRegionChangedCopyWithImpl<ProductRegionChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductRegionChanged&&(identical(other.regionId, regionId) || other.regionId == regionId));
}


@override
int get hashCode => Object.hash(runtimeType,regionId);

@override
String toString() {
  return 'ProductEvent.regionChanged(regionId: $regionId)';
}


}

/// @nodoc
abstract mixin class $ProductRegionChangedCopyWith<$Res> implements $ProductEventCopyWith<$Res> {
  factory $ProductRegionChangedCopyWith(ProductRegionChanged value, $Res Function(ProductRegionChanged) _then) = _$ProductRegionChangedCopyWithImpl;
@useResult
$Res call({
 String regionId
});




}
/// @nodoc
class _$ProductRegionChangedCopyWithImpl<$Res>
    implements $ProductRegionChangedCopyWith<$Res> {
  _$ProductRegionChangedCopyWithImpl(this._self, this._then);

  final ProductRegionChanged _self;
  final $Res Function(ProductRegionChanged) _then;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? regionId = null,}) {
  return _then(ProductRegionChanged(
null == regionId ? _self.regionId : regionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ProductDeliveryRetried implements ProductEvent {
  const ProductDeliveryRetried();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDeliveryRetried);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductEvent.deliveryRetried()';
}


}




/// @nodoc


class ProductValueSelected implements ProductEvent {
  const ProductValueSelected({required this.propertyId, required this.valueId});
  

 final  String propertyId;
 final  String valueId;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductValueSelectedCopyWith<ProductValueSelected> get copyWith => _$ProductValueSelectedCopyWithImpl<ProductValueSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductValueSelected&&(identical(other.propertyId, propertyId) || other.propertyId == propertyId)&&(identical(other.valueId, valueId) || other.valueId == valueId));
}


@override
int get hashCode => Object.hash(runtimeType,propertyId,valueId);

@override
String toString() {
  return 'ProductEvent.valueSelected(propertyId: $propertyId, valueId: $valueId)';
}


}

/// @nodoc
abstract mixin class $ProductValueSelectedCopyWith<$Res> implements $ProductEventCopyWith<$Res> {
  factory $ProductValueSelectedCopyWith(ProductValueSelected value, $Res Function(ProductValueSelected) _then) = _$ProductValueSelectedCopyWithImpl;
@useResult
$Res call({
 String propertyId, String valueId
});




}
/// @nodoc
class _$ProductValueSelectedCopyWithImpl<$Res>
    implements $ProductValueSelectedCopyWith<$Res> {
  _$ProductValueSelectedCopyWithImpl(this._self, this._then);

  final ProductValueSelected _self;
  final $Res Function(ProductValueSelected) _then;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? propertyId = null,Object? valueId = null,}) {
  return _then(ProductValueSelected(
propertyId: null == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as String,valueId: null == valueId ? _self.valueId : valueId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ProductQuantityChanged implements ProductEvent {
  const ProductQuantityChanged(this.quantity);
  

 final  int quantity;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductQuantityChangedCopyWith<ProductQuantityChanged> get copyWith => _$ProductQuantityChangedCopyWithImpl<ProductQuantityChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductQuantityChanged&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,quantity);

@override
String toString() {
  return 'ProductEvent.quantityChanged(quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $ProductQuantityChangedCopyWith<$Res> implements $ProductEventCopyWith<$Res> {
  factory $ProductQuantityChangedCopyWith(ProductQuantityChanged value, $Res Function(ProductQuantityChanged) _then) = _$ProductQuantityChangedCopyWithImpl;
@useResult
$Res call({
 int quantity
});




}
/// @nodoc
class _$ProductQuantityChangedCopyWithImpl<$Res>
    implements $ProductQuantityChangedCopyWith<$Res> {
  _$ProductQuantityChangedCopyWithImpl(this._self, this._then);

  final ProductQuantityChanged _self;
  final $Res Function(ProductQuantityChanged) _then;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? quantity = null,}) {
  return _then(ProductQuantityChanged(
null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class ProductCommentChanged implements ProductEvent {
  const ProductCommentChanged(this.comment);
  

 final  String comment;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCommentChangedCopyWith<ProductCommentChanged> get copyWith => _$ProductCommentChangedCopyWithImpl<ProductCommentChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductCommentChanged&&(identical(other.comment, comment) || other.comment == comment));
}


@override
int get hashCode => Object.hash(runtimeType,comment);

@override
String toString() {
  return 'ProductEvent.commentChanged(comment: $comment)';
}


}

/// @nodoc
abstract mixin class $ProductCommentChangedCopyWith<$Res> implements $ProductEventCopyWith<$Res> {
  factory $ProductCommentChangedCopyWith(ProductCommentChanged value, $Res Function(ProductCommentChanged) _then) = _$ProductCommentChangedCopyWithImpl;
@useResult
$Res call({
 String comment
});




}
/// @nodoc
class _$ProductCommentChangedCopyWithImpl<$Res>
    implements $ProductCommentChangedCopyWith<$Res> {
  _$ProductCommentChangedCopyWithImpl(this._self, this._then);

  final ProductCommentChanged _self;
  final $Res Function(ProductCommentChanged) _then;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? comment = null,}) {
  return _then(ProductCommentChanged(
null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ProductState {

 ProductStatus get status; ProductSummary? get preview; ProductDetails? get details; Failure? get failure;/// Property id → value id.
 Map<String, String> get chosen; int get quantity; String get comment; List<DeliveryQuote> get delivery; DeliveryStatus get deliveryStatus;
/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductStateCopyWith<ProductState> get copyWith => _$ProductStateCopyWithImpl<ProductState>(this as ProductState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductState&&(identical(other.status, status) || other.status == status)&&(identical(other.preview, preview) || other.preview == preview)&&(identical(other.details, details) || other.details == details)&&(identical(other.failure, failure) || other.failure == failure)&&const DeepCollectionEquality().equals(other.chosen, chosen)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.comment, comment) || other.comment == comment)&&const DeepCollectionEquality().equals(other.delivery, delivery)&&(identical(other.deliveryStatus, deliveryStatus) || other.deliveryStatus == deliveryStatus));
}


@override
int get hashCode => Object.hash(runtimeType,status,preview,details,failure,const DeepCollectionEquality().hash(chosen),quantity,comment,const DeepCollectionEquality().hash(delivery),deliveryStatus);

@override
String toString() {
  return 'ProductState(status: $status, preview: $preview, details: $details, failure: $failure, chosen: $chosen, quantity: $quantity, comment: $comment, delivery: $delivery, deliveryStatus: $deliveryStatus)';
}


}

/// @nodoc
abstract mixin class $ProductStateCopyWith<$Res>  {
  factory $ProductStateCopyWith(ProductState value, $Res Function(ProductState) _then) = _$ProductStateCopyWithImpl;
@useResult
$Res call({
 ProductStatus status, ProductSummary? preview, ProductDetails? details, Failure? failure, Map<String, String> chosen, int quantity, String comment, List<DeliveryQuote> delivery, DeliveryStatus deliveryStatus
});


$ProductSummaryCopyWith<$Res>? get preview;$ProductDetailsCopyWith<$Res>? get details;

}
/// @nodoc
class _$ProductStateCopyWithImpl<$Res>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._self, this._then);

  final ProductState _self;
  final $Res Function(ProductState) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? preview = freezed,Object? details = freezed,Object? failure = freezed,Object? chosen = null,Object? quantity = null,Object? comment = null,Object? delivery = null,Object? deliveryStatus = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProductStatus,preview: freezed == preview ? _self.preview : preview // ignore: cast_nullable_to_non_nullable
as ProductSummary?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as ProductDetails?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,chosen: null == chosen ? _self.chosen : chosen // ignore: cast_nullable_to_non_nullable
as Map<String, String>,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,delivery: null == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as List<DeliveryQuote>,deliveryStatus: null == deliveryStatus ? _self.deliveryStatus : deliveryStatus // ignore: cast_nullable_to_non_nullable
as DeliveryStatus,
  ));
}
/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductSummaryCopyWith<$Res>? get preview {
    if (_self.preview == null) {
    return null;
  }

  return $ProductSummaryCopyWith<$Res>(_self.preview!, (value) {
    return _then(_self.copyWith(preview: value));
  });
}/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductDetailsCopyWith<$Res>? get details {
    if (_self.details == null) {
    return null;
  }

  return $ProductDetailsCopyWith<$Res>(_self.details!, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductState].
extension ProductStatePatterns on ProductState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductState value)  $default,){
final _that = this;
switch (_that) {
case _ProductState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductState value)?  $default,){
final _that = this;
switch (_that) {
case _ProductState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProductStatus status,  ProductSummary? preview,  ProductDetails? details,  Failure? failure,  Map<String, String> chosen,  int quantity,  String comment,  List<DeliveryQuote> delivery,  DeliveryStatus deliveryStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductState() when $default != null:
return $default(_that.status,_that.preview,_that.details,_that.failure,_that.chosen,_that.quantity,_that.comment,_that.delivery,_that.deliveryStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProductStatus status,  ProductSummary? preview,  ProductDetails? details,  Failure? failure,  Map<String, String> chosen,  int quantity,  String comment,  List<DeliveryQuote> delivery,  DeliveryStatus deliveryStatus)  $default,) {final _that = this;
switch (_that) {
case _ProductState():
return $default(_that.status,_that.preview,_that.details,_that.failure,_that.chosen,_that.quantity,_that.comment,_that.delivery,_that.deliveryStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProductStatus status,  ProductSummary? preview,  ProductDetails? details,  Failure? failure,  Map<String, String> chosen,  int quantity,  String comment,  List<DeliveryQuote> delivery,  DeliveryStatus deliveryStatus)?  $default,) {final _that = this;
switch (_that) {
case _ProductState() when $default != null:
return $default(_that.status,_that.preview,_that.details,_that.failure,_that.chosen,_that.quantity,_that.comment,_that.delivery,_that.deliveryStatus);case _:
  return null;

}
}

}

/// @nodoc


class _ProductState extends ProductState {
  const _ProductState({this.status = ProductStatus.loading, this.preview, this.details, this.failure, final  Map<String, String> chosen = const <String, String>{}, this.quantity = 1, this.comment = '', final  List<DeliveryQuote> delivery = const <DeliveryQuote>[], this.deliveryStatus = DeliveryStatus.loading}): _chosen = chosen,_delivery = delivery,super._();
  

@override@JsonKey() final  ProductStatus status;
@override final  ProductSummary? preview;
@override final  ProductDetails? details;
@override final  Failure? failure;
/// Property id → value id.
 final  Map<String, String> _chosen;
/// Property id → value id.
@override@JsonKey() Map<String, String> get chosen {
  if (_chosen is EqualUnmodifiableMapView) return _chosen;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_chosen);
}

@override@JsonKey() final  int quantity;
@override@JsonKey() final  String comment;
 final  List<DeliveryQuote> _delivery;
@override@JsonKey() List<DeliveryQuote> get delivery {
  if (_delivery is EqualUnmodifiableListView) return _delivery;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_delivery);
}

@override@JsonKey() final  DeliveryStatus deliveryStatus;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductStateCopyWith<_ProductState> get copyWith => __$ProductStateCopyWithImpl<_ProductState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductState&&(identical(other.status, status) || other.status == status)&&(identical(other.preview, preview) || other.preview == preview)&&(identical(other.details, details) || other.details == details)&&(identical(other.failure, failure) || other.failure == failure)&&const DeepCollectionEquality().equals(other._chosen, _chosen)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.comment, comment) || other.comment == comment)&&const DeepCollectionEquality().equals(other._delivery, _delivery)&&(identical(other.deliveryStatus, deliveryStatus) || other.deliveryStatus == deliveryStatus));
}


@override
int get hashCode => Object.hash(runtimeType,status,preview,details,failure,const DeepCollectionEquality().hash(_chosen),quantity,comment,const DeepCollectionEquality().hash(_delivery),deliveryStatus);

@override
String toString() {
  return 'ProductState(status: $status, preview: $preview, details: $details, failure: $failure, chosen: $chosen, quantity: $quantity, comment: $comment, delivery: $delivery, deliveryStatus: $deliveryStatus)';
}


}

/// @nodoc
abstract mixin class _$ProductStateCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory _$ProductStateCopyWith(_ProductState value, $Res Function(_ProductState) _then) = __$ProductStateCopyWithImpl;
@override @useResult
$Res call({
 ProductStatus status, ProductSummary? preview, ProductDetails? details, Failure? failure, Map<String, String> chosen, int quantity, String comment, List<DeliveryQuote> delivery, DeliveryStatus deliveryStatus
});


@override $ProductSummaryCopyWith<$Res>? get preview;@override $ProductDetailsCopyWith<$Res>? get details;

}
/// @nodoc
class __$ProductStateCopyWithImpl<$Res>
    implements _$ProductStateCopyWith<$Res> {
  __$ProductStateCopyWithImpl(this._self, this._then);

  final _ProductState _self;
  final $Res Function(_ProductState) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? preview = freezed,Object? details = freezed,Object? failure = freezed,Object? chosen = null,Object? quantity = null,Object? comment = null,Object? delivery = null,Object? deliveryStatus = null,}) {
  return _then(_ProductState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProductStatus,preview: freezed == preview ? _self.preview : preview // ignore: cast_nullable_to_non_nullable
as ProductSummary?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as ProductDetails?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,chosen: null == chosen ? _self._chosen : chosen // ignore: cast_nullable_to_non_nullable
as Map<String, String>,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,delivery: null == delivery ? _self._delivery : delivery // ignore: cast_nullable_to_non_nullable
as List<DeliveryQuote>,deliveryStatus: null == deliveryStatus ? _self.deliveryStatus : deliveryStatus // ignore: cast_nullable_to_non_nullable
as DeliveryStatus,
  ));
}

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductSummaryCopyWith<$Res>? get preview {
    if (_self.preview == null) {
    return null;
  }

  return $ProductSummaryCopyWith<$Res>(_self.preview!, (value) {
    return _then(_self.copyWith(preview: value));
  });
}/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductDetailsCopyWith<$Res>? get details {
    if (_self.details == null) {
    return null;
  }

  return $ProductDetailsCopyWith<$Res>(_self.details!, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}

// dart format on
