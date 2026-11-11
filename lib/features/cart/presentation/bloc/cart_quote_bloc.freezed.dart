// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_quote_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartQuoteEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartQuoteEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartQuoteEvent()';
}


}

/// @nodoc
class $CartQuoteEventCopyWith<$Res>  {
$CartQuoteEventCopyWith(CartQuoteEvent _, $Res Function(CartQuoteEvent) __);
}


/// Adds pattern-matching-related methods to [CartQuoteEvent].
extension CartQuoteEventPatterns on CartQuoteEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CartQuoteStarted value)?  started,TResult Function( CartQuoteLinesChanged value)?  linesChanged,TResult Function( CartQuoteRegionChanged value)?  regionChanged,TResult Function( CartQuotePromoApplied value)?  promoApplied,TResult Function( CartQuotePromoRemoved value)?  promoRemoved,TResult Function( CartQuoteRetried value)?  retried,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CartQuoteStarted() when started != null:
return started(_that);case CartQuoteLinesChanged() when linesChanged != null:
return linesChanged(_that);case CartQuoteRegionChanged() when regionChanged != null:
return regionChanged(_that);case CartQuotePromoApplied() when promoApplied != null:
return promoApplied(_that);case CartQuotePromoRemoved() when promoRemoved != null:
return promoRemoved(_that);case CartQuoteRetried() when retried != null:
return retried(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CartQuoteStarted value)  started,required TResult Function( CartQuoteLinesChanged value)  linesChanged,required TResult Function( CartQuoteRegionChanged value)  regionChanged,required TResult Function( CartQuotePromoApplied value)  promoApplied,required TResult Function( CartQuotePromoRemoved value)  promoRemoved,required TResult Function( CartQuoteRetried value)  retried,}){
final _that = this;
switch (_that) {
case CartQuoteStarted():
return started(_that);case CartQuoteLinesChanged():
return linesChanged(_that);case CartQuoteRegionChanged():
return regionChanged(_that);case CartQuotePromoApplied():
return promoApplied(_that);case CartQuotePromoRemoved():
return promoRemoved(_that);case CartQuoteRetried():
return retried(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CartQuoteStarted value)?  started,TResult? Function( CartQuoteLinesChanged value)?  linesChanged,TResult? Function( CartQuoteRegionChanged value)?  regionChanged,TResult? Function( CartQuotePromoApplied value)?  promoApplied,TResult? Function( CartQuotePromoRemoved value)?  promoRemoved,TResult? Function( CartQuoteRetried value)?  retried,}){
final _that = this;
switch (_that) {
case CartQuoteStarted() when started != null:
return started(_that);case CartQuoteLinesChanged() when linesChanged != null:
return linesChanged(_that);case CartQuoteRegionChanged() when regionChanged != null:
return regionChanged(_that);case CartQuotePromoApplied() when promoApplied != null:
return promoApplied(_that);case CartQuotePromoRemoved() when promoRemoved != null:
return promoRemoved(_that);case CartQuoteRetried() when retried != null:
return retried(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String languageCode,  String regionId,  List<CartItem> lines)?  started,TResult Function( List<CartItem> lines)?  linesChanged,TResult Function( String regionId)?  regionChanged,TResult Function( String code)?  promoApplied,TResult Function()?  promoRemoved,TResult Function()?  retried,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CartQuoteStarted() when started != null:
return started(_that.languageCode,_that.regionId,_that.lines);case CartQuoteLinesChanged() when linesChanged != null:
return linesChanged(_that.lines);case CartQuoteRegionChanged() when regionChanged != null:
return regionChanged(_that.regionId);case CartQuotePromoApplied() when promoApplied != null:
return promoApplied(_that.code);case CartQuotePromoRemoved() when promoRemoved != null:
return promoRemoved();case CartQuoteRetried() when retried != null:
return retried();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String languageCode,  String regionId,  List<CartItem> lines)  started,required TResult Function( List<CartItem> lines)  linesChanged,required TResult Function( String regionId)  regionChanged,required TResult Function( String code)  promoApplied,required TResult Function()  promoRemoved,required TResult Function()  retried,}) {final _that = this;
switch (_that) {
case CartQuoteStarted():
return started(_that.languageCode,_that.regionId,_that.lines);case CartQuoteLinesChanged():
return linesChanged(_that.lines);case CartQuoteRegionChanged():
return regionChanged(_that.regionId);case CartQuotePromoApplied():
return promoApplied(_that.code);case CartQuotePromoRemoved():
return promoRemoved();case CartQuoteRetried():
return retried();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String languageCode,  String regionId,  List<CartItem> lines)?  started,TResult? Function( List<CartItem> lines)?  linesChanged,TResult? Function( String regionId)?  regionChanged,TResult? Function( String code)?  promoApplied,TResult? Function()?  promoRemoved,TResult? Function()?  retried,}) {final _that = this;
switch (_that) {
case CartQuoteStarted() when started != null:
return started(_that.languageCode,_that.regionId,_that.lines);case CartQuoteLinesChanged() when linesChanged != null:
return linesChanged(_that.lines);case CartQuoteRegionChanged() when regionChanged != null:
return regionChanged(_that.regionId);case CartQuotePromoApplied() when promoApplied != null:
return promoApplied(_that.code);case CartQuotePromoRemoved() when promoRemoved != null:
return promoRemoved();case CartQuoteRetried() when retried != null:
return retried();case _:
  return null;

}
}

}

