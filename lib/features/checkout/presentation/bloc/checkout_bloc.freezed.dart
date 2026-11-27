// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CheckoutEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckoutEvent()';
}


}

/// @nodoc
class $CheckoutEventCopyWith<$Res>  {
$CheckoutEventCopyWith(CheckoutEvent _, $Res Function(CheckoutEvent) __);
}


/// Adds pattern-matching-related methods to [CheckoutEvent].
extension CheckoutEventPatterns on CheckoutEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CheckoutStarted value)?  started,TResult Function( CheckoutDraftChanged value)?  draftChanged,TResult Function( CheckoutRegionChanged value)?  regionChanged,TResult Function( CheckoutPreviewRetried value)?  previewRetried,TResult Function( CheckoutSubmitted value)?  submitted,TResult Function( CheckoutAddressesRequested value)?  addressesRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CheckoutStarted() when started != null:
return started(_that);case CheckoutDraftChanged() when draftChanged != null:
return draftChanged(_that);case CheckoutRegionChanged() when regionChanged != null:
return regionChanged(_that);case CheckoutPreviewRetried() when previewRetried != null:
return previewRetried(_that);case CheckoutSubmitted() when submitted != null:
return submitted(_that);case CheckoutAddressesRequested() when addressesRequested != null:
return addressesRequested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CheckoutStarted value)  started,required TResult Function( CheckoutDraftChanged value)  draftChanged,required TResult Function( CheckoutRegionChanged value)  regionChanged,required TResult Function( CheckoutPreviewRetried value)  previewRetried,required TResult Function( CheckoutSubmitted value)  submitted,required TResult Function( CheckoutAddressesRequested value)  addressesRequested,}){
final _that = this;
switch (_that) {
case CheckoutStarted():
return started(_that);case CheckoutDraftChanged():
return draftChanged(_that);case CheckoutRegionChanged():
return regionChanged(_that);case CheckoutPreviewRetried():
return previewRetried(_that);case CheckoutSubmitted():
return submitted(_that);case CheckoutAddressesRequested():
return addressesRequested(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CheckoutStarted value)?  started,TResult? Function( CheckoutDraftChanged value)?  draftChanged,TResult? Function( CheckoutRegionChanged value)?  regionChanged,TResult? Function( CheckoutPreviewRetried value)?  previewRetried,TResult? Function( CheckoutSubmitted value)?  submitted,TResult? Function( CheckoutAddressesRequested value)?  addressesRequested,}){
final _that = this;
switch (_that) {
case CheckoutStarted() when started != null:
return started(_that);case CheckoutDraftChanged() when draftChanged != null:
return draftChanged(_that);case CheckoutRegionChanged() when regionChanged != null:
return regionChanged(_that);case CheckoutPreviewRetried() when previewRetried != null:
return previewRetried(_that);case CheckoutSubmitted() when submitted != null:
return submitted(_that);case CheckoutAddressesRequested() when addressesRequested != null:
return addressesRequested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String languageCode,  String regionId,  List<CartItem> lines,  String? promoCode,  Recipient? profileRecipient)?  started,TResult Function( CheckoutDraft draft)?  draftChanged,TResult Function( String regionId)?  regionChanged,TResult Function()?  previewRetried,TResult Function()?  submitted,TResult Function( String? selectId)?  addressesRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CheckoutStarted() when started != null:
return started(_that.languageCode,_that.regionId,_that.lines,_that.promoCode,_that.profileRecipient);case CheckoutDraftChanged() when draftChanged != null:
return draftChanged(_that.draft);case CheckoutRegionChanged() when regionChanged != null:
return regionChanged(_that.regionId);case CheckoutPreviewRetried() when previewRetried != null:
return previewRetried();case CheckoutSubmitted() when submitted != null:
return submitted();case CheckoutAddressesRequested() when addressesRequested != null:
return addressesRequested(_that.selectId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String languageCode,  String regionId,  List<CartItem> lines,  String? promoCode,  Recipient? profileRecipient)  started,required TResult Function( CheckoutDraft draft)  draftChanged,required TResult Function( String regionId)  regionChanged,required TResult Function()  previewRetried,required TResult Function()  submitted,required TResult Function( String? selectId)  addressesRequested,}) {final _that = this;
switch (_that) {
case CheckoutStarted():
return started(_that.languageCode,_that.regionId,_that.lines,_that.promoCode,_that.profileRecipient);case CheckoutDraftChanged():
return draftChanged(_that.draft);case CheckoutRegionChanged():
return regionChanged(_that.regionId);case CheckoutPreviewRetried():
return previewRetried();case CheckoutSubmitted():
return submitted();case CheckoutAddressesRequested():
return addressesRequested(_that.selectId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String languageCode,  String regionId,  List<CartItem> lines,  String? promoCode,  Recipient? profileRecipient)?  started,TResult? Function( CheckoutDraft draft)?  draftChanged,TResult? Function( String regionId)?  regionChanged,TResult? Function()?  previewRetried,TResult? Function()?  submitted,TResult? Function( String? selectId)?  addressesRequested,}) {final _that = this;
switch (_that) {
case CheckoutStarted() when started != null:
return started(_that.languageCode,_that.regionId,_that.lines,_that.promoCode,_that.profileRecipient);case CheckoutDraftChanged() when draftChanged != null:
return draftChanged(_that.draft);case CheckoutRegionChanged() when regionChanged != null:
return regionChanged(_that.regionId);case CheckoutPreviewRetried() when previewRetried != null:
return previewRetried();case CheckoutSubmitted() when submitted != null:
return submitted();case CheckoutAddressesRequested() when addressesRequested != null:
return addressesRequested(_that.selectId);case _:
  return null;

}
}

}

