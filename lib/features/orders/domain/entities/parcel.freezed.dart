// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parcel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ParcelSummary {

 String get number; Status get status; ParcelStage get stage; int get itemCount; List<String> get previews; DateTime? get etaFrom; DateTime? get etaTo;
/// Create a copy of ParcelSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParcelSummaryCopyWith<ParcelSummary> get copyWith => _$ParcelSummaryCopyWithImpl<ParcelSummary>(this as ParcelSummary, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParcelSummary&&(identical(other.number, number) || other.number == number)&&(identical(other.status, status) || other.status == status)&&(identical(other.stage, stage) || other.stage == stage)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount)&&const DeepCollectionEquality().equals(other.previews, previews)&&(identical(other.etaFrom, etaFrom) || other.etaFrom == etaFrom)&&(identical(other.etaTo, etaTo) || other.etaTo == etaTo));
}


@override
int get hashCode => Object.hash(runtimeType,number,status,stage,itemCount,const DeepCollectionEquality().hash(previews),etaFrom,etaTo);

@override
String toString() {
  return 'ParcelSummary(number: $number, status: $status, stage: $stage, itemCount: $itemCount, previews: $previews, etaFrom: $etaFrom, etaTo: $etaTo)';
}


}

/// @nodoc
abstract mixin class $ParcelSummaryCopyWith<$Res>  {
  factory $ParcelSummaryCopyWith(ParcelSummary value, $Res Function(ParcelSummary) _then) = _$ParcelSummaryCopyWithImpl;
@useResult
$Res call({
 String number, Status status, ParcelStage stage, int itemCount, List<String> previews, DateTime? etaFrom, DateTime? etaTo
});


$StatusCopyWith<$Res> get status;

}
/// @nodoc
class _$ParcelSummaryCopyWithImpl<$Res>
    implements $ParcelSummaryCopyWith<$Res> {
  _$ParcelSummaryCopyWithImpl(this._self, this._then);

  final ParcelSummary _self;
  final $Res Function(ParcelSummary) _then;

/// Create a copy of ParcelSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? status = null,Object? stage = null,Object? itemCount = null,Object? previews = null,Object? etaFrom = freezed,Object? etaTo = freezed,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,stage: null == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as ParcelStage,itemCount: null == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int,previews: null == previews ? _self.previews : previews // ignore: cast_nullable_to_non_nullable
as List<String>,etaFrom: freezed == etaFrom ? _self.etaFrom : etaFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,etaTo: freezed == etaTo ? _self.etaTo : etaTo // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of ParcelSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<$Res> get status {
  
  return $StatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [ParcelSummary].
extension ParcelSummaryPatterns on ParcelSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParcelSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParcelSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParcelSummary value)  $default,){
final _that = this;
switch (_that) {
case _ParcelSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParcelSummary value)?  $default,){
final _that = this;
switch (_that) {
case _ParcelSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String number,  Status status,  ParcelStage stage,  int itemCount,  List<String> previews,  DateTime? etaFrom,  DateTime? etaTo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParcelSummary() when $default != null:
return $default(_that.number,_that.status,_that.stage,_that.itemCount,_that.previews,_that.etaFrom,_that.etaTo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String number,  Status status,  ParcelStage stage,  int itemCount,  List<String> previews,  DateTime? etaFrom,  DateTime? etaTo)  $default,) {final _that = this;
switch (_that) {
case _ParcelSummary():
return $default(_that.number,_that.status,_that.stage,_that.itemCount,_that.previews,_that.etaFrom,_that.etaTo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String number,  Status status,  ParcelStage stage,  int itemCount,  List<String> previews,  DateTime? etaFrom,  DateTime? etaTo)?  $default,) {final _that = this;
switch (_that) {
case _ParcelSummary() when $default != null:
return $default(_that.number,_that.status,_that.stage,_that.itemCount,_that.previews,_that.etaFrom,_that.etaTo);case _:
  return null;

}
}

}

/// @nodoc


class _ParcelSummary implements ParcelSummary {
  const _ParcelSummary({required this.number, required this.status, required this.stage, required this.itemCount, required final  List<String> previews, this.etaFrom, this.etaTo}): _previews = previews;
  

@override final  String number;
@override final  Status status;
@override final  ParcelStage stage;
@override final  int itemCount;
 final  List<String> _previews;
@override List<String> get previews {
  if (_previews is EqualUnmodifiableListView) return _previews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_previews);
}

@override final  DateTime? etaFrom;
@override final  DateTime? etaTo;

/// Create a copy of ParcelSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParcelSummaryCopyWith<_ParcelSummary> get copyWith => __$ParcelSummaryCopyWithImpl<_ParcelSummary>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParcelSummary&&(identical(other.number, number) || other.number == number)&&(identical(other.status, status) || other.status == status)&&(identical(other.stage, stage) || other.stage == stage)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount)&&const DeepCollectionEquality().equals(other._previews, _previews)&&(identical(other.etaFrom, etaFrom) || other.etaFrom == etaFrom)&&(identical(other.etaTo, etaTo) || other.etaTo == etaTo));
}


@override
int get hashCode => Object.hash(runtimeType,number,status,stage,itemCount,const DeepCollectionEquality().hash(_previews),etaFrom,etaTo);