/// @nodoc


class CartQuoteStarted implements CartQuoteEvent {
  const CartQuoteStarted({required this.languageCode, required this.regionId, required final  List<CartItem> lines}): _lines = lines;
  

 final  String languageCode;
 final  String regionId;
 final  List<CartItem> _lines;
 List<CartItem> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}


/// Create a copy of CartQuoteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartQuoteStartedCopyWith<CartQuoteStarted> get copyWith => _$CartQuoteStartedCopyWithImpl<CartQuoteStarted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartQuoteStarted&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.regionId, regionId) || other.regionId == regionId)&&const DeepCollectionEquality().equals(other._lines, _lines));
}


@override
int get hashCode => Object.hash(runtimeType,languageCode,regionId,const DeepCollectionEquality().hash(_lines));

@override
String toString() {
  return 'CartQuoteEvent.started(languageCode: $languageCode, regionId: $regionId, lines: $lines)';
}


}

/// @nodoc
abstract mixin class $CartQuoteStartedCopyWith<$Res> implements $CartQuoteEventCopyWith<$Res> {
  factory $CartQuoteStartedCopyWith(CartQuoteStarted value, $Res Function(CartQuoteStarted) _then) = _$CartQuoteStartedCopyWithImpl;
@useResult
$Res call({
 String languageCode, String regionId, List<CartItem> lines
});




}
/// @nodoc
class _$CartQuoteStartedCopyWithImpl<$Res>
    implements $CartQuoteStartedCopyWith<$Res> {
  _$CartQuoteStartedCopyWithImpl(this._self, this._then);

  final CartQuoteStarted _self;
  final $Res Function(CartQuoteStarted) _then;

/// Create a copy of CartQuoteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? languageCode = null,Object? regionId = null,Object? lines = null,}) {
  return _then(CartQuoteStarted(
languageCode: null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,regionId: null == regionId ? _self.regionId : regionId // ignore: cast_nullable_to_non_nullable
as String,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<CartItem>,
  ));
}


}

/// @nodoc


class CartQuoteLinesChanged implements CartQuoteEvent {
  const CartQuoteLinesChanged(final  List<CartItem> lines): _lines = lines;
  

 final  List<CartItem> _lines;
 List<CartItem> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}


/// Create a copy of CartQuoteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartQuoteLinesChangedCopyWith<CartQuoteLinesChanged> get copyWith => _$CartQuoteLinesChangedCopyWithImpl<CartQuoteLinesChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartQuoteLinesChanged&&const DeepCollectionEquality().equals(other._lines, _lines));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_lines));

@override
String toString() {
  return 'CartQuoteEvent.linesChanged(lines: $lines)';
}


}

/// @nodoc
abstract mixin class $CartQuoteLinesChangedCopyWith<$Res> implements $CartQuoteEventCopyWith<$Res> {
  factory $CartQuoteLinesChangedCopyWith(CartQuoteLinesChanged value, $Res Function(CartQuoteLinesChanged) _then) = _$CartQuoteLinesChangedCopyWithImpl;
@useResult
$Res call({
 List<CartItem> lines
});




}
/// @nodoc
class _$CartQuoteLinesChangedCopyWithImpl<$Res>
    implements $CartQuoteLinesChangedCopyWith<$Res> {
  _$CartQuoteLinesChangedCopyWithImpl(this._self, this._then);

  final CartQuoteLinesChanged _self;
  final $Res Function(CartQuoteLinesChanged) _then;

/// Create a copy of CartQuoteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? lines = null,}) {
  return _then(CartQuoteLinesChanged(
null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<CartItem>,
  ));
}


}

/// @nodoc


class CartQuoteRegionChanged implements CartQuoteEvent {
  const CartQuoteRegionChanged(this.regionId);
  

 final  String regionId;

/// Create a copy of CartQuoteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartQuoteRegionChangedCopyWith<CartQuoteRegionChanged> get copyWith => _$CartQuoteRegionChangedCopyWithImpl<CartQuoteRegionChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartQuoteRegionChanged&&(identical(other.regionId, regionId) || other.regionId == regionId));
}