/// @nodoc


class CheckoutStarted implements CheckoutEvent {
  const CheckoutStarted({required this.languageCode, required this.regionId, required final  List<CartItem> lines, this.promoCode, this.profileRecipient}): _lines = lines;
  

 final  String languageCode;
 final  String regionId;
 final  List<CartItem> _lines;
 List<CartItem> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

 final  String? promoCode;
/// The signed-in customer, used when nothing was saved on the device.
 final  Recipient? profileRecipient;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutStartedCopyWith<CheckoutStarted> get copyWith => _$CheckoutStartedCopyWithImpl<CheckoutStarted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutStarted&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.regionId, regionId) || other.regionId == regionId)&&const DeepCollectionEquality().equals(other._lines, _lines)&&(identical(other.promoCode, promoCode) || other.promoCode == promoCode)&&(identical(other.profileRecipient, profileRecipient) || other.profileRecipient == profileRecipient));
}


@override
int get hashCode => Object.hash(runtimeType,languageCode,regionId,const DeepCollectionEquality().hash(_lines),promoCode,profileRecipient);

@override
String toString() {
  return 'CheckoutEvent.started(languageCode: $languageCode, regionId: $regionId, lines: $lines, promoCode: $promoCode, profileRecipient: $profileRecipient)';
}


}

/// @nodoc
abstract mixin class $CheckoutStartedCopyWith<$Res> implements $CheckoutEventCopyWith<$Res> {
  factory $CheckoutStartedCopyWith(CheckoutStarted value, $Res Function(CheckoutStarted) _then) = _$CheckoutStartedCopyWithImpl;
@useResult
$Res call({
 String languageCode, String regionId, List<CartItem> lines, String? promoCode, Recipient? profileRecipient
});


$RecipientCopyWith<$Res>? get profileRecipient;

}
/// @nodoc
class _$CheckoutStartedCopyWithImpl<$Res>
    implements $CheckoutStartedCopyWith<$Res> {
  _$CheckoutStartedCopyWithImpl(this._self, this._then);

  final CheckoutStarted _self;
  final $Res Function(CheckoutStarted) _then;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? languageCode = null,Object? regionId = null,Object? lines = null,Object? promoCode = freezed,Object? profileRecipient = freezed,}) {
  return _then(CheckoutStarted(
languageCode: null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,regionId: null == regionId ? _self.regionId : regionId // ignore: cast_nullable_to_non_nullable
as String,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<CartItem>,promoCode: freezed == promoCode ? _self.promoCode : promoCode // ignore: cast_nullable_to_non_nullable
as String?,profileRecipient: freezed == profileRecipient ? _self.profileRecipient : profileRecipient // ignore: cast_nullable_to_non_nullable
as Recipient?,
  ));
}

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecipientCopyWith<$Res>? get profileRecipient {
    if (_self.profileRecipient == null) {
    return null;
  }

  return $RecipientCopyWith<$Res>(_self.profileRecipient!, (value) {
    return _then(_self.copyWith(profileRecipient: value));
  });
}
}