@override
String toString() {
  return 'ParcelSummary(number: $number, status: $status, stage: $stage, itemCount: $itemCount, previews: $previews, etaFrom: $etaFrom, etaTo: $etaTo)';
}


}

/// @nodoc
abstract mixin class _$ParcelSummaryCopyWith<$Res> implements $ParcelSummaryCopyWith<$Res> {
  factory _$ParcelSummaryCopyWith(_ParcelSummary value, $Res Function(_ParcelSummary) _then) = __$ParcelSummaryCopyWithImpl;
@override @useResult
$Res call({
 String number, Status status, ParcelStage stage, int itemCount, List<String> previews, DateTime? etaFrom, DateTime? etaTo
});


@override $StatusCopyWith<$Res> get status;

}
/// @nodoc
class __$ParcelSummaryCopyWithImpl<$Res>
    implements _$ParcelSummaryCopyWith<$Res> {
  __$ParcelSummaryCopyWithImpl(this._self, this._then);

  final _ParcelSummary _self;
  final $Res Function(_ParcelSummary) _then;

/// Create a copy of ParcelSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? status = null,Object? stage = null,Object? itemCount = null,Object? previews = null,Object? etaFrom = freezed,Object? etaTo = freezed,}) {
  return _then(_ParcelSummary(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,stage: null == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as ParcelStage,itemCount: null == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int,previews: null == previews ? _self._previews : previews // ignore: cast_nullable_to_non_nullable
as List<String>,etaFrom: freezed == etaFrom ? _self.etaFrom : etaFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,etaTo: freezed == etaTo ? _self.etaTo : etaTo // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of ParcelSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<$Res> get status {
  
  return $StatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

/// @nodoc
mixin _$ParcelDetails {

 String get number; Status get status; ParcelStage get stage;/// When each passed stage was reached.
 Map<ParcelStage, DateTime> get stageDates; String get deliveryTypeName; List<ParcelItem> get items; List<StatusEvent> get history; DateTime? get etaFrom; DateTime? get etaTo;/// Known after the warehouse weighs it.
 int? get weightGrams;/// «Отправить сейчас» while forming, without waiting for other items.
 bool get canSendNow; DateTime? get freeStorageUntil; Surcharge? get surcharge; PickupInfo? get pickup; CourierInfo? get courier;/// Last day to file a claim after handover.
 DateTime? get claimUntil;
/// Create a copy of ParcelDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParcelDetailsCopyWith<ParcelDetails> get copyWith => _$ParcelDetailsCopyWithImpl<ParcelDetails>(this as ParcelDetails, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParcelDetails&&(identical(other.number, number) || other.number == number)&&(identical(other.status, status) || other.status == status)&&(identical(other.stage, stage) || other.stage == stage)&&const DeepCollectionEquality().equals(other.stageDates, stageDates)&&(identical(other.deliveryTypeName, deliveryTypeName) || other.deliveryTypeName == deliveryTypeName)&&const DeepCollectionEquality().equals(other.items, items)&&const DeepCollectionEquality().equals(other.history, history)&&(identical(other.etaFrom, etaFrom) || other.etaFrom == etaFrom)&&(identical(other.etaTo, etaTo) || other.etaTo == etaTo)&&(identical(other.weightGrams, weightGrams) || other.weightGrams == weightGrams)&&(identical(other.canSendNow, canSendNow) || other.canSendNow == canSendNow)&&(identical(other.freeStorageUntil, freeStorageUntil) || other.freeStorageUntil == freeStorageUntil)&&(identical(other.surcharge, surcharge) || other.surcharge == surcharge)&&(identical(other.pickup, pickup) || other.pickup == pickup)&&(identical(other.courier, courier) || other.courier == courier)&&(identical(other.claimUntil, claimUntil) || other.claimUntil == claimUntil));
}


@override
int get hashCode => Object.hash(runtimeType,number,status,stage,const DeepCollectionEquality().hash(stageDates),deliveryTypeName,const DeepCollectionEquality().hash(items),const DeepCollectionEquality().hash(history),etaFrom,etaTo,weightGrams,canSendNow,freeStorageUntil,surcharge,pickup,courier,claimUntil);

@override
String toString() {
  return 'ParcelDetails(number: $number, status: $status, stage: $stage, stageDates: $stageDates, deliveryTypeName: $deliveryTypeName, items: $items, history: $history, etaFrom: $etaFrom, etaTo: $etaTo, weightGrams: $weightGrams, canSendNow: $canSendNow, freeStorageUntil: $freeStorageUntil, surcharge: $surcharge, pickup: $pickup, courier: $courier, claimUntil: $claimUntil)';
}


}

/// @nodoc
abstract mixin class $ParcelDetailsCopyWith<$Res>  {
  factory $ParcelDetailsCopyWith(ParcelDetails value, $Res Function(ParcelDetails) _then) = _$ParcelDetailsCopyWithImpl;
@useResult
$Res call({
 String number, Status status, ParcelStage stage, Map<ParcelStage, DateTime> stageDates, String deliveryTypeName, List<ParcelItem> items, List<StatusEvent> history, DateTime? etaFrom, DateTime? etaTo, int? weightGrams, bool canSendNow, DateTime? freeStorageUntil, Surcharge? surcharge, PickupInfo? pickup, CourierInfo? courier, DateTime? claimUntil
});


$StatusCopyWith<$Res> get status;$SurchargeCopyWith<$Res>? get surcharge;$PickupInfoCopyWith<$Res>? get pickup;$CourierInfoCopyWith<$Res>? get courier;

}
/// @nodoc
class _$ParcelDetailsCopyWithImpl<$Res>
    implements $ParcelDetailsCopyWith<$Res> {
  _$ParcelDetailsCopyWithImpl(this._self, this._then);

  final ParcelDetails _self;
  final $Res Function(ParcelDetails) _then;

/// Create a copy of ParcelDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? status = null,Object? stage = null,Object? stageDates = null,Object? deliveryTypeName = null,Object? items = null,Object? history = null,Object? etaFrom = freezed,Object? etaTo = freezed,Object? weightGrams = freezed,Object? canSendNow = null,Object? freeStorageUntil = freezed,Object? surcharge = freezed,Object? pickup = freezed,Object? courier = freezed,Object? claimUntil = freezed,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,stage: null == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as ParcelStage,stageDates: null == stageDates ? _self.stageDates : stageDates // ignore: cast_nullable_to_non_nullable
as Map<ParcelStage, DateTime>,deliveryTypeName: null == deliveryTypeName ? _self.deliveryTypeName : deliveryTypeName // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ParcelItem>,history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<StatusEvent>,etaFrom: freezed == etaFrom ? _self.etaFrom : etaFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,etaTo: freezed == etaTo ? _self.etaTo : etaTo // ignore: cast_nullable_to_non_nullable
as DateTime?,weightGrams: freezed == weightGrams ? _self.weightGrams : weightGrams // ignore: cast_nullable_to_non_nullable
as int?,canSendNow: null == canSendNow ? _self.canSendNow : canSendNow // ignore: cast_nullable_to_non_nullable
as bool,freeStorageUntil: freezed == freeStorageUntil ? _self.freeStorageUntil : freeStorageUntil // ignore: cast_nullable_to_non_nullable
as DateTime?,surcharge: freezed == surcharge ? _self.surcharge : surcharge // ignore: cast_nullable_to_non_nullable
as Surcharge?,pickup: freezed == pickup ? _self.pickup : pickup // ignore: cast_nullable_to_non_nullable
as PickupInfo?,courier: freezed == courier ? _self.courier : courier // ignore: cast_nullable_to_non_nullable
as CourierInfo?,claimUntil: freezed == claimUntil ? _self.claimUntil : claimUntil // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of ParcelDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<$Res> get status {
  
  return $StatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of ParcelDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SurchargeCopyWith<$Res>? get surcharge {
    if (_self.surcharge == null) {
    return null;
  }

  return $SurchargeCopyWith<$Res>(_self.surcharge!, (value) {
    return _then(_self.copyWith(surcharge: value));
  });
}/// Create a copy of ParcelDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PickupInfoCopyWith<$Res>? get pickup {
    if (_self.pickup == null) {
    return null;
  }

  return $PickupInfoCopyWith<$Res>(_self.pickup!, (value) {
    return _then(_self.copyWith(pickup: value));
  });
}/// Create a copy of ParcelDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CourierInfoCopyWith<$Res>? get courier {
    if (_self.courier == null) {
    return null;
  }

  return $CourierInfoCopyWith<$Res>(_self.courier!, (value) {
    return _then(_self.copyWith(courier: value));
  });
}
}


