// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'facet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Facet {

 String get id; String get title;
/// Create a copy of Facet
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FacetCopyWith<Facet> get copyWith => _$FacetCopyWithImpl<Facet>(this as Facet, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Facet&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'Facet(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class $FacetCopyWith<$Res>  {
  factory $FacetCopyWith(Facet value, $Res Function(Facet) _then) = _$FacetCopyWithImpl;
@useResult
$Res call({
 String id, String title
});




}
/// @nodoc
class _$FacetCopyWithImpl<$Res>
    implements $FacetCopyWith<$Res> {
  _$FacetCopyWithImpl(this._self, this._then);

  final Facet _self;
  final $Res Function(Facet) _then;

/// Create a copy of Facet
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Facet].
extension FacetPatterns on Facet {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RangeFacet value)?  range,TResult Function( OptionsFacet value)?  options,TResult Function( ToggleFacet value)?  toggle,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RangeFacet() when range != null:
return range(_that);case OptionsFacet() when options != null:
return options(_that);case ToggleFacet() when toggle != null:
return toggle(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RangeFacet value)  range,required TResult Function( OptionsFacet value)  options,required TResult Function( ToggleFacet value)  toggle,}){
final _that = this;
switch (_that) {
case RangeFacet():
return range(_that);case OptionsFacet():
return options(_that);case ToggleFacet():
return toggle(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RangeFacet value)?  range,TResult? Function( OptionsFacet value)?  options,TResult? Function( ToggleFacet value)?  toggle,}){
final _that = this;
switch (_that) {
case RangeFacet() when range != null:
return range(_that);case OptionsFacet() when options != null:
return options(_that);case ToggleFacet() when toggle != null:
return toggle(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id,  String title,  int min,  int max)?  range,TResult Function( String id,  String title,  FacetDisplay display,  List<FacetOption> options)?  options,TResult Function( String id,  String title,  int count)?  toggle,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RangeFacet() when range != null:
return range(_that.id,_that.title,_that.min,_that.max);case OptionsFacet() when options != null:
return options(_that.id,_that.title,_that.display,_that.options);case ToggleFacet() when toggle != null:
return toggle(_that.id,_that.title,_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id,  String title,  int min,  int max)  range,required TResult Function( String id,  String title,  FacetDisplay display,  List<FacetOption> options)  options,required TResult Function( String id,  String title,  int count)  toggle,}) {final _that = this;
switch (_that) {
case RangeFacet():
return range(_that.id,_that.title,_that.min,_that.max);case OptionsFacet():
return options(_that.id,_that.title,_that.display,_that.options);case ToggleFacet():
return toggle(_that.id,_that.title,_that.count);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id,  String title,  int min,  int max)?  range,TResult? Function( String id,  String title,  FacetDisplay display,  List<FacetOption> options)?  options,TResult? Function( String id,  String title,  int count)?  toggle,}) {final _that = this;
switch (_that) {
case RangeFacet() when range != null:
return range(_that.id,_that.title,_that.min,_that.max);case OptionsFacet() when options != null:
return options(_that.id,_that.title,_that.display,_that.options);case ToggleFacet() when toggle != null:
return toggle(_that.id,_that.title,_that.count);case _:
  return null;

}
}

}

/// @nodoc


class RangeFacet implements Facet {
  const RangeFacet({required this.id, required this.title, required this.min, required this.max});
  

@override final  String id;
@override final  String title;
 final  int min;
 final  int max;

/// Create a copy of Facet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RangeFacetCopyWith<RangeFacet> get copyWith => _$RangeFacetCopyWithImpl<RangeFacet>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RangeFacet&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,min,max);

@override
String toString() {
  return 'Facet.range(id: $id, title: $title, min: $min, max: $max)';
}


}

/// @nodoc
abstract mixin class $RangeFacetCopyWith<$Res> implements $FacetCopyWith<$Res> {
  factory $RangeFacetCopyWith(RangeFacet value, $Res Function(RangeFacet) _then) = _$RangeFacetCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, int min, int max
});




}
/// @nodoc
class _$RangeFacetCopyWithImpl<$Res>
    implements $RangeFacetCopyWith<$Res> {
  _$RangeFacetCopyWithImpl(this._self, this._then);

  final RangeFacet _self;
  final $Res Function(RangeFacet) _then;

/// Create a copy of Facet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? min = null,Object? max = null,}) {
  return _then(RangeFacet(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,min: null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as int,max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class OptionsFacet implements Facet {
  const OptionsFacet({required this.id, required this.title, required this.display, required final  List<FacetOption> options}): _options = options;
  

@override final  String id;
@override final  String title;
 final  FacetDisplay display;
 final  List<FacetOption> _options;
 List<FacetOption> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of Facet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OptionsFacetCopyWith<OptionsFacet> get copyWith => _$OptionsFacetCopyWithImpl<OptionsFacet>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OptionsFacet&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.display, display) || other.display == display)&&const DeepCollectionEquality().equals(other._options, _options));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,display,const DeepCollectionEquality().hash(_options));

