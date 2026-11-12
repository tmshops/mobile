// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_quote.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartQuote {

/// By line key (`productId|skuId`).
 Map<String, LineQuote> get lines;/// By seller name.
 Map<String, SellerQuote> get sellers; CartSummary get summary; int get minOrderSum; PromoResult? get promo;
/// Create a copy of CartQuote
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartQuoteCopyWith<CartQuote> get copyWith => _$CartQuoteCopyWithImpl<CartQuote>(this as CartQuote, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartQuote&&const DeepCollectionEquality().equals(other.lines, lines)&&const DeepCollectionEquality().equals(other.sellers, sellers)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.minOrderSum, minOrderSum) || other.minOrderSum == minOrderSum)&&(identical(other.promo, promo) || other.promo == promo));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(lines),const DeepCollectionEquality().hash(sellers),summary,minOrderSum,promo);

@override
String toString() {
  return 'CartQuote(lines: $lines, sellers: $sellers, summary: $summary, minOrderSum: $minOrderSum, promo: $promo)';
}


}

/// @nodoc
abstract mixin class $CartQuoteCopyWith<$Res>  {
  factory $CartQuoteCopyWith(CartQuote value, $Res Function(CartQuote) _then) = _$CartQuoteCopyWithImpl;
@useResult
$Res call({
 Map<String, LineQuote> lines, Map<String, SellerQuote> sellers, CartSummary summary, int minOrderSum, PromoResult? promo
});


$CartSummaryCopyWith<$Res> get summary;$PromoResultCopyWith<$Res>? get promo;

}
/// @nodoc
class _$CartQuoteCopyWithImpl<$Res>
    implements $CartQuoteCopyWith<$Res> {
  _$CartQuoteCopyWithImpl(this._self, this._then);

  final CartQuote _self;
  final $Res Function(CartQuote) _then;

/// Create a copy of CartQuote
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lines = null,Object? sellers = null,Object? summary = null,Object? minOrderSum = null,Object? promo = freezed,}) {
  return _then(_self.copyWith(
lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as Map<String, LineQuote>,sellers: null == sellers ? _self.sellers : sellers // ignore: cast_nullable_to_non_nullable
as Map<String, SellerQuote>,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as CartSummary,minOrderSum: null == minOrderSum ? _self.minOrderSum : minOrderSum // ignore: cast_nullable_to_non_nullable
as int,promo: freezed == promo ? _self.promo : promo // ignore: cast_nullable_to_non_nullable
as PromoResult?,
  ));
}
/// Create a copy of CartQuote
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartSummaryCopyWith<$Res> get summary {
  
  return $CartSummaryCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}/// Create a copy of CartQuote
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromoResultCopyWith<$Res>? get promo {
    if (_self.promo == null) {
    return null;
  }

  return $PromoResultCopyWith<$Res>(_self.promo!, (value) {
    return _then(_self.copyWith(promo: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartQuote].
extension CartQuotePatterns on CartQuote {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartQuote value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartQuote() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartQuote value)  $default,){
final _that = this;
switch (_that) {
case _CartQuote():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartQuote value)?  $default,){
final _that = this;
switch (_that) {
case _CartQuote() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, LineQuote> lines,  Map<String, SellerQuote> sellers,  CartSummary summary,  int minOrderSum,  PromoResult? promo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartQuote() when $default != null:
return $default(_that.lines,_that.sellers,_that.summary,_that.minOrderSum,_that.promo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, LineQuote> lines,  Map<String, SellerQuote> sellers,  CartSummary summary,  int minOrderSum,  PromoResult? promo)  $default,) {final _that = this;
switch (_that) {
case _CartQuote():
return $default(_that.lines,_that.sellers,_that.summary,_that.minOrderSum,_that.promo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, LineQuote> lines,  Map<String, SellerQuote> sellers,  CartSummary summary,  int minOrderSum,  PromoResult? promo)?  $default,) {final _that = this;
switch (_that) {
case _CartQuote() when $default != null:
return $default(_that.lines,_that.sellers,_that.summary,_that.minOrderSum,_that.promo);case _:
  return null;

}
}

}

/// @nodoc


class _CartQuote extends CartQuote {
  const _CartQuote({required final  Map<String, LineQuote> lines, required final  Map<String, SellerQuote> sellers, required this.summary, required this.minOrderSum, this.promo}): _lines = lines,_sellers = sellers,super._();
  

/// By line key (`productId|skuId`).
 final  Map<String, LineQuote> _lines;
/// By line key (`productId|skuId`).
@override Map<String, LineQuote> get lines {
  if (_lines is EqualUnmodifiableMapView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_lines);
}

/// By seller name.
 final  Map<String, SellerQuote> _sellers;
/// By seller name.
@override Map<String, SellerQuote> get sellers {
  if (_sellers is EqualUnmodifiableMapView) return _sellers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_sellers);
}

@override final  CartSummary summary;
@override final  int minOrderSum;
@override final  PromoResult? promo;

/// Create a copy of CartQuote
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartQuoteCopyWith<_CartQuote> get copyWith => __$CartQuoteCopyWithImpl<_CartQuote>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartQuote&&const DeepCollectionEquality().equals(other._lines, _lines)&&const DeepCollectionEquality().equals(other._sellers, _sellers)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.minOrderSum, minOrderSum) || other.minOrderSum == minOrderSum)&&(identical(other.promo, promo) || other.promo == promo));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_lines),const DeepCollectionEquality().hash(_sellers),summary,minOrderSum,promo);