/// Adds pattern-matching-related methods to [ParcelDetails].
extension ParcelDetailsPatterns on ParcelDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParcelDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParcelDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParcelDetails value)  $default,){
final _that = this;
switch (_that) {
case _ParcelDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParcelDetails value)?  $default,){
final _that = this;
switch (_that) {
case _ParcelDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String number,  Status status,  ParcelStage stage,  Map<ParcelStage, DateTime> stageDates,  String deliveryTypeName,  List<ParcelItem> items,  List<StatusEvent> history,  DateTime? etaFrom,  DateTime? etaTo,  int? weightGrams,  bool canSendNow,  DateTime? freeStorageUntil,  Surcharge? surcharge,  PickupInfo? pickup,  CourierInfo? courier,  DateTime? claimUntil)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParcelDetails() when $default != null:
return $default(_that.number,_that.status,_that.stage,_that.stageDates,_that.deliveryTypeName,_that.items,_that.history,_that.etaFrom,_that.etaTo,_that.weightGrams,_that.canSendNow,_that.freeStorageUntil,_that.surcharge,_that.pickup,_that.courier,_that.claimUntil);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String number,  Status status,  ParcelStage stage,  Map<ParcelStage, DateTime> stageDates,  String deliveryTypeName,  List<ParcelItem> items,  List<StatusEvent> history,  DateTime? etaFrom,  DateTime? etaTo,  int? weightGrams,  bool canSendNow,  DateTime? freeStorageUntil,  Surcharge? surcharge,  PickupInfo? pickup,  CourierInfo? courier,  DateTime? claimUntil)  $default,) {final _that = this;
switch (_that) {
case _ParcelDetails():
return $default(_that.number,_that.status,_that.stage,_that.stageDates,_that.deliveryTypeName,_that.items,_that.history,_that.etaFrom,_that.etaTo,_that.weightGrams,_that.canSendNow,_that.freeStorageUntil,_that.surcharge,_that.pickup,_that.courier,_that.claimUntil);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String number,  Status status,  ParcelStage stage,  Map<ParcelStage, DateTime> stageDates,  String deliveryTypeName,  List<ParcelItem> items,  List<StatusEvent> history,  DateTime? etaFrom,  DateTime? etaTo,  int? weightGrams,  bool canSendNow,  DateTime? freeStorageUntil,  Surcharge? surcharge,  PickupInfo? pickup,  CourierInfo? courier,  DateTime? claimUntil)?  $default,) {final _that = this;
switch (_that) {
case _ParcelDetails() when $default != null:
return $default(_that.number,_that.status,_that.stage,_that.stageDates,_that.deliveryTypeName,_that.items,_that.history,_that.etaFrom,_that.etaTo,_that.weightGrams,_that.canSendNow,_that.freeStorageUntil,_that.surcharge,_that.pickup,_that.courier,_that.claimUntil);case _:
  return null;

}
}

}