@override
String toString() {
  return 'Facet.options(id: $id, title: $title, display: $display, options: $options)';
}


}

/// @nodoc
abstract mixin class $OptionsFacetCopyWith<$Res> implements $FacetCopyWith<$Res> {
  factory $OptionsFacetCopyWith(OptionsFacet value, $Res Function(OptionsFacet) _then) = _$OptionsFacetCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, FacetDisplay display, List<FacetOption> options
});




}
/// @nodoc
class _$OptionsFacetCopyWithImpl<$Res>
    implements $OptionsFacetCopyWith<$Res> {
  _$OptionsFacetCopyWithImpl(this._self, this._then);

  final OptionsFacet _self;
  final $Res Function(OptionsFacet) _then;

/// Create a copy of Facet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? display = null,Object? options = null,}) {
  return _then(OptionsFacet(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,display: null == display ? _self.display : display // ignore: cast_nullable_to_non_nullable
as FacetDisplay,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<FacetOption>,
  ));
}


}

/// @nodoc


class ToggleFacet implements Facet {
  const ToggleFacet({required this.id, required this.title, required this.count});
  

@override final  String id;
@override final  String title;
 final  int count;

/// Create a copy of Facet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleFacetCopyWith<ToggleFacet> get copyWith => _$ToggleFacetCopyWithImpl<ToggleFacet>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleFacet&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.count, count) || other.count == count));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,count);

@override
String toString() {
  return 'Facet.toggle(id: $id, title: $title, count: $count)';
}


}

/// @nodoc
abstract mixin class $ToggleFacetCopyWith<$Res> implements $FacetCopyWith<$Res> {
  factory $ToggleFacetCopyWith(ToggleFacet value, $Res Function(ToggleFacet) _then) = _$ToggleFacetCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, int count
});




}
/// @nodoc
class _$ToggleFacetCopyWithImpl<$Res>
    implements $ToggleFacetCopyWith<$Res> {
  _$ToggleFacetCopyWithImpl(this._self, this._then);

  final ToggleFacet _self;
  final $Res Function(ToggleFacet) _then;

/// Create a copy of Facet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? count = null,}) {
  return _then(ToggleFacet(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$FacetOption {

 String get value; String get label;/// Products left if this value is added to the current filters.
 int get count;/// Swatch colour as `0xAARRGGBB`, for [FacetDisplay.swatches].
 int? get colorArgb;
/// Create a copy of FacetOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FacetOptionCopyWith<FacetOption> get copyWith => _$FacetOptionCopyWithImpl<FacetOption>(this as FacetOption, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FacetOption&&(identical(other.value, value) || other.value == value)&&(identical(other.label, label) || other.label == label)&&(identical(other.count, count) || other.count == count)&&(identical(other.colorArgb, colorArgb) || other.colorArgb == colorArgb));
}


@override
int get hashCode => Object.hash(runtimeType,value,label,count,colorArgb);

@override
String toString() {
  return 'FacetOption(value: $value, label: $label, count: $count, colorArgb: $colorArgb)';
}


}

/// @nodoc
abstract mixin class $FacetOptionCopyWith<$Res>  {
  factory $FacetOptionCopyWith(FacetOption value, $Res Function(FacetOption) _then) = _$FacetOptionCopyWithImpl;
@useResult
$Res call({
 String value, String label, int count, int? colorArgb
});




}
/// @nodoc
class _$FacetOptionCopyWithImpl<$Res>
    implements $FacetOptionCopyWith<$Res> {
  _$FacetOptionCopyWithImpl(this._self, this._then);

  final FacetOption _self;
  final $Res Function(FacetOption) _then;

/// Create a copy of FacetOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,Object? label = null,Object? count = null,Object? colorArgb = freezed,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,colorArgb: freezed == colorArgb ? _self.colorArgb : colorArgb // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [FacetOption].
extension FacetOptionPatterns on FacetOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FacetOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FacetOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FacetOption value)  $default,){
final _that = this;
switch (_that) {
case _FacetOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FacetOption value)?  $default,){
final _that = this;
switch (_that) {
case _FacetOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String value,  String label,  int count,  int? colorArgb)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FacetOption() when $default != null:
return $default(_that.value,_that.label,_that.count,_that.colorArgb);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String value,  String label,  int count,  int? colorArgb)  $default,) {final _that = this;
switch (_that) {
case _FacetOption():
return $default(_that.value,_that.label,_that.count,_that.colorArgb);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String value,  String label,  int count,  int? colorArgb)?  $default,) {final _that = this;
switch (_that) {
case _FacetOption() when $default != null:
return $default(_that.value,_that.label,_that.count,_that.colorArgb);case _:
  return null;

}
}

}

/// @nodoc


class _FacetOption implements FacetOption {
  const _FacetOption({required this.value, required this.label, required this.count, this.colorArgb});
  

@override final  String value;
@override final  String label;
/// Products left if this value is added to the current filters.
@override final  int count;
/// Swatch colour as `0xAARRGGBB`, for [FacetDisplay.swatches].
@override final  int? colorArgb;

/// Create a copy of FacetOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FacetOptionCopyWith<_FacetOption> get copyWith => __$FacetOptionCopyWithImpl<_FacetOption>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FacetOption&&(identical(other.value, value) || other.value == value)&&(identical(other.label, label) || other.label == label)&&(identical(other.count, count) || other.count == count)&&(identical(other.colorArgb, colorArgb) || other.colorArgb == colorArgb));
}