@override
int get hashCode => Object.hash(runtimeType,regionId);

@override
String toString() {
  return 'CartQuoteEvent.regionChanged(regionId: $regionId)';
}


}

/// @nodoc
abstract mixin class $CartQuoteRegionChangedCopyWith<$Res> implements $CartQuoteEventCopyWith<$Res> {
  factory $CartQuoteRegionChangedCopyWith(CartQuoteRegionChanged value, $Res Function(CartQuoteRegionChanged) _then) = _$CartQuoteRegionChangedCopyWithImpl;
@useResult
$Res call({
 String regionId
});




}
/// @nodoc
class _$CartQuoteRegionChangedCopyWithImpl<$Res>
    implements $CartQuoteRegionChangedCopyWith<$Res> {
  _$CartQuoteRegionChangedCopyWithImpl(this._self, this._then);

  final CartQuoteRegionChanged _self;
  final $Res Function(CartQuoteRegionChanged) _then;

/// Create a copy of CartQuoteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? regionId = null,}) {
  return _then(CartQuoteRegionChanged(
null == regionId ? _self.regionId : regionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CartQuotePromoApplied implements CartQuoteEvent {
  const CartQuotePromoApplied(this.code);
  

 final  String code;

/// Create a copy of CartQuoteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartQuotePromoAppliedCopyWith<CartQuotePromoApplied> get copyWith => _$CartQuotePromoAppliedCopyWithImpl<CartQuotePromoApplied>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartQuotePromoApplied&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode => Object.hash(runtimeType,code);

@override
String toString() {
  return 'CartQuoteEvent.promoApplied(code: $code)';
}


}

/// @nodoc
abstract mixin class $CartQuotePromoAppliedCopyWith<$Res> implements $CartQuoteEventCopyWith<$Res> {
  factory $CartQuotePromoAppliedCopyWith(CartQuotePromoApplied value, $Res Function(CartQuotePromoApplied) _then) = _$CartQuotePromoAppliedCopyWithImpl;
@useResult
$Res call({
 String code
});




}
/// @nodoc
class _$CartQuotePromoAppliedCopyWithImpl<$Res>
    implements $CartQuotePromoAppliedCopyWith<$Res> {
  _$CartQuotePromoAppliedCopyWithImpl(this._self, this._then);

  final CartQuotePromoApplied _self;
  final $Res Function(CartQuotePromoApplied) _then;

/// Create a copy of CartQuoteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(CartQuotePromoApplied(
null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CartQuotePromoRemoved implements CartQuoteEvent {
  const CartQuotePromoRemoved();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartQuotePromoRemoved);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartQuoteEvent.promoRemoved()';
}


}




/// @nodoc


class CartQuoteRetried implements CartQuoteEvent {
  const CartQuoteRetried();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartQuoteRetried);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartQuoteEvent.retried()';
}


}




/// @nodoc
mixin _$CartQuoteState {

/// Last good answer; kept on screen while a new one loads or fails.
 CartQuote? get quote; bool get isLoading; Failure? get failure;/// Code being checked or applied; cleared when the server rejects it.
 String? get promoCode;/// Server text for a rejected code, shown under the field.
 String? get promoError;
/// Create a copy of CartQuoteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartQuoteStateCopyWith<CartQuoteState> get copyWith => _$CartQuoteStateCopyWithImpl<CartQuoteState>(this as CartQuoteState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartQuoteState&&(identical(other.quote, quote) || other.quote == quote)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.promoCode, promoCode) || other.promoCode == promoCode)&&(identical(other.promoError, promoError) || other.promoError == promoError));
}


@override
int get hashCode => Object.hash(runtimeType,quote,isLoading,failure,promoCode,promoError);

@override
String toString() {
  return 'CartQuoteState(quote: $quote, isLoading: $isLoading, failure: $failure, promoCode: $promoCode, promoError: $promoError)';
}


}

