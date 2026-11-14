// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PhotoCrop {

 double get left; double get top; double get width; double get height;
/// Create a copy of PhotoCrop
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhotoCropCopyWith<PhotoCrop> get copyWith => _$PhotoCropCopyWithImpl<PhotoCrop>(this as PhotoCrop, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PhotoCrop&&(identical(other.left, left) || other.left == left)&&(identical(other.top, top) || other.top == top)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height));
}


@override
int get hashCode => Object.hash(runtimeType,left,top,width,height);

@override
String toString() {
  return 'PhotoCrop(left: $left, top: $top, width: $width, height: $height)';
}


}

/// @nodoc
abstract mixin class $PhotoCropCopyWith<$Res>  {
  factory $PhotoCropCopyWith(PhotoCrop value, $Res Function(PhotoCrop) _then) = _$PhotoCropCopyWithImpl;
@useResult
$Res call({
 double left, double top, double width, double height
});




}
/// @nodoc
class _$PhotoCropCopyWithImpl<$Res>
    implements $PhotoCropCopyWith<$Res> {
  _$PhotoCropCopyWithImpl(this._self, this._then);

  final PhotoCrop _self;
  final $Res Function(PhotoCrop) _then;

/// Create a copy of PhotoCrop
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? left = null,Object? top = null,Object? width = null,Object? height = null,}) {
  return _then(_self.copyWith(
left: null == left ? _self.left : left // ignore: cast_nullable_to_non_nullable
as double,top: null == top ? _self.top : top // ignore: cast_nullable_to_non_nullable
as double,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [PhotoCrop].
extension PhotoCropPatterns on PhotoCrop {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PhotoCrop value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PhotoCrop() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PhotoCrop value)  $default,){
final _that = this;
switch (_that) {
case _PhotoCrop():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PhotoCrop value)?  $default,){
final _that = this;
switch (_that) {
case _PhotoCrop() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double left,  double top,  double width,  double height)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PhotoCrop() when $default != null:
return $default(_that.left,_that.top,_that.width,_that.height);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double left,  double top,  double width,  double height)  $default,) {final _that = this;
switch (_that) {
case _PhotoCrop():
return $default(_that.left,_that.top,_that.width,_that.height);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double left,  double top,  double width,  double height)?  $default,) {final _that = this;
switch (_that) {
case _PhotoCrop() when $default != null:
return $default(_that.left,_that.top,_that.width,_that.height);case _:
  return null;

}
}

}

/// @nodoc


class _PhotoCrop implements PhotoCrop {
  const _PhotoCrop({required this.left, required this.top, required this.width, required this.height});
  

@override final  double left;
@override final  double top;
@override final  double width;
@override final  double height;

/// Create a copy of PhotoCrop
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhotoCropCopyWith<_PhotoCrop> get copyWith => __$PhotoCropCopyWithImpl<_PhotoCrop>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PhotoCrop&&(identical(other.left, left) || other.left == left)&&(identical(other.top, top) || other.top == top)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height));
}


@override
int get hashCode => Object.hash(runtimeType,left,top,width,height);

@override
String toString() {
  return 'PhotoCrop(left: $left, top: $top, width: $width, height: $height)';
}


}