/// @nodoc


class _ParcelDetails implements ParcelDetails {
  const _ParcelDetails({required this.number, required this.status, required this.stage, required final  Map<ParcelStage, DateTime> stageDates, required this.deliveryTypeName, required final  List<ParcelItem> items, required final  List<StatusEvent> history, this.etaFrom, this.etaTo, this.weightGrams, this.canSendNow = false, this.freeStorageUntil, this.surcharge, this.pickup, this.courier, this.claimUntil}): _stageDates = stageDates,_items = items,_history = history;
  

@override final  String number;
@override final  Status status;
@override final  ParcelStage stage;
/// When each passed stage was reached.
 final  Map<ParcelStage, DateTime> _stageDates;
/// When each passed stage was reached.
@override Map<ParcelStage, DateTime> get stageDates {
  if (_stageDates is EqualUnmodifiableMapView) return _stageDates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_stageDates);
}

@override final  String deliveryTypeName;
 final  List<ParcelItem> _items;
@override List<ParcelItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  List<StatusEvent> _history;
@override List<StatusEvent> get history {
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_history);
}

@override final  DateTime? etaFrom;
@override final  DateTime? etaTo;
/// Known after the warehouse weighs it.
@override final  int? weightGrams;
/// «Отправить сейчас» while forming, without waiting for other items.
@override@JsonKey() final  bool canSendNow;
@override final  DateTime? freeStorageUntil;
@override final  Surcharge? surcharge;
@override final  PickupInfo? pickup;
@override final  CourierInfo? courier;
/// Last day to file a claim after handover.
@override final  DateTime? claimUntil;

/// Create a copy of ParcelDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParcelDetailsCopyWith<_ParcelDetails> get copyWith => __$ParcelDetailsCopyWithImpl<_ParcelDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParcelDetails&&(identical(other.number, number) || other.number == number)&&(identical(other.status, status) || other.status == status)&&(identical(other.stage, stage) || other.stage == stage)&&const DeepCollectionEquality().equals(other._stageDates, _stageDates)&&(identical(other.deliveryTypeName, deliveryTypeName) || other.deliveryTypeName == deliveryTypeName)&&const DeepCollectionEquality().equals(other._items, _items)&&const DeepCollectionEquality().equals(other._history, _history)&&(identical(other.etaFrom, etaFrom) || other.etaFrom == etaFrom)&&(identical(other.etaTo, etaTo) || other.etaTo == etaTo)&&(identical(other.weightGrams, weightGrams) || other.weightGrams == weightGrams)&&(identical(other.canSendNow, canSendNow) || other.canSendNow == canSendNow)&&(identical(other.freeStorageUntil, freeStorageUntil) || other.freeStorageUntil == freeStorageUntil)&&(identical(other.surcharge, surcharge) || other.surcharge == surcharge)&&(identical(other.pickup, pickup) || other.pickup == pickup)&&(identical(other.courier, courier) || other.courier == courier)&&(identical(other.claimUntil, claimUntil) || other.claimUntil == claimUntil));
}


@override
int get hashCode => Object.hash(runtimeType,number,status,stage,const DeepCollectionEquality().hash(_stageDates),deliveryTypeName,const DeepCollectionEquality().hash(_items),const DeepCollectionEquality().hash(_history),etaFrom,etaTo,weightGrams,canSendNow,freeStorageUntil,surcharge,pickup,courier,claimUntil);

@override
String toString() {
  return 'ParcelDetails(number: $number, status: $status, stage: $stage, stageDates: $stageDates, deliveryTypeName: $deliveryTypeName, items: $items, history: $history, etaFrom: $etaFrom, etaTo: $etaTo, weightGrams: $weightGrams, canSendNow: $canSendNow, freeStorageUntil: $freeStorageUntil, surcharge: $surcharge, pickup: $pickup, courier: $courier, claimUntil: $claimUntil)';
}


}