@override
String toString() {
  return 'CartQuote(lines: $lines, sellers: $sellers, summary: $summary, minOrderSum: $minOrderSum, promo: $promo)';
}


}

/// @nodoc
abstract mixin class _$CartQuoteCopyWith<$Res> implements $CartQuoteCopyWith<$Res> {
  factory _$CartQuoteCopyWith(_CartQuote value, $Res Function(_CartQuote) _then) = __$CartQuoteCopyWithImpl;
@override @useResult
$Res call({
 Map<String, LineQuote> lines, Map<String, SellerQuote> sellers, CartSummary summary, int minOrderSum, PromoResult? promo
});


@override $CartSummaryCopyWith<$Res> get summary;@override $PromoResultCopyWith<$Res>? get promo;

}
/// @nodoc
class __$CartQuoteCopyWithImpl<$Res>
    implements _$CartQuoteCopyWith<$Res> {
  __$CartQuoteCopyWithImpl(this._self, this._then);

  final _CartQuote _self;
  final $Res Function(_CartQuote) _then;

/// Create a copy of CartQuote
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lines = null,Object? sellers = null,Object? summary = null,Object? minOrderSum = null,Object? promo = freezed,}) {
  return _then(_CartQuote(
lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as Map<String, LineQuote>,sellers: null == sellers ? _self._sellers : sellers // ignore: cast_nullable_to_non_nullable
as Map<String, SellerQuote>,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as CartSummary,minOrderSum: null == minOrderSum ? _self.minOrderSum : minOrderSum // ignore: cast_nullable_to_non_nullable
as int,promo: freezed == promo ? _self.promo : promo // ignore: cast_nullable_to_non_nullable
as PromoResult?,
  ));
}

/// Create a copy of CartQuote
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartSummaryCopyWith<$Res> get summary {
  
  return $CartSummaryCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}/// Create a copy of CartQuote
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromoResultCopyWith<$Res>? get promo {
    if (_self.promo == null) {
    return null;
  }

  return $PromoResultCopyWith<$Res>(_self.promo!, (value) {
    return _then(_self.copyWith(promo: value));
  });
}
}

/// @nodoc
mixin _$LineQuote {

 int get price; int get stock; bool get isAvailable;
/// Create a copy of LineQuote
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LineQuoteCopyWith<LineQuote> get copyWith => _$LineQuoteCopyWithImpl<LineQuote>(this as LineQuote, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LineQuote&&(identical(other.price, price) || other.price == price)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable));
}


@override
int get hashCode => Object.hash(runtimeType,price,stock,isAvailable);