@override
int get hashCode => Object.hash(runtimeType,value,label,count,colorArgb);

@override
String toString() {
  return 'FacetOption(value: $value, label: $label, count: $count, colorArgb: $colorArgb)';
}


}

/// @nodoc
abstract mixin class _$FacetOptionCopyWith<$Res> implements $FacetOptionCopyWith<$Res> {
  factory _$FacetOptionCopyWith(_FacetOption value, $Res Function(_FacetOption) _then) = __$FacetOptionCopyWithImpl;
@override @useResult
$Res call({
 String value, String label, int count, int? colorArgb
});




}
/// @nodoc
class __$FacetOptionCopyWithImpl<$Res>
    implements _$FacetOptionCopyWith<$Res> {
  __$FacetOptionCopyWithImpl(this._self, this._then);

  final _FacetOption _self;
  final $Res Function(_FacetOption) _then;

/// Create a copy of FacetOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? label = null,Object? count = null,Object? colorArgb = freezed,}) {
  return _then(_FacetOption(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,colorArgb: freezed == colorArgb ? _self.colorArgb : colorArgb // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$FacetsResult {

 List<Facet> get facets; int get total;
/// Create a copy of FacetsResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FacetsResultCopyWith<FacetsResult> get copyWith => _$FacetsResultCopyWithImpl<FacetsResult>(this as FacetsResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FacetsResult&&const DeepCollectionEquality().equals(other.facets, facets)&&(identical(other.total, total) || other.total == total));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(facets),total);

@override
String toString() {
  return 'FacetsResult(facets: $facets, total: $total)';
}


}

/// @nodoc
abstract mixin class $FacetsResultCopyWith<$Res>  {
  factory $FacetsResultCopyWith(FacetsResult value, $Res Function(FacetsResult) _then) = _$FacetsResultCopyWithImpl;
@useResult
$Res call({
 List<Facet> facets, int total
});




}
/// @nodoc
class _$FacetsResultCopyWithImpl<$Res>
    implements $FacetsResultCopyWith<$Res> {
  _$FacetsResultCopyWithImpl(this._self, this._then);

  final FacetsResult _self;
  final $Res Function(FacetsResult) _then;

/// Create a copy of FacetsResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? facets = null,Object? total = null,}) {
  return _then(_self.copyWith(
facets: null == facets ? _self.facets : facets // ignore: cast_nullable_to_non_nullable
as List<Facet>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [FacetsResult].
extension FacetsResultPatterns on FacetsResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FacetsResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FacetsResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FacetsResult value)  $default,){
final _that = this;
switch (_that) {
case _FacetsResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FacetsResult value)?  $default,){
final _that = this;
switch (_that) {
case _FacetsResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Facet> facets,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FacetsResult() when $default != null:
return $default(_that.facets,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Facet> facets,  int total)  $default,) {final _that = this;
switch (_that) {
case _FacetsResult():
return $default(_that.facets,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Facet> facets,  int total)?  $default,) {final _that = this;
switch (_that) {
case _FacetsResult() when $default != null:
return $default(_that.facets,_that.total);case _:
  return null;

}
}

}

/// @nodoc


class _FacetsResult implements FacetsResult {
  const _FacetsResult({required final  List<Facet> facets, required this.total}): _facets = facets;
  

 final  List<Facet> _facets;
@override List<Facet> get facets {
  if (_facets is EqualUnmodifiableListView) return _facets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_facets);
}

@override final  int total;

/// Create a copy of FacetsResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FacetsResultCopyWith<_FacetsResult> get copyWith => __$FacetsResultCopyWithImpl<_FacetsResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FacetsResult&&const DeepCollectionEquality().equals(other._facets, _facets)&&(identical(other.total, total) || other.total == total));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_facets),total);

@override
String toString() {
  return 'FacetsResult(facets: $facets, total: $total)';
}


}

/// @nodoc
abstract mixin class _$FacetsResultCopyWith<$Res> implements $FacetsResultCopyWith<$Res> {
  factory _$FacetsResultCopyWith(_FacetsResult value, $Res Function(_FacetsResult) _then) = __$FacetsResultCopyWithImpl;
@override @useResult
$Res call({
 List<Facet> facets, int total
});




}
/// @nodoc
class __$FacetsResultCopyWithImpl<$Res>
    implements _$FacetsResultCopyWith<$Res> {
  __$FacetsResultCopyWithImpl(this._self, this._then);

  final _FacetsResult _self;
  final $Res Function(_FacetsResult) _then;

/// Create a copy of FacetsResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? facets = null,Object? total = null,}) {
  return _then(_FacetsResult(
facets: null == facets ? _self._facets : facets // ignore: cast_nullable_to_non_nullable
as List<Facet>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