/// @nodoc
abstract mixin class _$ParcelDetailsCopyWith<$Res> implements $ParcelDetailsCopyWith<$Res> {
  factory _$ParcelDetailsCopyWith(_ParcelDetails value, $Res Function(_ParcelDetails) _then) = __$ParcelDetailsCopyWithImpl;
@override @useResult
$Res call({
 String number, Status status, ParcelStage stage, Map<ParcelStage, DateTime> stageDates, String deliveryTypeName, List<ParcelItem> items, List<StatusEvent> history, DateTime? etaFrom, DateTime? etaTo, int? weightGrams, bool canSendNow, DateTime? freeStorageUntil, Surcharge? surcharge, PickupInfo? pickup, CourierInfo? courier, DateTime? claimUntil
});


@override $StatusCopyWith<$Res> get status;@override $SurchargeCopyWith<$Res>? get surcharge;@override $PickupInfoCopyWith<$Res>? get pickup;@override $CourierInfoCopyWith<$Res>? get courier;

}
/// @nodoc
class __$ParcelDetailsCopyWithImpl<$Res>
    implements _$ParcelDetailsCopyWith<$Res> {
  __$ParcelDetailsCopyWithImpl(this._self, this._then);

  final _ParcelDetails _self;
  final $Res Function(_ParcelDetails) _then;

/// Create a copy of ParcelDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? status = null,Object? stage = null,Object? stageDates = null,Object? deliveryTypeName = null,Object? items = null,Object? history = null,Object? etaFrom = freezed,Object? etaTo = freezed,Object? weightGrams = freezed,Object? canSendNow = null,Object? freeStorageUntil = freezed,Object? surcharge = freezed,Object? pickup = freezed,Object? courier = freezed,Object? claimUntil = freezed,}) {
  return _then(_ParcelDetails(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,stage: null == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as ParcelStage,stageDates: null == stageDates ? _self._stageDates : stageDates // ignore: cast_nullable_to_non_nullable
as Map<ParcelStage, DateTime>,deliveryTypeName: null == deliveryTypeName ? _self.deliveryTypeName : deliveryTypeName // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ParcelItem>,history: null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<StatusEvent>,etaFrom: freezed == etaFrom ? _self.etaFrom : etaFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,etaTo: freezed == etaTo ? _self.etaTo : etaTo // ignore: cast_nullable_to_non_nullable
as DateTime?,weightGrams: freezed == weightGrams ? _self.weightGrams : weightGrams // ignore: cast_nullable_to_non_nullable
as int?,canSendNow: null == canSendNow ? _self.canSendNow : canSendNow // ignore: cast_nullable_to_non_nullable
as bool,freeStorageUntil: freezed == freeStorageUntil ? _self.freeStorageUntil : freeStorageUntil // ignore: cast_nullable_to_non_nullable
as DateTime?,surcharge: freezed == surcharge ? _self.surcharge : surcharge // ignore: cast_nullable_to_non_nullable
as Surcharge?,pickup: freezed == pickup ? _self.pickup : pickup // ignore: cast_nullable_to_non_nullable
as PickupInfo?,courier: freezed == courier ? _self.courier : courier // ignore: cast_nullable_to_non_nullable
as CourierInfo?,claimUntil: freezed == claimUntil ? _self.claimUntil : claimUntil // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of ParcelDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<$Res> get status {
  
  return $StatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of ParcelDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SurchargeCopyWith<$Res>? get surcharge {
    if (_self.surcharge == null) {
    return null;
  }

  return $SurchargeCopyWith<$Res>(_self.surcharge!, (value) {
    return _then(_self.copyWith(surcharge: value));
  });
}/// Create a copy of ParcelDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PickupInfoCopyWith<$Res>? get pickup {
    if (_self.pickup == null) {
    return null;
  }

  return $PickupInfoCopyWith<$Res>(_self.pickup!, (value) {
    return _then(_self.copyWith(pickup: value));
  });
}/// Create a copy of ParcelDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CourierInfoCopyWith<$Res>? get courier {
    if (_self.courier == null) {
    return null;
  }

  return $CourierInfoCopyWith<$Res>(_self.courier!, (value) {
    return _then(_self.copyWith(courier: value));
  });
}
}