@override
String toString() {
  return 'LineQuote(price: $price, stock: $stock, isAvailable: $isAvailable)';
}


}

/// @nodoc
abstract mixin class $LineQuoteCopyWith<$Res>  {
  factory $LineQuoteCopyWith(LineQuote value, $Res Function(LineQuote) _then) = _$LineQuoteCopyWithImpl;
@useResult
$Res call({
 int price, int stock, bool isAvailable
});




}
/// @nodoc
class _$LineQuoteCopyWithImpl<$Res>
    implements $LineQuoteCopyWith<$Res> {
  _$LineQuoteCopyWithImpl(this._self, this._then);

  final LineQuote _self;
  final $Res Function(LineQuote) _then;

/// Create a copy of LineQuote
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? price = null,Object? stock = null,Object? isAvailable = null,}) {
  return _then(_self.copyWith(
price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [LineQuote].
extension LineQuotePatterns on LineQuote {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LineQuote value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LineQuote() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LineQuote value)  $default,){
final _that = this;
switch (_that) {
case _LineQuote():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LineQuote value)?  $default,){
final _that = this;
switch (_that) {
case _LineQuote() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int price,  int stock,  bool isAvailable)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LineQuote() when $default != null:
return $default(_that.price,_that.stock,_that.isAvailable);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int price,  int stock,  bool isAvailable)  $default,) {final _that = this;
switch (_that) {
case _LineQuote():
return $default(_that.price,_that.stock,_that.isAvailable);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int price,  int stock,  bool isAvailable)?  $default,) {final _that = this;
switch (_that) {
case _LineQuote() when $default != null:
return $default(_that.price,_that.stock,_that.isAvailable);case _:
  return null;

}
}

}

/// @nodoc


class _LineQuote implements LineQuote {
  const _LineQuote({required this.price, required this.stock, required this.isAvailable});
  

@override final  int price;
@override final  int stock;
@override final  bool isAvailable;

/// Create a copy of LineQuote
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LineQuoteCopyWith<_LineQuote> get copyWith => __$LineQuoteCopyWithImpl<_LineQuote>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LineQuote&&(identical(other.price, price) || other.price == price)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable));
}


@override
int get hashCode => Object.hash(runtimeType,price,stock,isAvailable);

@override
String toString() {
  return 'LineQuote(price: $price, stock: $stock, isAvailable: $isAvailable)';
}


}

/// @nodoc
abstract mixin class _$LineQuoteCopyWith<$Res> implements $LineQuoteCopyWith<$Res> {
  factory _$LineQuoteCopyWith(_LineQuote value, $Res Function(_LineQuote) _then) = __$LineQuoteCopyWithImpl;
@override @useResult
$Res call({
 int price, int stock, bool isAvailable
});




}
/// @nodoc
class __$LineQuoteCopyWithImpl<$Res>
    implements _$LineQuoteCopyWith<$Res> {
  __$LineQuoteCopyWithImpl(this._self, this._then);

  final _LineQuote _self;
  final $Res Function(_LineQuote) _then;

/// Create a copy of LineQuote
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? price = null,Object? stock = null,Object? isAvailable = null,}) {
  return _then(_LineQuote(
price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$SellerQuote {

 String get name; String get source;/// For ticked lines only; 0 when none of the seller's lines are ticked.
 int get chinaDelivery;
/// Create a copy of SellerQuote
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellerQuoteCopyWith<SellerQuote> get copyWith => _$SellerQuoteCopyWithImpl<SellerQuote>(this as SellerQuote, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellerQuote&&(identical(other.name, name) || other.name == name)&&(identical(other.source, source) || other.source == source)&&(identical(other.chinaDelivery, chinaDelivery) || other.chinaDelivery == chinaDelivery));
}


@override
int get hashCode => Object.hash(runtimeType,name,source,chinaDelivery);

@override
String toString() {
  return 'SellerQuote(name: $name, source: $source, chinaDelivery: $chinaDelivery)';
}


}

/// @nodoc
abstract mixin class $SellerQuoteCopyWith<$Res>  {
  factory $SellerQuoteCopyWith(SellerQuote value, $Res Function(SellerQuote) _then) = _$SellerQuoteCopyWithImpl;
@useResult
$Res call({
 String name, String source, int chinaDelivery
});




}
/// @nodoc
class _$SellerQuoteCopyWithImpl<$Res>
    implements $SellerQuoteCopyWith<$Res> {
  _$SellerQuoteCopyWithImpl(this._self, this._then);

  final SellerQuote _self;
  final $Res Function(SellerQuote) _then;

/// Create a copy of SellerQuote
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? source = null,Object? chinaDelivery = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,chinaDelivery: null == chinaDelivery ? _self.chinaDelivery : chinaDelivery // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SellerQuote].
extension SellerQuotePatterns on SellerQuote {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellerQuote value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellerQuote() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellerQuote value)  $default,){
final _that = this;
switch (_that) {
case _SellerQuote():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellerQuote value)?  $default,){
final _that = this;
switch (_that) {
case _SellerQuote() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String source,  int chinaDelivery)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellerQuote() when $default != null:
return $default(_that.name,_that.source,_that.chinaDelivery);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String source,  int chinaDelivery)  $default,) {final _that = this;
switch (_that) {
case _SellerQuote():
return $default(_that.name,_that.source,_that.chinaDelivery);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String source,  int chinaDelivery)?  $default,) {final _that = this;
switch (_that) {
case _SellerQuote() when $default != null:
return $default(_that.name,_that.source,_that.chinaDelivery);case _:
  return null;

}
}

}