/// @nodoc
abstract mixin class _$PhotoCropCopyWith<$Res> implements $PhotoCropCopyWith<$Res> {
  factory _$PhotoCropCopyWith(_PhotoCrop value, $Res Function(_PhotoCrop) _then) = __$PhotoCropCopyWithImpl;
@override @useResult
$Res call({
 double left, double top, double width, double height
});




}
/// @nodoc
class __$PhotoCropCopyWithImpl<$Res>
    implements _$PhotoCropCopyWith<$Res> {
  __$PhotoCropCopyWithImpl(this._self, this._then);

  final _PhotoCrop _self;
  final $Res Function(_PhotoCrop) _then;

/// Create a copy of PhotoCrop
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? left = null,Object? top = null,Object? width = null,Object? height = null,}) {
  return _then(_PhotoCrop(
left: null == left ? _self.left : left // ignore: cast_nullable_to_non_nullable
as double,top: null == top ? _self.top : top // ignore: cast_nullable_to_non_nullable
as double,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$PhotoQuery {

 String get imageUrl;/// Set for «Найти похожие»: the server already has the photo, so
/// nothing is uploaded, and the product itself is left out.
 String? get productId; PhotoCrop? get crop;
/// Create a copy of PhotoQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhotoQueryCopyWith<PhotoQuery> get copyWith => _$PhotoQueryCopyWithImpl<PhotoQuery>(this as PhotoQuery, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PhotoQuery&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.crop, crop) || other.crop == crop));
}


@override
int get hashCode => Object.hash(runtimeType,imageUrl,productId,crop);

@override
String toString() {
  return 'PhotoQuery(imageUrl: $imageUrl, productId: $productId, crop: $crop)';
}


}

/// @nodoc
abstract mixin class $PhotoQueryCopyWith<$Res>  {
  factory $PhotoQueryCopyWith(PhotoQuery value, $Res Function(PhotoQuery) _then) = _$PhotoQueryCopyWithImpl;
@useResult
$Res call({
 String imageUrl, String? productId, PhotoCrop? crop
});


$PhotoCropCopyWith<$Res>? get crop;

}
/// @nodoc
class _$PhotoQueryCopyWithImpl<$Res>
    implements $PhotoQueryCopyWith<$Res> {
  _$PhotoQueryCopyWithImpl(this._self, this._then);

  final PhotoQuery _self;
  final $Res Function(PhotoQuery) _then;

/// Create a copy of PhotoQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imageUrl = null,Object? productId = freezed,Object? crop = freezed,}) {
  return _then(_self.copyWith(
imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,crop: freezed == crop ? _self.crop : crop // ignore: cast_nullable_to_non_nullable
as PhotoCrop?,
  ));
}
/// Create a copy of PhotoQuery
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PhotoCropCopyWith<$Res>? get crop {
    if (_self.crop == null) {
    return null;
  }

  return $PhotoCropCopyWith<$Res>(_self.crop!, (value) {
    return _then(_self.copyWith(crop: value));
  });
}
}


/// Adds pattern-matching-related methods to [PhotoQuery].
extension PhotoQueryPatterns on PhotoQuery {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PhotoQuery value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PhotoQuery() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PhotoQuery value)  $default,){
final _that = this;
switch (_that) {
case _PhotoQuery():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PhotoQuery value)?  $default,){
final _that = this;
switch (_that) {
case _PhotoQuery() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String imageUrl,  String? productId,  PhotoCrop? crop)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PhotoQuery() when $default != null:
return $default(_that.imageUrl,_that.productId,_that.crop);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String imageUrl,  String? productId,  PhotoCrop? crop)  $default,) {final _that = this;
switch (_that) {
case _PhotoQuery():
return $default(_that.imageUrl,_that.productId,_that.crop);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String imageUrl,  String? productId,  PhotoCrop? crop)?  $default,) {final _that = this;
switch (_that) {
case _PhotoQuery() when $default != null:
return $default(_that.imageUrl,_that.productId,_that.crop);case _:
  return null;

}
}

}

/// @nodoc


class _PhotoQuery extends PhotoQuery {
  const _PhotoQuery({required this.imageUrl, this.productId, this.crop}): super._();
  

@override final  String imageUrl;
/// Set for «Найти похожие»: the server already has the photo, so
/// nothing is uploaded, and the product itself is left out.
@override final  String? productId;
@override final  PhotoCrop? crop;

/// Create a copy of PhotoQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhotoQueryCopyWith<_PhotoQuery> get copyWith => __$PhotoQueryCopyWithImpl<_PhotoQuery>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PhotoQuery&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.crop, crop) || other.crop == crop));
}


@override
int get hashCode => Object.hash(runtimeType,imageUrl,productId,crop);

@override
String toString() {
  return 'PhotoQuery(imageUrl: $imageUrl, productId: $productId, crop: $crop)';
}


}

/// @nodoc
abstract mixin class _$PhotoQueryCopyWith<$Res> implements $PhotoQueryCopyWith<$Res> {
  factory _$PhotoQueryCopyWith(_PhotoQuery value, $Res Function(_PhotoQuery) _then) = __$PhotoQueryCopyWithImpl;
@override @useResult
$Res call({
 String imageUrl, String? productId, PhotoCrop? crop
});


@override $PhotoCropCopyWith<$Res>? get crop;

}
/// @nodoc
class __$PhotoQueryCopyWithImpl<$Res>
    implements _$PhotoQueryCopyWith<$Res> {
  __$PhotoQueryCopyWithImpl(this._self, this._then);

  final _PhotoQuery _self;
  final $Res Function(_PhotoQuery) _then;

/// Create a copy of PhotoQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imageUrl = null,Object? productId = freezed,Object? crop = freezed,}) {
  return _then(_PhotoQuery(
imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,crop: freezed == crop ? _self.crop : crop // ignore: cast_nullable_to_non_nullable
as PhotoCrop?,
  ));
}

