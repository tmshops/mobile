// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FilterChoice {

 String get value; String get label;
/// Create a copy of FilterChoice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterChoiceCopyWith<FilterChoice> get copyWith => _$FilterChoiceCopyWithImpl<FilterChoice>(this as FilterChoice, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterChoice&&(identical(other.value, value) || other.value == value)&&(identical(other.label, label) || other.label == label));
}


@override
int get hashCode => Object.hash(runtimeType,value,label);

@override
String toString() {
  return 'FilterChoice(value: $value, label: $label)';
}


}

/// @nodoc
abstract mixin class $FilterChoiceCopyWith<$Res>  {
  factory $FilterChoiceCopyWith(FilterChoice value, $Res Function(FilterChoice) _then) = _$FilterChoiceCopyWithImpl;
@useResult
$Res call({
 String value, String label
});




}
/// @nodoc
class _$FilterChoiceCopyWithImpl<$Res>
    implements $FilterChoiceCopyWith<$Res> {
  _$FilterChoiceCopyWithImpl(this._self, this._then);

  final FilterChoice _self;
  final $Res Function(FilterChoice) _then;

/// Create a copy of FilterChoice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,Object? label = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FilterChoice].
extension FilterChoicePatterns on FilterChoice {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FilterChoice value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FilterChoice() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FilterChoice value)  $default,){
final _that = this;
switch (_that) {
case _FilterChoice():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FilterChoice value)?  $default,){
final _that = this;
switch (_that) {
case _FilterChoice() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String value,  String label)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FilterChoice() when $default != null:
return $default(_that.value,_that.label);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String value,  String label)  $default,) {final _that = this;
switch (_that) {
case _FilterChoice():
return $default(_that.value,_that.label);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String value,  String label)?  $default,) {final _that = this;
switch (_that) {
case _FilterChoice() when $default != null:
return $default(_that.value,_that.label);case _:
  return null;

}
}

}

/// @nodoc


class _FilterChoice implements FilterChoice {
  const _FilterChoice({required this.value, required this.label});
  

@override final  String value;
@override final  String label;

/// Create a copy of FilterChoice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilterChoiceCopyWith<_FilterChoice> get copyWith => __$FilterChoiceCopyWithImpl<_FilterChoice>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilterChoice&&(identical(other.value, value) || other.value == value)&&(identical(other.label, label) || other.label == label));
}


@override
int get hashCode => Object.hash(runtimeType,value,label);

@override
String toString() {
  return 'FilterChoice(value: $value, label: $label)';
}


}

/// @nodoc
abstract mixin class _$FilterChoiceCopyWith<$Res> implements $FilterChoiceCopyWith<$Res> {
  factory _$FilterChoiceCopyWith(_FilterChoice value, $Res Function(_FilterChoice) _then) = __$FilterChoiceCopyWithImpl;
@override @useResult
$Res call({
 String value, String label
});




}
/// @nodoc
class __$FilterChoiceCopyWithImpl<$Res>
    implements _$FilterChoiceCopyWith<$Res> {
  __$FilterChoiceCopyWithImpl(this._self, this._then);

  final _FilterChoice _self;
  final $Res Function(_FilterChoice) _then;

/// Create a copy of FilterChoice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? label = null,}) {
  return _then(_FilterChoice(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$PriceRange {

 int? get min; int? get max;
/// Create a copy of PriceRange
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceRangeCopyWith<PriceRange> get copyWith => _$PriceRangeCopyWithImpl<PriceRange>(this as PriceRange, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceRange&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max));
}


@override
int get hashCode => Object.hash(runtimeType,min,max);

@override
String toString() {
  return 'PriceRange(min: $min, max: $max)';
}


}

/// @nodoc
abstract mixin class $PriceRangeCopyWith<$Res>  {
  factory $PriceRangeCopyWith(PriceRange value, $Res Function(PriceRange) _then) = _$PriceRangeCopyWithImpl;
@useResult
$Res call({
 int? min, int? max
});




}
/// @nodoc
class _$PriceRangeCopyWithImpl<$Res>
    implements $PriceRangeCopyWith<$Res> {
  _$PriceRangeCopyWithImpl(this._self, this._then);

  final PriceRange _self;
  final $Res Function(PriceRange) _then;

/// Create a copy of PriceRange
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? min = freezed,Object? max = freezed,}) {
  return _then(_self.copyWith(
min: freezed == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as int?,max: freezed == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PriceRange].
extension PriceRangePatterns on PriceRange {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceRange value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceRange() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceRange value)  $default,){
final _that = this;
switch (_that) {
case _PriceRange():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceRange value)?  $default,){
final _that = this;
switch (_that) {
case _PriceRange() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? min,  int? max)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriceRange() when $default != null:
return $default(_that.min,_that.max);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? min,  int? max)  $default,) {final _that = this;
switch (_that) {
case _PriceRange():
return $default(_that.min,_that.max);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? min,  int? max)?  $default,) {final _that = this;
switch (_that) {
case _PriceRange() when $default != null:
return $default(_that.min,_that.max);case _:
  return null;

}
}

}