/// @nodoc


class _SellerQuote implements SellerQuote {
  const _SellerQuote({required this.name, required this.source, required this.chinaDelivery});
  

@override final  String name;
@override final  String source;
/// For ticked lines only; 0 when none of the seller's lines are ticked.
@override final  int chinaDelivery;

/// Create a copy of SellerQuote
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellerQuoteCopyWith<_SellerQuote> get copyWith => __$SellerQuoteCopyWithImpl<_SellerQuote>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellerQuote&&(identical(other.name, name) || other.name == name)&&(identical(other.source, source) || other.source == source)&&(identical(other.chinaDelivery, chinaDelivery) || other.chinaDelivery == chinaDelivery));
}


@override
int get hashCode => Object.hash(runtimeType,name,source,chinaDelivery);

@override
String toString() {
  return 'SellerQuote(name: $name, source: $source, chinaDelivery: $chinaDelivery)';
}


}

/// @nodoc
abstract mixin class _$SellerQuoteCopyWith<$Res> implements $SellerQuoteCopyWith<$Res> {
  factory _$SellerQuoteCopyWith(_SellerQuote value, $Res Function(_SellerQuote) _then) = __$SellerQuoteCopyWithImpl;
@override @useResult
$Res call({
 String name, String source, int chinaDelivery
});




}
/// @nodoc
class __$SellerQuoteCopyWithImpl<$Res>
    implements _$SellerQuoteCopyWith<$Res> {
  __$SellerQuoteCopyWithImpl(this._self, this._then);

  final _SellerQuote _self;
  final $Res Function(_SellerQuote) _then;

/// Create a copy of SellerQuote
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? source = null,Object? chinaDelivery = null,}) {
  return _then(_SellerQuote(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,chinaDelivery: null == chinaDelivery ? _self.chinaDelivery : chinaDelivery // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$CartSummary {

 int get items; int get chinaDelivery;/// Air, by weight estimate and region: «уточнится после взвешивания».
 int get internationalEstimate; int get discount; int get total;
/// Create a copy of CartSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartSummaryCopyWith<CartSummary> get copyWith => _$CartSummaryCopyWithImpl<CartSummary>(this as CartSummary, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartSummary&&(identical(other.items, items) || other.items == items)&&(identical(other.chinaDelivery, chinaDelivery) || other.chinaDelivery == chinaDelivery)&&(identical(other.internationalEstimate, internationalEstimate) || other.internationalEstimate == internationalEstimate)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.total, total) || other.total == total));
}


@override
int get hashCode => Object.hash(runtimeType,items,chinaDelivery,internationalEstimate,discount,total);

@override
String toString() {
  return 'CartSummary(items: $items, chinaDelivery: $chinaDelivery, internationalEstimate: $internationalEstimate, discount: $discount, total: $total)';
}


}

/// @nodoc
abstract mixin class $CartSummaryCopyWith<$Res>  {
  factory $CartSummaryCopyWith(CartSummary value, $Res Function(CartSummary) _then) = _$CartSummaryCopyWithImpl;
@useResult
$Res call({
 int items, int chinaDelivery, int internationalEstimate, int discount, int total
});




}
/// @nodoc
class _$CartSummaryCopyWithImpl<$Res>
    implements $CartSummaryCopyWith<$Res> {
  _$CartSummaryCopyWithImpl(this._self, this._then);

  final CartSummary _self;
  final $Res Function(CartSummary) _then;

/// Create a copy of CartSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? chinaDelivery = null,Object? internationalEstimate = null,Object? discount = null,Object? total = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as int,chinaDelivery: null == chinaDelivery ? _self.chinaDelivery : chinaDelivery // ignore: cast_nullable_to_non_nullable
as int,internationalEstimate: null == internationalEstimate ? _self.internationalEstimate : internationalEstimate // ignore: cast_nullable_to_non_nullable
as int,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CartSummary].
extension CartSummaryPatterns on CartSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartSummary value)  $default,){
final _that = this;
switch (_that) {
case _CartSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartSummary value)?  $default,){
final _that = this;
switch (_that) {
case _CartSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int items,  int chinaDelivery,  int internationalEstimate,  int discount,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartSummary() when $default != null:
return $default(_that.items,_that.chinaDelivery,_that.internationalEstimate,_that.discount,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int items,  int chinaDelivery,  int internationalEstimate,  int discount,  int total)  $default,) {final _that = this;
switch (_that) {
case _CartSummary():
return $default(_that.items,_that.chinaDelivery,_that.internationalEstimate,_that.discount,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int items,  int chinaDelivery,  int internationalEstimate,  int discount,  int total)?  $default,) {final _that = this;
switch (_that) {
case _CartSummary() when $default != null:
return $default(_that.items,_that.chinaDelivery,_that.internationalEstimate,_that.discount,_that.total);case _:
  return null;

}
}

}

/// @nodoc


class _CartSummary implements CartSummary {
  const _CartSummary({required this.items, required this.chinaDelivery, required this.internationalEstimate, required this.discount, required this.total});
  

@override final  int items;
@override final  int chinaDelivery;
/// Air, by weight estimate and region: «уточнится после взвешивания».
@override final  int internationalEstimate;
@override final  int discount;
@override final  int total;

/// Create a copy of CartSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartSummaryCopyWith<_CartSummary> get copyWith => __$CartSummaryCopyWithImpl<_CartSummary>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartSummary&&(identical(other.items, items) || other.items == items)&&(identical(other.chinaDelivery, chinaDelivery) || other.chinaDelivery == chinaDelivery)&&(identical(other.internationalEstimate, internationalEstimate) || other.internationalEstimate == internationalEstimate)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.total, total) || other.total == total));
}


@override
int get hashCode => Object.hash(runtimeType,items,chinaDelivery,internationalEstimate,discount,total);

@override
String toString() {
  return 'CartSummary(items: $items, chinaDelivery: $chinaDelivery, internationalEstimate: $internationalEstimate, discount: $discount, total: $total)';
}


}