/// @nodoc
mixin _$ParcelItem {

 String get orderNumber; String get title; String get imageUrl; int get quantity;
/// Create a copy of ParcelItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParcelItemCopyWith<ParcelItem> get copyWith => _$ParcelItemCopyWithImpl<ParcelItem>(this as ParcelItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParcelItem&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,orderNumber,title,imageUrl,quantity);

@override
String toString() {
  return 'ParcelItem(orderNumber: $orderNumber, title: $title, imageUrl: $imageUrl, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $ParcelItemCopyWith<$Res>  {
  factory $ParcelItemCopyWith(ParcelItem value, $Res Function(ParcelItem) _then) = _$ParcelItemCopyWithImpl;
@useResult
$Res call({
 String orderNumber, String title, String imageUrl, int quantity
});




}
/// @nodoc
class _$ParcelItemCopyWithImpl<$Res>
    implements $ParcelItemCopyWith<$Res> {
  _$ParcelItemCopyWithImpl(this._self, this._then);

  final ParcelItem _self;
  final $Res Function(ParcelItem) _then;

/// Create a copy of ParcelItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderNumber = null,Object? title = null,Object? imageUrl = null,Object? quantity = null,}) {
  return _then(_self.copyWith(
orderNumber: null == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ParcelItem].
extension ParcelItemPatterns on ParcelItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParcelItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParcelItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParcelItem value)  $default,){
final _that = this;
switch (_that) {
case _ParcelItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParcelItem value)?  $default,){
final _that = this;
switch (_that) {
case _ParcelItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String orderNumber,  String title,  String imageUrl,  int quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParcelItem() when $default != null:
return $default(_that.orderNumber,_that.title,_that.imageUrl,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String orderNumber,  String title,  String imageUrl,  int quantity)  $default,) {final _that = this;
switch (_that) {
case _ParcelItem():
return $default(_that.orderNumber,_that.title,_that.imageUrl,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String orderNumber,  String title,  String imageUrl,  int quantity)?  $default,) {final _that = this;
switch (_that) {
case _ParcelItem() when $default != null:
return $default(_that.orderNumber,_that.title,_that.imageUrl,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc


class _ParcelItem implements ParcelItem {
  const _ParcelItem({required this.orderNumber, required this.title, required this.imageUrl, required this.quantity});
  

@override final  String orderNumber;
@override final  String title;
@override final  String imageUrl;
@override final  int quantity;

/// Create a copy of ParcelItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParcelItemCopyWith<_ParcelItem> get copyWith => __$ParcelItemCopyWithImpl<_ParcelItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParcelItem&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,orderNumber,title,imageUrl,quantity);

@override
String toString() {
  return 'ParcelItem(orderNumber: $orderNumber, title: $title, imageUrl: $imageUrl, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$ParcelItemCopyWith<$Res> implements $ParcelItemCopyWith<$Res> {
  factory _$ParcelItemCopyWith(_ParcelItem value, $Res Function(_ParcelItem) _then) = __$ParcelItemCopyWithImpl;
@override @useResult
$Res call({
 String orderNumber, String title, String imageUrl, int quantity
});




}
/// @nodoc
class __$ParcelItemCopyWithImpl<$Res>
    implements _$ParcelItemCopyWith<$Res> {
  __$ParcelItemCopyWithImpl(this._self, this._then);

  final _ParcelItem _self;
  final $Res Function(_ParcelItem) _then;

/// Create a copy of ParcelItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderNumber = null,Object? title = null,Object? imageUrl = null,Object? quantity = null,}) {
  return _then(_ParcelItem(
orderNumber: null == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$Surcharge {

 int get weightGrams; int get ratePerKg; int get deliveryCost; int get paid;/// Negative = the difference goes back to the balance.
 int get amount;
/// Create a copy of Surcharge
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SurchargeCopyWith<Surcharge> get copyWith => _$SurchargeCopyWithImpl<Surcharge>(this as Surcharge, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Surcharge&&(identical(other.weightGrams, weightGrams) || other.weightGrams == weightGrams)&&(identical(other.ratePerKg, ratePerKg) || other.ratePerKg == ratePerKg)&&(identical(other.deliveryCost, deliveryCost) || other.deliveryCost == deliveryCost)&&(identical(other.paid, paid) || other.paid == paid)&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,weightGrams,ratePerKg,deliveryCost,paid,amount);

@override
String toString() {
  return 'Surcharge(weightGrams: $weightGrams, ratePerKg: $ratePerKg, deliveryCost: $deliveryCost, paid: $paid, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $SurchargeCopyWith<$Res>  {
  factory $SurchargeCopyWith(Surcharge value, $Res Function(Surcharge) _then) = _$SurchargeCopyWithImpl;
@useResult
$Res call({
 int weightGrams, int ratePerKg, int deliveryCost, int paid, int amount
});




}
/// @nodoc
class _$SurchargeCopyWithImpl<$Res>
    implements $SurchargeCopyWith<$Res> {
  _$SurchargeCopyWithImpl(this._self, this._then);

  final Surcharge _self;
  final $Res Function(Surcharge) _then;

/// Create a copy of Surcharge
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? weightGrams = null,Object? ratePerKg = null,Object? deliveryCost = null,Object? paid = null,Object? amount = null,}) {
  return _then(_self.copyWith(
weightGrams: null == weightGrams ? _self.weightGrams : weightGrams // ignore: cast_nullable_to_non_nullable
as int,ratePerKg: null == ratePerKg ? _self.ratePerKg : ratePerKg // ignore: cast_nullable_to_non_nullable
as int,deliveryCost: null == deliveryCost ? _self.deliveryCost : deliveryCost // ignore: cast_nullable_to_non_nullable
as int,paid: null == paid ? _self.paid : paid // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Surcharge].
extension SurchargePatterns on Surcharge {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Surcharge value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Surcharge() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Surcharge value)  $default,){
final _that = this;
switch (_that) {
case _Surcharge():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Surcharge value)?  $default,){
final _that = this;
switch (_that) {
case _Surcharge() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int weightGrams,  int ratePerKg,  int deliveryCost,  int paid,  int amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Surcharge() when $default != null:
return $default(_that.weightGrams,_that.ratePerKg,_that.deliveryCost,_that.paid,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int weightGrams,  int ratePerKg,  int deliveryCost,  int paid,  int amount)  $default,) {final _that = this;
switch (_that) {
case _Surcharge():
return $default(_that.weightGrams,_that.ratePerKg,_that.deliveryCost,_that.paid,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int weightGrams,  int ratePerKg,  int deliveryCost,  int paid,  int amount)?  $default,) {final _that = this;
switch (_that) {
case _Surcharge() when $default != null:
return $default(_that.weightGrams,_that.ratePerKg,_that.deliveryCost,_that.paid,_that.amount);case _:
  return null;

}
}

}

/// @nodoc


class _Surcharge implements Surcharge {
  const _Surcharge({required this.weightGrams, required this.ratePerKg, required this.deliveryCost, required this.paid, required this.amount});
  

@override final  int weightGrams;
@override final  int ratePerKg;
@override final  int deliveryCost;
@override final  int paid;
/// Negative = the difference goes back to the balance.
@override final  int amount;

/// Create a copy of Surcharge
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SurchargeCopyWith<_Surcharge> get copyWith => __$SurchargeCopyWithImpl<_Surcharge>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Surcharge&&(identical(other.weightGrams, weightGrams) || other.weightGrams == weightGrams)&&(identical(other.ratePerKg, ratePerKg) || other.ratePerKg == ratePerKg)&&(identical(other.deliveryCost, deliveryCost) || other.deliveryCost == deliveryCost)&&(identical(other.paid, paid) || other.paid == paid)&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,weightGrams,ratePerKg,deliveryCost,paid,amount);

@override
String toString() {
  return 'Surcharge(weightGrams: $weightGrams, ratePerKg: $ratePerKg, deliveryCost: $deliveryCost, paid: $paid, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$SurchargeCopyWith<$Res> implements $SurchargeCopyWith<$Res> {
  factory _$SurchargeCopyWith(_Surcharge value, $Res Function(_Surcharge) _then) = __$SurchargeCopyWithImpl;
@override @useResult
$Res call({
 int weightGrams, int ratePerKg, int deliveryCost, int paid, int amount
});




}
/// @nodoc
class __$SurchargeCopyWithImpl<$Res>
    implements _$SurchargeCopyWith<$Res> {
  __$SurchargeCopyWithImpl(this._self, this._then);

  final _Surcharge _self;
  final $Res Function(_Surcharge) _then;

/// Create a copy of Surcharge
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? weightGrams = null,Object? ratePerKg = null,Object? deliveryCost = null,Object? paid = null,Object? amount = null,}) {
  return _then(_Surcharge(
weightGrams: null == weightGrams ? _self.weightGrams : weightGrams // ignore: cast_nullable_to_non_nullable
as int,ratePerKg: null == ratePerKg ? _self.ratePerKg : ratePerKg // ignore: cast_nullable_to_non_nullable
as int,deliveryCost: null == deliveryCost ? _self.deliveryCost : deliveryCost // ignore: cast_nullable_to_non_nullable
as int,paid: null == paid ? _self.paid : paid // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$PickupInfo {

 String get code; String get pointName; String get address; String get hours; String get phone;/// Still to pay at handover.
 int get amountDue;
/// Create a copy of PickupInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PickupInfoCopyWith<PickupInfo> get copyWith => _$PickupInfoCopyWithImpl<PickupInfo>(this as PickupInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PickupInfo&&(identical(other.code, code) || other.code == code)&&(identical(other.pointName, pointName) || other.pointName == pointName)&&(identical(other.address, address) || other.address == address)&&(identical(other.hours, hours) || other.hours == hours)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.amountDue, amountDue) || other.amountDue == amountDue));
}


@override
int get hashCode => Object.hash(runtimeType,code,pointName,address,hours,phone,amountDue);

@override
String toString() {
  return 'PickupInfo(code: $code, pointName: $pointName, address: $address, hours: $hours, phone: $phone, amountDue: $amountDue)';
}


}

/// @nodoc
abstract mixin class $PickupInfoCopyWith<$Res>  {
  factory $PickupInfoCopyWith(PickupInfo value, $Res Function(PickupInfo) _then) = _$PickupInfoCopyWithImpl;
@useResult
$Res call({
 String code, String pointName, String address, String hours, String phone, int amountDue
});




}
/// @nodoc
class _$PickupInfoCopyWithImpl<$Res>
    implements $PickupInfoCopyWith<$Res> {
  _$PickupInfoCopyWithImpl(this._self, this._then);

  final PickupInfo _self;
  final $Res Function(PickupInfo) _then;

/// Create a copy of PickupInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? pointName = null,Object? address = null,Object? hours = null,Object? phone = null,Object? amountDue = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,pointName: null == pointName ? _self.pointName : pointName // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,hours: null == hours ? _self.hours : hours // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,amountDue: null == amountDue ? _self.amountDue : amountDue // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PickupInfo].
extension PickupInfoPatterns on PickupInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PickupInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PickupInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PickupInfo value)  $default,){
final _that = this;
switch (_that) {
case _PickupInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PickupInfo value)?  $default,){
final _that = this;
switch (_that) {
case _PickupInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String pointName,  String address,  String hours,  String phone,  int amountDue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PickupInfo() when $default != null:
return $default(_that.code,_that.pointName,_that.address,_that.hours,_that.phone,_that.amountDue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String pointName,  String address,  String hours,  String phone,  int amountDue)  $default,) {final _that = this;
switch (_that) {
case _PickupInfo():
return $default(_that.code,_that.pointName,_that.address,_that.hours,_that.phone,_that.amountDue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String pointName,  String address,  String hours,  String phone,  int amountDue)?  $default,) {final _that = this;
switch (_that) {
case _PickupInfo() when $default != null:
return $default(_that.code,_that.pointName,_that.address,_that.hours,_that.phone,_that.amountDue);case _:
  return null;

}
}

}

/// @nodoc


class _PickupInfo implements PickupInfo {
  const _PickupInfo({required this.code, required this.pointName, required this.address, required this.hours, required this.phone, this.amountDue = 0});
  

@override final  String code;
@override final  String pointName;
@override final  String address;
@override final  String hours;
@override final  String phone;
/// Still to pay at handover.
@override@JsonKey() final  int amountDue;

/// Create a copy of PickupInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PickupInfoCopyWith<_PickupInfo> get copyWith => __$PickupInfoCopyWithImpl<_PickupInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PickupInfo&&(identical(other.code, code) || other.code == code)&&(identical(other.pointName, pointName) || other.pointName == pointName)&&(identical(other.address, address) || other.address == address)&&(identical(other.hours, hours) || other.hours == hours)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.amountDue, amountDue) || other.amountDue == amountDue));
}


@override
int get hashCode => Object.hash(runtimeType,code,pointName,address,hours,phone,amountDue);

@override
String toString() {
  return 'PickupInfo(code: $code, pointName: $pointName, address: $address, hours: $hours, phone: $phone, amountDue: $amountDue)';
}


}

/// @nodoc
abstract mixin class _$PickupInfoCopyWith<$Res> implements $PickupInfoCopyWith<$Res> {
  factory _$PickupInfoCopyWith(_PickupInfo value, $Res Function(_PickupInfo) _then) = __$PickupInfoCopyWithImpl;
@override @useResult
$Res call({
 String code, String pointName, String address, String hours, String phone, int amountDue
});




}
/// @nodoc
class __$PickupInfoCopyWithImpl<$Res>
    implements _$PickupInfoCopyWith<$Res> {
  __$PickupInfoCopyWithImpl(this._self, this._then);

  final _PickupInfo _self;
  final $Res Function(_PickupInfo) _then;

/// Create a copy of PickupInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? pointName = null,Object? address = null,Object? hours = null,Object? phone = null,Object? amountDue = null,}) {
  return _then(_PickupInfo(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,pointName: null == pointName ? _self.pointName : pointName // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,hours: null == hours ? _self.hours : hours // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,amountDue: null == amountDue ? _self.amountDue : amountDue // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$CourierInfo {

 String get name; String get phone; int get amountDue;
/// Create a copy of CourierInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourierInfoCopyWith<CourierInfo> get copyWith => _$CourierInfoCopyWithImpl<CourierInfo>(this as CourierInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourierInfo&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.amountDue, amountDue) || other.amountDue == amountDue));
}


@override
int get hashCode => Object.hash(runtimeType,name,phone,amountDue);

@override
String toString() {
  return 'CourierInfo(name: $name, phone: $phone, amountDue: $amountDue)';
}


}

/// @nodoc
abstract mixin class $CourierInfoCopyWith<$Res>  {
  factory $CourierInfoCopyWith(CourierInfo value, $Res Function(CourierInfo) _then) = _$CourierInfoCopyWithImpl;
@useResult
$Res call({
 String name, String phone, int amountDue
});




}
/// @nodoc
class _$CourierInfoCopyWithImpl<$Res>
    implements $CourierInfoCopyWith<$Res> {
  _$CourierInfoCopyWithImpl(this._self, this._then);

  final CourierInfo _self;
  final $Res Function(CourierInfo) _then;

/// Create a copy of CourierInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? phone = null,Object? amountDue = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,amountDue: null == amountDue ? _self.amountDue : amountDue // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CourierInfo].
extension CourierInfoPatterns on CourierInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CourierInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CourierInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CourierInfo value)  $default,){
final _that = this;
switch (_that) {
case _CourierInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CourierInfo value)?  $default,){
final _that = this;
switch (_that) {
case _CourierInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String phone,  int amountDue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CourierInfo() when $default != null:
return $default(_that.name,_that.phone,_that.amountDue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String phone,  int amountDue)  $default,) {final _that = this;
switch (_that) {
case _CourierInfo():
return $default(_that.name,_that.phone,_that.amountDue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String phone,  int amountDue)?  $default,) {final _that = this;
switch (_that) {
case _CourierInfo() when $default != null:
return $default(_that.name,_that.phone,_that.amountDue);case _:
  return null;

}
}

}

/// @nodoc


class _CourierInfo implements CourierInfo {
  const _CourierInfo({required this.name, required this.phone, this.amountDue = 0});
  

@override final  String name;
@override final  String phone;
@override@JsonKey() final  int amountDue;

/// Create a copy of CourierInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourierInfoCopyWith<_CourierInfo> get copyWith => __$CourierInfoCopyWithImpl<_CourierInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourierInfo&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.amountDue, amountDue) || other.amountDue == amountDue));
}


@override
int get hashCode => Object.hash(runtimeType,name,phone,amountDue);

@override
String toString() {
  return 'CourierInfo(name: $name, phone: $phone, amountDue: $amountDue)';
}


}

/// @nodoc
abstract mixin class _$CourierInfoCopyWith<$Res> implements $CourierInfoCopyWith<$Res> {
  factory _$CourierInfoCopyWith(_CourierInfo value, $Res Function(_CourierInfo) _then) = __$CourierInfoCopyWithImpl;
@override @useResult
$Res call({
 String name, String phone, int amountDue
});




}
/// @nodoc
class __$CourierInfoCopyWithImpl<$Res>
    implements _$CourierInfoCopyWith<$Res> {
  __$CourierInfoCopyWithImpl(this._self, this._then);

  final _CourierInfo _self;
  final $Res Function(_CourierInfo) _then;

/// Create a copy of CourierInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? phone = null,Object? amountDue = null,}) {
  return _then(_CourierInfo(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,amountDue: null == amountDue ? _self.amountDue : amountDue // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