/// @nodoc


class CheckoutDraftChanged implements CheckoutEvent {
  const CheckoutDraftChanged(this.draft);
  

 final  CheckoutDraft draft;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutDraftChangedCopyWith<CheckoutDraftChanged> get copyWith => _$CheckoutDraftChangedCopyWithImpl<CheckoutDraftChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutDraftChanged&&(identical(other.draft, draft) || other.draft == draft));
}


@override
int get hashCode => Object.hash(runtimeType,draft);

@override
String toString() {
  return 'CheckoutEvent.draftChanged(draft: $draft)';
}


}

/// @nodoc
abstract mixin class $CheckoutDraftChangedCopyWith<$Res> implements $CheckoutEventCopyWith<$Res> {
  factory $CheckoutDraftChangedCopyWith(CheckoutDraftChanged value, $Res Function(CheckoutDraftChanged) _then) = _$CheckoutDraftChangedCopyWithImpl;
@useResult
$Res call({
 CheckoutDraft draft
});


$CheckoutDraftCopyWith<$Res> get draft;

}
/// @nodoc
class _$CheckoutDraftChangedCopyWithImpl<$Res>
    implements $CheckoutDraftChangedCopyWith<$Res> {
  _$CheckoutDraftChangedCopyWithImpl(this._self, this._then);

  final CheckoutDraftChanged _self;
  final $Res Function(CheckoutDraftChanged) _then;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? draft = null,}) {
  return _then(CheckoutDraftChanged(
null == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as CheckoutDraft,
  ));
}

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckoutDraftCopyWith<$Res> get draft {
  
  return $CheckoutDraftCopyWith<$Res>(_self.draft, (value) {
    return _then(_self.copyWith(draft: value));
  });
}
}

/// @nodoc


class CheckoutRegionChanged implements CheckoutEvent {
  const CheckoutRegionChanged(this.regionId);
  

 final  String regionId;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutRegionChangedCopyWith<CheckoutRegionChanged> get copyWith => _$CheckoutRegionChangedCopyWithImpl<CheckoutRegionChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutRegionChanged&&(identical(other.regionId, regionId) || other.regionId == regionId));
}


@override
int get hashCode => Object.hash(runtimeType,regionId);

@override
String toString() {
  return 'CheckoutEvent.regionChanged(regionId: $regionId)';
}


}

/// @nodoc
abstract mixin class $CheckoutRegionChangedCopyWith<$Res> implements $CheckoutEventCopyWith<$Res> {
  factory $CheckoutRegionChangedCopyWith(CheckoutRegionChanged value, $Res Function(CheckoutRegionChanged) _then) = _$CheckoutRegionChangedCopyWithImpl;
@useResult
$Res call({
 String regionId
});




}
/// @nodoc
class _$CheckoutRegionChangedCopyWithImpl<$Res>
    implements $CheckoutRegionChangedCopyWith<$Res> {
  _$CheckoutRegionChangedCopyWithImpl(this._self, this._then);

  final CheckoutRegionChanged _self;
  final $Res Function(CheckoutRegionChanged) _then;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? regionId = null,}) {
  return _then(CheckoutRegionChanged(
null == regionId ? _self.regionId : regionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CheckoutPreviewRetried implements CheckoutEvent {
  const CheckoutPreviewRetried();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutPreviewRetried);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckoutEvent.previewRetried()';
}


}




/// @nodoc


class CheckoutSubmitted implements CheckoutEvent {
  const CheckoutSubmitted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutSubmitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckoutEvent.submitted()';
}


}




/// @nodoc


class CheckoutAddressesRequested implements CheckoutEvent {
  const CheckoutAddressesRequested({this.selectId});
  

 final  String? selectId;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutAddressesRequestedCopyWith<CheckoutAddressesRequested> get copyWith => _$CheckoutAddressesRequestedCopyWithImpl<CheckoutAddressesRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutAddressesRequested&&(identical(other.selectId, selectId) || other.selectId == selectId));
}


@override
int get hashCode => Object.hash(runtimeType,selectId);

@override
String toString() {
  return 'CheckoutEvent.addressesRequested(selectId: $selectId)';
}


}