/// @nodoc
abstract mixin class _$CartSummaryCopyWith<$Res> implements $CartSummaryCopyWith<$Res> {
  factory _$CartSummaryCopyWith(_CartSummary value, $Res Function(_CartSummary) _then) = __$CartSummaryCopyWithImpl;
@override @useResult
$Res call({
 int items, int chinaDelivery, int internationalEstimate, int discount, int total
});




}
/// @nodoc
class __$CartSummaryCopyWithImpl<$Res>
    implements _$CartSummaryCopyWith<$Res> {
  __$CartSummaryCopyWithImpl(this._self, this._then);

  final _CartSummary _self;
  final $Res Function(_CartSummary) _then;

/// Create a copy of CartSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? chinaDelivery = null,Object? internationalEstimate = null,Object? discount = null,Object? total = null,}) {
  return _then(_CartSummary(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as int,chinaDelivery: null == chinaDelivery ? _self.chinaDelivery : chinaDelivery // ignore: cast_nullable_to_non_nullable
as int,internationalEstimate: null == internationalEstimate ? _self.internationalEstimate : internationalEstimate // ignore: cast_nullable_to_non_nullable
as int,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$PromoResult {

 String get code; bool get isApplied;/// Server text in the request language, for a rejected code.
 String? get message;
/// Create a copy of PromoResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromoResultCopyWith<PromoResult> get copyWith => _$PromoResultCopyWithImpl<PromoResult>(this as PromoResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromoResult&&(identical(other.code, code) || other.code == code)&&(identical(other.isApplied, isApplied) || other.isApplied == isApplied)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,code,isApplied,message);

@override
String toString() {
  return 'PromoResult(code: $code, isApplied: $isApplied, message: $message)';
}


}

/// @nodoc
abstract mixin class $PromoResultCopyWith<$Res>  {
  factory $PromoResultCopyWith(PromoResult value, $Res Function(PromoResult) _then) = _$PromoResultCopyWithImpl;
@useResult
$Res call({
 String code, bool isApplied, String? message
});




}
/// @nodoc
class _$PromoResultCopyWithImpl<$Res>
    implements $PromoResultCopyWith<$Res> {
  _$PromoResultCopyWithImpl(this._self, this._then);

  final PromoResult _self;
  final $Res Function(PromoResult) _then;

/// Create a copy of PromoResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? isApplied = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,isApplied: null == isApplied ? _self.isApplied : isApplied // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PromoResult].
extension PromoResultPatterns on PromoResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromoResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromoResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromoResult value)  $default,){
final _that = this;
switch (_that) {
case _PromoResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromoResult value)?  $default,){
final _that = this;
switch (_that) {
case _PromoResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  bool isApplied,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromoResult() when $default != null:
return $default(_that.code,_that.isApplied,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  bool isApplied,  String? message)  $default,) {final _that = this;
switch (_that) {
case _PromoResult():
return $default(_that.code,_that.isApplied,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  bool isApplied,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _PromoResult() when $default != null:
return $default(_that.code,_that.isApplied,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _PromoResult implements PromoResult {
  const _PromoResult({required this.code, required this.isApplied, this.message});
  

@override final  String code;
@override final  bool isApplied;
/// Server text in the request language, for a rejected code.
@override final  String? message;

/// Create a copy of PromoResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromoResultCopyWith<_PromoResult> get copyWith => __$PromoResultCopyWithImpl<_PromoResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromoResult&&(identical(other.code, code) || other.code == code)&&(identical(other.isApplied, isApplied) || other.isApplied == isApplied)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,code,isApplied,message);

@override
String toString() {
  return 'PromoResult(code: $code, isApplied: $isApplied, message: $message)';
}


}

/// @nodoc
abstract mixin class _$PromoResultCopyWith<$Res> implements $PromoResultCopyWith<$Res> {
  factory _$PromoResultCopyWith(_PromoResult value, $Res Function(_PromoResult) _then) = __$PromoResultCopyWithImpl;
@override @useResult
$Res call({
 String code, bool isApplied, String? message
});




}
/// @nodoc
class __$PromoResultCopyWithImpl<$Res>
    implements _$PromoResultCopyWith<$Res> {
  __$PromoResultCopyWithImpl(this._self, this._then);

  final _PromoResult _self;
  final $Res Function(_PromoResult) _then;

/// Create a copy of PromoResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? isApplied = null,Object? message = freezed,}) {
  return _then(_PromoResult(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,isApplied: null == isApplied ? _self.isApplied : isApplied // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