/// @nodoc
abstract mixin class $CartQuoteStateCopyWith<$Res>  {
  factory $CartQuoteStateCopyWith(CartQuoteState value, $Res Function(CartQuoteState) _then) = _$CartQuoteStateCopyWithImpl;
@useResult
$Res call({
 CartQuote? quote, bool isLoading, Failure? failure, String? promoCode, String? promoError
});


$CartQuoteCopyWith<$Res>? get quote;

}
/// @nodoc
class _$CartQuoteStateCopyWithImpl<$Res>
    implements $CartQuoteStateCopyWith<$Res> {
  _$CartQuoteStateCopyWithImpl(this._self, this._then);

  final CartQuoteState _self;
  final $Res Function(CartQuoteState) _then;

/// Create a copy of CartQuoteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? quote = freezed,Object? isLoading = null,Object? failure = freezed,Object? promoCode = freezed,Object? promoError = freezed,}) {
  return _then(_self.copyWith(
quote: freezed == quote ? _self.quote : quote // ignore: cast_nullable_to_non_nullable
as CartQuote?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,promoCode: freezed == promoCode ? _self.promoCode : promoCode // ignore: cast_nullable_to_non_nullable
as String?,promoError: freezed == promoError ? _self.promoError : promoError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of CartQuoteState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartQuoteCopyWith<$Res>? get quote {
    if (_self.quote == null) {
    return null;
  }

  return $CartQuoteCopyWith<$Res>(_self.quote!, (value) {
    return _then(_self.copyWith(quote: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartQuoteState].
extension CartQuoteStatePatterns on CartQuoteState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartQuoteState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartQuoteState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartQuoteState value)  $default,){
final _that = this;
switch (_that) {
case _CartQuoteState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartQuoteState value)?  $default,){
final _that = this;
switch (_that) {
case _CartQuoteState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CartQuote? quote,  bool isLoading,  Failure? failure,  String? promoCode,  String? promoError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartQuoteState() when $default != null:
return $default(_that.quote,_that.isLoading,_that.failure,_that.promoCode,_that.promoError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CartQuote? quote,  bool isLoading,  Failure? failure,  String? promoCode,  String? promoError)  $default,) {final _that = this;
switch (_that) {
case _CartQuoteState():
return $default(_that.quote,_that.isLoading,_that.failure,_that.promoCode,_that.promoError);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CartQuote? quote,  bool isLoading,  Failure? failure,  String? promoCode,  String? promoError)?  $default,) {final _that = this;
switch (_that) {
case _CartQuoteState() when $default != null:
return $default(_that.quote,_that.isLoading,_that.failure,_that.promoCode,_that.promoError);case _:
  return null;

}
}

}

/// @nodoc


class _CartQuoteState implements CartQuoteState {
  const _CartQuoteState({this.quote, this.isLoading = false, this.failure, this.promoCode, this.promoError});
  

/// Last good answer; kept on screen while a new one loads or fails.
@override final  CartQuote? quote;
@override@JsonKey() final  bool isLoading;
@override final  Failure? failure;
/// Code being checked or applied; cleared when the server rejects it.
@override final  String? promoCode;
/// Server text for a rejected code, shown under the field.
@override final  String? promoError;

/// Create a copy of CartQuoteState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartQuoteStateCopyWith<_CartQuoteState> get copyWith => __$CartQuoteStateCopyWithImpl<_CartQuoteState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartQuoteState&&(identical(other.quote, quote) || other.quote == quote)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.promoCode, promoCode) || other.promoCode == promoCode)&&(identical(other.promoError, promoError) || other.promoError == promoError));
}


@override
int get hashCode => Object.hash(runtimeType,quote,isLoading,failure,promoCode,promoError);

@override
String toString() {
  return 'CartQuoteState(quote: $quote, isLoading: $isLoading, failure: $failure, promoCode: $promoCode, promoError: $promoError)';
}


}

/// @nodoc
abstract mixin class _$CartQuoteStateCopyWith<$Res> implements $CartQuoteStateCopyWith<$Res> {
  factory _$CartQuoteStateCopyWith(_CartQuoteState value, $Res Function(_CartQuoteState) _then) = __$CartQuoteStateCopyWithImpl;
@override @useResult
$Res call({
 CartQuote? quote, bool isLoading, Failure? failure, String? promoCode, String? promoError
});


@override $CartQuoteCopyWith<$Res>? get quote;

}
/// @nodoc
class __$CartQuoteStateCopyWithImpl<$Res>
    implements _$CartQuoteStateCopyWith<$Res> {
  __$CartQuoteStateCopyWithImpl(this._self, this._then);

  final _CartQuoteState _self;
  final $Res Function(_CartQuoteState) _then;

/// Create a copy of CartQuoteState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? quote = freezed,Object? isLoading = null,Object? failure = freezed,Object? promoCode = freezed,Object? promoError = freezed,}) {
  return _then(_CartQuoteState(
quote: freezed == quote ? _self.quote : quote // ignore: cast_nullable_to_non_nullable
as CartQuote?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,promoCode: freezed == promoCode ? _self.promoCode : promoCode // ignore: cast_nullable_to_non_nullable
as String?,promoError: freezed == promoError ? _self.promoError : promoError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CartQuoteState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartQuoteCopyWith<$Res>? get quote {
    if (_self.quote == null) {
    return null;
  }

  return $CartQuoteCopyWith<$Res>(_self.quote!, (value) {
    return _then(_self.copyWith(quote: value));
  });
}
}

// dart format on