/// @nodoc
abstract mixin class $CheckoutAddressesRequestedCopyWith<$Res> implements $CheckoutEventCopyWith<$Res> {
  factory $CheckoutAddressesRequestedCopyWith(CheckoutAddressesRequested value, $Res Function(CheckoutAddressesRequested) _then) = _$CheckoutAddressesRequestedCopyWithImpl;
@useResult
$Res call({
 String? selectId
});




}
/// @nodoc
class _$CheckoutAddressesRequestedCopyWithImpl<$Res>
    implements $CheckoutAddressesRequestedCopyWith<$Res> {
  _$CheckoutAddressesRequestedCopyWithImpl(this._self, this._then);

  final CheckoutAddressesRequested _self;
  final $Res Function(CheckoutAddressesRequested) _then;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectId = freezed,}) {
  return _then(CheckoutAddressesRequested(
selectId: freezed == selectId ? _self.selectId : selectId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$CheckoutState {

 CheckoutDraft get draft; CheckoutPreview? get preview; bool get isPreviewLoading; Failure? get previewFailure; CheckoutStatus get status; Failure? get submitFailure;/// Set after the first «Оплатить», so errors show only once asked.
 bool get showProblems; PlacedOrder? get order;/// The account's addresses; empty until loaded or when there are none.
 List<SavedAddress> get savedAddresses;
/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutStateCopyWith<CheckoutState> get copyWith => _$CheckoutStateCopyWithImpl<CheckoutState>(this as CheckoutState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutState&&(identical(other.draft, draft) || other.draft == draft)&&(identical(other.preview, preview) || other.preview == preview)&&(identical(other.isPreviewLoading, isPreviewLoading) || other.isPreviewLoading == isPreviewLoading)&&(identical(other.previewFailure, previewFailure) || other.previewFailure == previewFailure)&&(identical(other.status, status) || other.status == status)&&(identical(other.submitFailure, submitFailure) || other.submitFailure == submitFailure)&&(identical(other.showProblems, showProblems) || other.showProblems == showProblems)&&(identical(other.order, order) || other.order == order)&&const DeepCollectionEquality().equals(other.savedAddresses, savedAddresses));
}


@override
int get hashCode => Object.hash(runtimeType,draft,preview,isPreviewLoading,previewFailure,status,submitFailure,showProblems,order,const DeepCollectionEquality().hash(savedAddresses));

@override
String toString() {
  return 'CheckoutState(draft: $draft, preview: $preview, isPreviewLoading: $isPreviewLoading, previewFailure: $previewFailure, status: $status, submitFailure: $submitFailure, showProblems: $showProblems, order: $order, savedAddresses: $savedAddresses)';
}


}

/// @nodoc
abstract mixin class $CheckoutStateCopyWith<$Res>  {
  factory $CheckoutStateCopyWith(CheckoutState value, $Res Function(CheckoutState) _then) = _$CheckoutStateCopyWithImpl;
@useResult
$Res call({
 CheckoutDraft draft, CheckoutPreview? preview, bool isPreviewLoading, Failure? previewFailure, CheckoutStatus status, Failure? submitFailure, bool showProblems, PlacedOrder? order, List<SavedAddress> savedAddresses
});


$CheckoutDraftCopyWith<$Res> get draft;$CheckoutPreviewCopyWith<$Res>? get preview;$PlacedOrderCopyWith<$Res>? get order;

}
/// @nodoc
class _$CheckoutStateCopyWithImpl<$Res>
    implements $CheckoutStateCopyWith<$Res> {
  _$CheckoutStateCopyWithImpl(this._self, this._then);

  final CheckoutState _self;
  final $Res Function(CheckoutState) _then;

/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? draft = null,Object? preview = freezed,Object? isPreviewLoading = null,Object? previewFailure = freezed,Object? status = null,Object? submitFailure = freezed,Object? showProblems = null,Object? order = freezed,Object? savedAddresses = null,}) {
  return _then(_self.copyWith(
draft: null == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as CheckoutDraft,preview: freezed == preview ? _self.preview : preview // ignore: cast_nullable_to_non_nullable
as CheckoutPreview?,isPreviewLoading: null == isPreviewLoading ? _self.isPreviewLoading : isPreviewLoading // ignore: cast_nullable_to_non_nullable
as bool,previewFailure: freezed == previewFailure ? _self.previewFailure : previewFailure // ignore: cast_nullable_to_non_nullable
as Failure?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CheckoutStatus,submitFailure: freezed == submitFailure ? _self.submitFailure : submitFailure // ignore: cast_nullable_to_non_nullable
as Failure?,showProblems: null == showProblems ? _self.showProblems : showProblems // ignore: cast_nullable_to_non_nullable
as bool,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as PlacedOrder?,savedAddresses: null == savedAddresses ? _self.savedAddresses : savedAddresses // ignore: cast_nullable_to_non_nullable
as List<SavedAddress>,
  ));
}
/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckoutDraftCopyWith<$Res> get draft {
  
  return $CheckoutDraftCopyWith<$Res>(_self.draft, (value) {
    return _then(_self.copyWith(draft: value));
  });
}/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckoutPreviewCopyWith<$Res>? get preview {
    if (_self.preview == null) {
    return null;
  }

  return $CheckoutPreviewCopyWith<$Res>(_self.preview!, (value) {
    return _then(_self.copyWith(preview: value));
  });
}/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlacedOrderCopyWith<$Res>? get order {
    if (_self.order == null) {
    return null;
  }

  return $PlacedOrderCopyWith<$Res>(_self.order!, (value) {
    return _then(_self.copyWith(order: value));
  });
}
}