/// Create a copy of PhotoQuery
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PhotoCropCopyWith<$Res>? get crop {
    if (_self.crop == null) {
    return null;
  }

  return $PhotoCropCopyWith<$Res>(_self.crop!, (value) {
    return _then(_self.copyWith(crop: value));
  });
}
}

/// @nodoc
mixin _$PhotoMatch {

 ProductSummary get product;/// 0…1, as the server scored it.
 double get similarity;
/// Create a copy of PhotoMatch
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhotoMatchCopyWith<PhotoMatch> get copyWith => _$PhotoMatchCopyWithImpl<PhotoMatch>(this as PhotoMatch, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PhotoMatch&&(identical(other.product, product) || other.product == product)&&(identical(other.similarity, similarity) || other.similarity == similarity));
}


@override
int get hashCode => Object.hash(runtimeType,product,similarity);

@override
String toString() {
  return 'PhotoMatch(product: $product, similarity: $similarity)';
}


}

/// @nodoc
abstract mixin class $PhotoMatchCopyWith<$Res>  {
  factory $PhotoMatchCopyWith(PhotoMatch value, $Res Function(PhotoMatch) _then) = _$PhotoMatchCopyWithImpl;
@useResult
$Res call({
 ProductSummary product, double similarity
});


$ProductSummaryCopyWith<$Res> get product;

}
/// @nodoc
class _$PhotoMatchCopyWithImpl<$Res>
    implements $PhotoMatchCopyWith<$Res> {
  _$PhotoMatchCopyWithImpl(this._self, this._then);

  final PhotoMatch _self;
  final $Res Function(PhotoMatch) _then;

/// Create a copy of PhotoMatch
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? product = null,Object? similarity = null,}) {
  return _then(_self.copyWith(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductSummary,similarity: null == similarity ? _self.similarity : similarity // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of PhotoMatch
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductSummaryCopyWith<$Res> get product {
  
  return $ProductSummaryCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [PhotoMatch].
extension PhotoMatchPatterns on PhotoMatch {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PhotoMatch value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PhotoMatch() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PhotoMatch value)  $default,){
final _that = this;
switch (_that) {
case _PhotoMatch():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PhotoMatch value)?  $default,){
final _that = this;
switch (_that) {
case _PhotoMatch() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProductSummary product,  double similarity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PhotoMatch() when $default != null:
return $default(_that.product,_that.similarity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProductSummary product,  double similarity)  $default,) {final _that = this;
switch (_that) {
case _PhotoMatch():
return $default(_that.product,_that.similarity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProductSummary product,  double similarity)?  $default,) {final _that = this;
switch (_that) {
case _PhotoMatch() when $default != null:
return $default(_that.product,_that.similarity);case _:
  return null;

}
}

}

/// @nodoc


class _PhotoMatch implements PhotoMatch {
  const _PhotoMatch({required this.product, required this.similarity});
  

@override final  ProductSummary product;
/// 0…1, as the server scored it.
@override final  double similarity;

/// Create a copy of PhotoMatch
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhotoMatchCopyWith<_PhotoMatch> get copyWith => __$PhotoMatchCopyWithImpl<_PhotoMatch>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PhotoMatch&&(identical(other.product, product) || other.product == product)&&(identical(other.similarity, similarity) || other.similarity == similarity));
}


@override
int get hashCode => Object.hash(runtimeType,product,similarity);

@override
String toString() {
  return 'PhotoMatch(product: $product, similarity: $similarity)';
}


}

/// @nodoc
abstract mixin class _$PhotoMatchCopyWith<$Res> implements $PhotoMatchCopyWith<$Res> {
  factory _$PhotoMatchCopyWith(_PhotoMatch value, $Res Function(_PhotoMatch) _then) = __$PhotoMatchCopyWithImpl;
@override @useResult
$Res call({
 ProductSummary product, double similarity
});


@override $ProductSummaryCopyWith<$Res> get product;

}
/// @nodoc
class __$PhotoMatchCopyWithImpl<$Res>
    implements _$PhotoMatchCopyWith<$Res> {
  __$PhotoMatchCopyWithImpl(this._self, this._then);

  final _PhotoMatch _self;
  final $Res Function(_PhotoMatch) _then;

/// Create a copy of PhotoMatch
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? product = null,Object? similarity = null,}) {
  return _then(_PhotoMatch(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductSummary,similarity: null == similarity ? _self.similarity : similarity // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of PhotoMatch
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductSummaryCopyWith<$Res> get product {
  
  return $ProductSummaryCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

// dart format on