/// @nodoc


class _PriceRange extends PriceRange {
  const _PriceRange({this.min, this.max}): super._();
  

@override final  int? min;
@override final  int? max;

/// Create a copy of PriceRange
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceRangeCopyWith<_PriceRange> get copyWith => __$PriceRangeCopyWithImpl<_PriceRange>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceRange&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max));
}


@override
int get hashCode => Object.hash(runtimeType,min,max);

@override
String toString() {
  return 'PriceRange(min: $min, max: $max)';
}


}

/// @nodoc
abstract mixin class _$PriceRangeCopyWith<$Res> implements $PriceRangeCopyWith<$Res> {
  factory _$PriceRangeCopyWith(_PriceRange value, $Res Function(_PriceRange) _then) = __$PriceRangeCopyWithImpl;
@override @useResult
$Res call({
 int? min, int? max
});




}
/// @nodoc
class __$PriceRangeCopyWithImpl<$Res>
    implements _$PriceRangeCopyWith<$Res> {
  __$PriceRangeCopyWithImpl(this._self, this._then);

  final _PriceRange _self;
  final $Res Function(_PriceRange) _then;

/// Create a copy of PriceRange
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? min = freezed,Object? max = freezed,}) {
  return _then(_PriceRange(
min: freezed == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as int?,max: freezed == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$AppliedFilters {

 PriceRange get price;/// Options facet id → picked values.
 Map<String, List<FilterChoice>> get choices;/// Toggle facet id → its title (for the chip), present when switched on.
 Map<String, String> get toggles;
/// Create a copy of AppliedFilters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppliedFiltersCopyWith<AppliedFilters> get copyWith => _$AppliedFiltersCopyWithImpl<AppliedFilters>(this as AppliedFilters, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppliedFilters&&(identical(other.price, price) || other.price == price)&&const DeepCollectionEquality().equals(other.choices, choices)&&const DeepCollectionEquality().equals(other.toggles, toggles));
}


@override
int get hashCode => Object.hash(runtimeType,price,const DeepCollectionEquality().hash(choices),const DeepCollectionEquality().hash(toggles));

@override
String toString() {
  return 'AppliedFilters(price: $price, choices: $choices, toggles: $toggles)';
}


}

/// @nodoc
abstract mixin class $AppliedFiltersCopyWith<$Res>  {
  factory $AppliedFiltersCopyWith(AppliedFilters value, $Res Function(AppliedFilters) _then) = _$AppliedFiltersCopyWithImpl;
@useResult
$Res call({
 PriceRange price, Map<String, List<FilterChoice>> choices, Map<String, String> toggles
});


$PriceRangeCopyWith<$Res> get price;

}
/// @nodoc
class _$AppliedFiltersCopyWithImpl<$Res>
    implements $AppliedFiltersCopyWith<$Res> {
  _$AppliedFiltersCopyWithImpl(this._self, this._then);

  final AppliedFilters _self;
  final $Res Function(AppliedFilters) _then;

/// Create a copy of AppliedFilters
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? price = null,Object? choices = null,Object? toggles = null,}) {
  return _then(_self.copyWith(
price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as PriceRange,choices: null == choices ? _self.choices : choices // ignore: cast_nullable_to_non_nullable
as Map<String, List<FilterChoice>>,toggles: null == toggles ? _self.toggles : toggles // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}
/// Create a copy of AppliedFilters
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceRangeCopyWith<$Res> get price {
  
  return $PriceRangeCopyWith<$Res>(_self.price, (value) {
    return _then(_self.copyWith(price: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppliedFilters].
extension AppliedFiltersPatterns on AppliedFilters {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppliedFilters value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppliedFilters() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppliedFilters value)  $default,){
final _that = this;
switch (_that) {
case _AppliedFilters():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppliedFilters value)?  $default,){
final _that = this;
switch (_that) {
case _AppliedFilters() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PriceRange price,  Map<String, List<FilterChoice>> choices,  Map<String, String> toggles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppliedFilters() when $default != null:
return $default(_that.price,_that.choices,_that.toggles);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PriceRange price,  Map<String, List<FilterChoice>> choices,  Map<String, String> toggles)  $default,) {final _that = this;
switch (_that) {
case _AppliedFilters():
return $default(_that.price,_that.choices,_that.toggles);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PriceRange price,  Map<String, List<FilterChoice>> choices,  Map<String, String> toggles)?  $default,) {final _that = this;
switch (_that) {
case _AppliedFilters() when $default != null:
return $default(_that.price,_that.choices,_that.toggles);case _:
  return null;

}
}

}

/// @nodoc


class _AppliedFilters extends AppliedFilters {
  const _AppliedFilters({this.price = const PriceRange(), final  Map<String, List<FilterChoice>> choices = const <String, List<FilterChoice>>{}, final  Map<String, String> toggles = const <String, String>{}}): _choices = choices,_toggles = toggles,super._();
  

@override@JsonKey() final  PriceRange price;
/// Options facet id → picked values.
 final  Map<String, List<FilterChoice>> _choices;
/// Options facet id → picked values.
@override@JsonKey() Map<String, List<FilterChoice>> get choices {
  if (_choices is EqualUnmodifiableMapView) return _choices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_choices);
}

/// Toggle facet id → its title (for the chip), present when switched on.
 final  Map<String, String> _toggles;
/// Toggle facet id → its title (for the chip), present when switched on.
@override@JsonKey() Map<String, String> get toggles {
  if (_toggles is EqualUnmodifiableMapView) return _toggles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_toggles);
}


/// Create a copy of AppliedFilters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppliedFiltersCopyWith<_AppliedFilters> get copyWith => __$AppliedFiltersCopyWithImpl<_AppliedFilters>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppliedFilters&&(identical(other.price, price) || other.price == price)&&const DeepCollectionEquality().equals(other._choices, _choices)&&const DeepCollectionEquality().equals(other._toggles, _toggles));
}


@override
int get hashCode => Object.hash(runtimeType,price,const DeepCollectionEquality().hash(_choices),const DeepCollectionEquality().hash(_toggles));

@override
String toString() {
  return 'AppliedFilters(price: $price, choices: $choices, toggles: $toggles)';
}


}

/// @nodoc
abstract mixin class _$AppliedFiltersCopyWith<$Res> implements $AppliedFiltersCopyWith<$Res> {
  factory _$AppliedFiltersCopyWith(_AppliedFilters value, $Res Function(_AppliedFilters) _then) = __$AppliedFiltersCopyWithImpl;
@override @useResult
$Res call({
 PriceRange price, Map<String, List<FilterChoice>> choices, Map<String, String> toggles
});


@override $PriceRangeCopyWith<$Res> get price;

}
/// @nodoc
class __$AppliedFiltersCopyWithImpl<$Res>
    implements _$AppliedFiltersCopyWith<$Res> {
  __$AppliedFiltersCopyWithImpl(this._self, this._then);

  final _AppliedFilters _self;
  final $Res Function(_AppliedFilters) _then;

/// Create a copy of AppliedFilters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? price = null,Object? choices = null,Object? toggles = null,}) {
  return _then(_AppliedFilters(
price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as PriceRange,choices: null == choices ? _self._choices : choices // ignore: cast_nullable_to_non_nullable
as Map<String, List<FilterChoice>>,toggles: null == toggles ? _self._toggles : toggles // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}

/// Create a copy of AppliedFilters
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceRangeCopyWith<$Res> get price {
  
  return $PriceRangeCopyWith<$Res>(_self.price, (value) {
    return _then(_self.copyWith(price: value));
  });
}
}

/// @nodoc
mixin _$ProductQuery {

/// Empty for a promotion's products.
 String get categorySlug;/// The products of this promotion instead of a category (UI_DESIGN
/// §7.16).
 String? get promoSlug;/// Products matching this text instead of a category (TZ §5.7).
 String? get searchText;/// Products of this seller («Все товары продавца»).
 String? get sellerId;/// A Home collection («Хиты», «Новинки») behind «Все».
 String? get collectionId; ProductSort get sort; AppliedFilters get filters;
/// Create a copy of ProductQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductQueryCopyWith<ProductQuery> get copyWith => _$ProductQueryCopyWithImpl<ProductQuery>(this as ProductQuery, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductQuery&&(identical(other.categorySlug, categorySlug) || other.categorySlug == categorySlug)&&(identical(other.promoSlug, promoSlug) || other.promoSlug == promoSlug)&&(identical(other.searchText, searchText) || other.searchText == searchText)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.filters, filters) || other.filters == filters));
}


@override
int get hashCode => Object.hash(runtimeType,categorySlug,promoSlug,searchText,sellerId,collectionId,sort,filters);

@override
String toString() {
  return 'ProductQuery(categorySlug: $categorySlug, promoSlug: $promoSlug, searchText: $searchText, sellerId: $sellerId, collectionId: $collectionId, sort: $sort, filters: $filters)';
}


}

/// @nodoc
abstract mixin class $ProductQueryCopyWith<$Res>  {
  factory $ProductQueryCopyWith(ProductQuery value, $Res Function(ProductQuery) _then) = _$ProductQueryCopyWithImpl;
@useResult
$Res call({
 String categorySlug, String? promoSlug, String? searchText, String? sellerId, String? collectionId, ProductSort sort, AppliedFilters filters
});


$AppliedFiltersCopyWith<$Res> get filters;

}
/// @nodoc
class _$ProductQueryCopyWithImpl<$Res>
    implements $ProductQueryCopyWith<$Res> {
  _$ProductQueryCopyWithImpl(this._self, this._then);

  final ProductQuery _self;
  final $Res Function(ProductQuery) _then;

/// Create a copy of ProductQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categorySlug = null,Object? promoSlug = freezed,Object? searchText = freezed,Object? sellerId = freezed,Object? collectionId = freezed,Object? sort = null,Object? filters = null,}) {
  return _then(_self.copyWith(
categorySlug: null == categorySlug ? _self.categorySlug : categorySlug // ignore: cast_nullable_to_non_nullable
as String,promoSlug: freezed == promoSlug ? _self.promoSlug : promoSlug // ignore: cast_nullable_to_non_nullable
as String?,searchText: freezed == searchText ? _self.searchText : searchText // ignore: cast_nullable_to_non_nullable
as String?,sellerId: freezed == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String?,collectionId: freezed == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String?,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as ProductSort,filters: null == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as AppliedFilters,
  ));
}
/// Create a copy of ProductQuery
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppliedFiltersCopyWith<$Res> get filters {
  
  return $AppliedFiltersCopyWith<$Res>(_self.filters, (value) {
    return _then(_self.copyWith(filters: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductQuery].
extension ProductQueryPatterns on ProductQuery {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductQuery value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductQuery() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductQuery value)  $default,){
final _that = this;
switch (_that) {
case _ProductQuery():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductQuery value)?  $default,){
final _that = this;
switch (_that) {
case _ProductQuery() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String categorySlug,  String? promoSlug,  String? searchText,  String? sellerId,  String? collectionId,  ProductSort sort,  AppliedFilters filters)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductQuery() when $default != null:
return $default(_that.categorySlug,_that.promoSlug,_that.searchText,_that.sellerId,_that.collectionId,_that.sort,_that.filters);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String categorySlug,  String? promoSlug,  String? searchText,  String? sellerId,  String? collectionId,  ProductSort sort,  AppliedFilters filters)  $default,) {final _that = this;
switch (_that) {
case _ProductQuery():
return $default(_that.categorySlug,_that.promoSlug,_that.searchText,_that.sellerId,_that.collectionId,_that.sort,_that.filters);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String categorySlug,  String? promoSlug,  String? searchText,  String? sellerId,  String? collectionId,  ProductSort sort,  AppliedFilters filters)?  $default,) {final _that = this;
switch (_that) {
case _ProductQuery() when $default != null:
return $default(_that.categorySlug,_that.promoSlug,_that.searchText,_that.sellerId,_that.collectionId,_that.sort,_that.filters);case _:
  return null;

}
}

}

/// @nodoc


class _ProductQuery extends ProductQuery {
  const _ProductQuery({required this.categorySlug, this.promoSlug, this.searchText, this.sellerId, this.collectionId, this.sort = ProductSort.popular, this.filters = const AppliedFilters()}): super._();
  

/// Empty for a promotion's products.
@override final  String categorySlug;
/// The products of this promotion instead of a category (UI_DESIGN
/// §7.16).
@override final  String? promoSlug;
/// Products matching this text instead of a category (TZ §5.7).
@override final  String? searchText;
/// Products of this seller («Все товары продавца»).
@override final  String? sellerId;
/// A Home collection («Хиты», «Новинки») behind «Все».
@override final  String? collectionId;
@override@JsonKey() final  ProductSort sort;
@override@JsonKey() final  AppliedFilters filters;

/// Create a copy of ProductQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductQueryCopyWith<_ProductQuery> get copyWith => __$ProductQueryCopyWithImpl<_ProductQuery>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductQuery&&(identical(other.categorySlug, categorySlug) || other.categorySlug == categorySlug)&&(identical(other.promoSlug, promoSlug) || other.promoSlug == promoSlug)&&(identical(other.searchText, searchText) || other.searchText == searchText)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.filters, filters) || other.filters == filters));
}


@override
int get hashCode => Object.hash(runtimeType,categorySlug,promoSlug,searchText,sellerId,collectionId,sort,filters);

@override
String toString() {
  return 'ProductQuery(categorySlug: $categorySlug, promoSlug: $promoSlug, searchText: $searchText, sellerId: $sellerId, collectionId: $collectionId, sort: $sort, filters: $filters)';
}


}

/// @nodoc
abstract mixin class _$ProductQueryCopyWith<$Res> implements $ProductQueryCopyWith<$Res> {
  factory _$ProductQueryCopyWith(_ProductQuery value, $Res Function(_ProductQuery) _then) = __$ProductQueryCopyWithImpl;
@override @useResult
$Res call({
 String categorySlug, String? promoSlug, String? searchText, String? sellerId, String? collectionId, ProductSort sort, AppliedFilters filters
});


@override $AppliedFiltersCopyWith<$Res> get filters;

}
/// @nodoc
class __$ProductQueryCopyWithImpl<$Res>
    implements _$ProductQueryCopyWith<$Res> {
  __$ProductQueryCopyWithImpl(this._self, this._then);

  final _ProductQuery _self;
  final $Res Function(_ProductQuery) _then;

/// Create a copy of ProductQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categorySlug = null,Object? promoSlug = freezed,Object? searchText = freezed,Object? sellerId = freezed,Object? collectionId = freezed,Object? sort = null,Object? filters = null,}) {
  return _then(_ProductQuery(
categorySlug: null == categorySlug ? _self.categorySlug : categorySlug // ignore: cast_nullable_to_non_nullable
as String,promoSlug: freezed == promoSlug ? _self.promoSlug : promoSlug // ignore: cast_nullable_to_non_nullable
as String?,searchText: freezed == searchText ? _self.searchText : searchText // ignore: cast_nullable_to_non_nullable
as String?,sellerId: freezed == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String?,collectionId: freezed == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String?,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as ProductSort,filters: null == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as AppliedFilters,
  ));
}

/// Create a copy of ProductQuery
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppliedFiltersCopyWith<$Res> get filters {
  
  return $AppliedFiltersCopyWith<$Res>(_self.filters, (value) {
    return _then(_self.copyWith(filters: value));
  });
}
}

// dart format on