/// Adds pattern-matching-related methods to [CheckoutState].
extension CheckoutStatePatterns on CheckoutState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckoutState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckoutState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckoutState value)  $default,){
final _that = this;
switch (_that) {
case _CheckoutState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckoutState value)?  $default,){
final _that = this;
switch (_that) {
case _CheckoutState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CheckoutDraft draft,  CheckoutPreview? preview,  bool isPreviewLoading,  Failure? previewFailure,  CheckoutStatus status,  Failure? submitFailure,  bool showProblems,  PlacedOrder? order,  List<SavedAddress> savedAddresses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckoutState() when $default != null:
return $default(_that.draft,_that.preview,_that.isPreviewLoading,_that.previewFailure,_that.status,_that.submitFailure,_that.showProblems,_that.order,_that.savedAddresses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CheckoutDraft draft,  CheckoutPreview? preview,  bool isPreviewLoading,  Failure? previewFailure,  CheckoutStatus status,  Failure? submitFailure,  bool showProblems,  PlacedOrder? order,  List<SavedAddress> savedAddresses)  $default,) {final _that = this;
switch (_that) {
case _CheckoutState():
return $default(_that.draft,_that.preview,_that.isPreviewLoading,_that.previewFailure,_that.status,_that.submitFailure,_that.showProblems,_that.order,_that.savedAddresses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CheckoutDraft draft,  CheckoutPreview? preview,  bool isPreviewLoading,  Failure? previewFailure,  CheckoutStatus status,  Failure? submitFailure,  bool showProblems,  PlacedOrder? order,  List<SavedAddress> savedAddresses)?  $default,) {final _that = this;
switch (_that) {
case _CheckoutState() when $default != null:
return $default(_that.draft,_that.preview,_that.isPreviewLoading,_that.previewFailure,_that.status,_that.submitFailure,_that.showProblems,_that.order,_that.savedAddresses);case _:
  return null;

}
}

}

/// @nodoc


class _CheckoutState extends CheckoutState {
  const _CheckoutState({this.draft = const CheckoutDraft(), this.preview, this.isPreviewLoading = true, this.previewFailure, this.status = CheckoutStatus.editing, this.submitFailure, this.showProblems = false, this.order, final  List<SavedAddress> savedAddresses = const <SavedAddress>[]}): _savedAddresses = savedAddresses,super._();
  

@override@JsonKey() final  CheckoutDraft draft;
@override final  CheckoutPreview? preview;
@override@JsonKey() final  bool isPreviewLoading;
@override final  Failure? previewFailure;
@override@JsonKey() final  CheckoutStatus status;
@override final  Failure? submitFailure;
/// Set after the first «Оплатить», so errors show only once asked.
@override@JsonKey() final  bool showProblems;
@override final  PlacedOrder? order;
/// The account's addresses; empty until loaded or when there are none.
 final  List<SavedAddress> _savedAddresses;
/// The account's addresses; empty until loaded or when there are none.
@override@JsonKey() List<SavedAddress> get savedAddresses {
  if (_savedAddresses is EqualUnmodifiableListView) return _savedAddresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_savedAddresses);
}


/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutStateCopyWith<_CheckoutState> get copyWith => __$CheckoutStateCopyWithImpl<_CheckoutState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutState&&(identical(other.draft, draft) || other.draft == draft)&&(identical(other.preview, preview) || other.preview == preview)&&(identical(other.isPreviewLoading, isPreviewLoading) || other.isPreviewLoading == isPreviewLoading)&&(identical(other.previewFailure, previewFailure) || other.previewFailure == previewFailure)&&(identical(other.status, status) || other.status == status)&&(identical(other.submitFailure, submitFailure) || other.submitFailure == submitFailure)&&(identical(other.showProblems, showProblems) || other.showProblems == showProblems)&&(identical(other.order, order) || other.order == order)&&const DeepCollectionEquality().equals(other._savedAddresses, _savedAddresses));
}


@override
int get hashCode => Object.hash(runtimeType,draft,preview,isPreviewLoading,previewFailure,status,submitFailure,showProblems,order,const DeepCollectionEquality().hash(_savedAddresses));

@override
String toString() {
  return 'CheckoutState(draft: $draft, preview: $preview, isPreviewLoading: $isPreviewLoading, previewFailure: $previewFailure, status: $status, submitFailure: $submitFailure, showProblems: $showProblems, order: $order, savedAddresses: $savedAddresses)';
}


}

/// @nodoc
abstract mixin class _$CheckoutStateCopyWith<$Res> implements $CheckoutStateCopyWith<$Res> {
  factory _$CheckoutStateCopyWith(_CheckoutState value, $Res Function(_CheckoutState) _then) = __$CheckoutStateCopyWithImpl;
@override @useResult
$Res call({
 CheckoutDraft draft, CheckoutPreview? preview, bool isPreviewLoading, Failure? previewFailure, CheckoutStatus status, Failure? submitFailure, bool showProblems, PlacedOrder? order, List<SavedAddress> savedAddresses
});


@override $CheckoutDraftCopyWith<$Res> get draft;@override $CheckoutPreviewCopyWith<$Res>? get preview;@override $PlacedOrderCopyWith<$Res>? get order;

}
/// @nodoc
class __$CheckoutStateCopyWithImpl<$Res>
    implements _$CheckoutStateCopyWith<$Res> {
  __$CheckoutStateCopyWithImpl(this._self, this._then);

  final _CheckoutState _self;
  final $Res Function(_CheckoutState) _then;

/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? draft = null,Object? preview = freezed,Object? isPreviewLoading = null,Object? previewFailure = freezed,Object? status = null,Object? submitFailure = freezed,Object? showProblems = null,Object? order = freezed,Object? savedAddresses = null,}) {
  return _then(_CheckoutState(
draft: null == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as CheckoutDraft,preview: freezed == preview ? _self.preview : preview // ignore: cast_nullable_to_non_nullable
as CheckoutPreview?,isPreviewLoading: null == isPreviewLoading ? _self.isPreviewLoading : isPreviewLoading // ignore: cast_nullable_to_non_nullable
as bool,previewFailure: freezed == previewFailure ? _self.previewFailure : previewFailure // ignore: cast_nullable_to_non_nullable
as Failure?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CheckoutStatus,submitFailure: freezed == submitFailure ? _self.submitFailure : submitFailure // ignore: cast_nullable_to_non_nullable
as Failure?,showProblems: null == showProblems ? _self.showProblems : showProblems // ignore: cast_nullable_to_non_nullable
as bool,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as PlacedOrder?,savedAddresses: null == savedAddresses ? _self._savedAddresses : savedAddresses // ignore: cast_nullable_to_non_nullable
as List<SavedAddress>,
  ));
}

/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckoutDraftCopyWith<$Res> get draft {
  
  return $CheckoutDraftCopyWith<$Res>(_self.draft, (value) {
    return _then(_self.copyWith(draft: value));
  });
}/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckoutPreviewCopyWith<$Res>? get preview {
    if (_self.preview == null) {
    return null;
  }

  return $CheckoutPreviewCopyWith<$Res>(_self.preview!, (value) {
    return _then(_self.copyWith(preview: value));
  });
}/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlacedOrderCopyWith<$Res>? get order {
    if (_self.order == null) {
    return null;
  }

  return $PlacedOrderCopyWith<$Res>(_self.order!, (value) {
    return _then(_self.copyWith(order: value));
  });
}
}

// dart format on
