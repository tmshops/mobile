// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wholesale.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WholesaleForm {

 String get name;/// 8 national digits, without +993.
 String get phone;/// Company or ИП.
 String get company; String get city;
/// Create a copy of WholesaleForm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WholesaleFormCopyWith<WholesaleForm> get copyWith => _$WholesaleFormCopyWithImpl<WholesaleForm>(this as WholesaleForm, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WholesaleForm&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.company, company) || other.company == company)&&(identical(other.city, city) || other.city == city));
}


@override
int get hashCode => Object.hash(runtimeType,name,phone,company,city);

@override
String toString() {
  return 'WholesaleForm(name: $name, phone: $phone, company: $company, city: $city)';
}


}

/// @nodoc
abstract mixin class $WholesaleFormCopyWith<$Res>  {
  factory $WholesaleFormCopyWith(WholesaleForm value, $Res Function(WholesaleForm) _then) = _$WholesaleFormCopyWithImpl;
@useResult
$Res call({
 String name, String phone, String company, String city
});




}
/// @nodoc
class _$WholesaleFormCopyWithImpl<$Res>
    implements $WholesaleFormCopyWith<$Res> {
  _$WholesaleFormCopyWithImpl(this._self, this._then);

  final WholesaleForm _self;
  final $Res Function(WholesaleForm) _then;

/// Create a copy of WholesaleForm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? phone = null,Object? company = null,Object? city = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WholesaleForm].
extension WholesaleFormPatterns on WholesaleForm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WholesaleForm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WholesaleForm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WholesaleForm value)  $default,){
final _that = this;
switch (_that) {
case _WholesaleForm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WholesaleForm value)?  $default,){
final _that = this;
switch (_that) {
case _WholesaleForm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String phone,  String company,  String city)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WholesaleForm() when $default != null:
return $default(_that.name,_that.phone,_that.company,_that.city);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String phone,  String company,  String city)  $default,) {final _that = this;
switch (_that) {
case _WholesaleForm():
return $default(_that.name,_that.phone,_that.company,_that.city);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String phone,  String company,  String city)?  $default,) {final _that = this;
switch (_that) {
case _WholesaleForm() when $default != null:
return $default(_that.name,_that.phone,_that.company,_that.city);case _:
  return null;

}
}

}

/// @nodoc


class _WholesaleForm extends WholesaleForm {
  const _WholesaleForm({this.name = '', this.phone = '', this.company = '', this.city = ''}): super._();
  

@override@JsonKey() final  String name;
/// 8 national digits, without +993.
@override@JsonKey() final  String phone;
/// Company or ИП.
@override@JsonKey() final  String company;
@override@JsonKey() final  String city;

/// Create a copy of WholesaleForm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WholesaleFormCopyWith<_WholesaleForm> get copyWith => __$WholesaleFormCopyWithImpl<_WholesaleForm>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WholesaleForm&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.company, company) || other.company == company)&&(identical(other.city, city) || other.city == city));
}


@override
int get hashCode => Object.hash(runtimeType,name,phone,company,city);

@override
String toString() {
  return 'WholesaleForm(name: $name, phone: $phone, company: $company, city: $city)';
}


}

/// @nodoc
abstract mixin class _$WholesaleFormCopyWith<$Res> implements $WholesaleFormCopyWith<$Res> {
  factory _$WholesaleFormCopyWith(_WholesaleForm value, $Res Function(_WholesaleForm) _then) = __$WholesaleFormCopyWithImpl;
@override @useResult
$Res call({
 String name, String phone, String company, String city
});




}
/// @nodoc
class __$WholesaleFormCopyWithImpl<$Res>
    implements _$WholesaleFormCopyWith<$Res> {
  __$WholesaleFormCopyWithImpl(this._self, this._then);

  final _WholesaleForm _self;
  final $Res Function(_WholesaleForm) _then;

/// Create a copy of WholesaleForm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? phone = null,Object? company = null,Object? city = null,}) {
  return _then(_WholesaleForm(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$WholesaleApplication {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WholesaleApplication);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WholesaleApplication()';
}


}

/// @nodoc
class $WholesaleApplicationCopyWith<$Res>  {
$WholesaleApplicationCopyWith(WholesaleApplication _, $Res Function(WholesaleApplication) __);
}


/// Adds pattern-matching-related methods to [WholesaleApplication].
extension WholesaleApplicationPatterns on WholesaleApplication {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WholesaleNone value)?  none,TResult Function( WholesalePending value)?  pending,TResult Function( WholesaleApproved value)?  approved,TResult Function( WholesaleRejected value)?  rejected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case WholesaleNone() when none != null:
return none(_that);case WholesalePending() when pending != null:
return pending(_that);case WholesaleApproved() when approved != null:
return approved(_that);case WholesaleRejected() when rejected != null:
return rejected(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WholesaleNone value)  none,required TResult Function( WholesalePending value)  pending,required TResult Function( WholesaleApproved value)  approved,required TResult Function( WholesaleRejected value)  rejected,}){
final _that = this;
switch (_that) {
case WholesaleNone():
return none(_that);case WholesalePending():
return pending(_that);case WholesaleApproved():
return approved(_that);case WholesaleRejected():
return rejected(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WholesaleNone value)?  none,TResult? Function( WholesalePending value)?  pending,TResult? Function( WholesaleApproved value)?  approved,TResult? Function( WholesaleRejected value)?  rejected,}){
final _that = this;
switch (_that) {
case WholesaleNone() when none != null:
return none(_that);case WholesalePending() when pending != null:
return pending(_that);case WholesaleApproved() when approved != null:
return approved(_that);case WholesaleRejected() when rejected != null:
return rejected(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  none,TResult Function( WholesaleForm form,  DateTime sentAt)?  pending,TResult Function( WholesaleForm form,  String group)?  approved,TResult Function( WholesaleForm form,  String reason)?  rejected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case WholesaleNone() when none != null:
return none();case WholesalePending() when pending != null:
return pending(_that.form,_that.sentAt);case WholesaleApproved() when approved != null:
return approved(_that.form,_that.group);case WholesaleRejected() when rejected != null:
return rejected(_that.form,_that.reason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  none,required TResult Function( WholesaleForm form,  DateTime sentAt)  pending,required TResult Function( WholesaleForm form,  String group)  approved,required TResult Function( WholesaleForm form,  String reason)  rejected,}) {final _that = this;
switch (_that) {
case WholesaleNone():
return none();case WholesalePending():
return pending(_that.form,_that.sentAt);case WholesaleApproved():
return approved(_that.form,_that.group);case WholesaleRejected():
return rejected(_that.form,_that.reason);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  none,TResult? Function( WholesaleForm form,  DateTime sentAt)?  pending,TResult? Function( WholesaleForm form,  String group)?  approved,TResult? Function( WholesaleForm form,  String reason)?  rejected,}) {final _that = this;
switch (_that) {
case WholesaleNone() when none != null:
return none();case WholesalePending() when pending != null:
return pending(_that.form,_that.sentAt);case WholesaleApproved() when approved != null:
return approved(_that.form,_that.group);case WholesaleRejected() when rejected != null:
return rejected(_that.form,_that.reason);case _:
  return null;

}
}

}

/// @nodoc


class WholesaleNone implements WholesaleApplication {
  const WholesaleNone();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WholesaleNone);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WholesaleApplication.none()';
}


}




/// @nodoc


class WholesalePending implements WholesaleApplication {
  const WholesalePending({required this.form, required this.sentAt});
  

 final  WholesaleForm form;
 final  DateTime sentAt;

/// Create a copy of WholesaleApplication
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WholesalePendingCopyWith<WholesalePending> get copyWith => _$WholesalePendingCopyWithImpl<WholesalePending>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WholesalePending&&(identical(other.form, form) || other.form == form)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt));
}


@override
int get hashCode => Object.hash(runtimeType,form,sentAt);

@override
String toString() {
  return 'WholesaleApplication.pending(form: $form, sentAt: $sentAt)';
}


}

/// @nodoc
abstract mixin class $WholesalePendingCopyWith<$Res> implements $WholesaleApplicationCopyWith<$Res> {
  factory $WholesalePendingCopyWith(WholesalePending value, $Res Function(WholesalePending) _then) = _$WholesalePendingCopyWithImpl;
@useResult
$Res call({
 WholesaleForm form, DateTime sentAt
});


$WholesaleFormCopyWith<$Res> get form;

}
/// @nodoc
class _$WholesalePendingCopyWithImpl<$Res>
    implements $WholesalePendingCopyWith<$Res> {
  _$WholesalePendingCopyWithImpl(this._self, this._then);

  final WholesalePending _self;
  final $Res Function(WholesalePending) _then;

/// Create a copy of WholesaleApplication
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? form = null,Object? sentAt = null,}) {
  return _then(WholesalePending(
form: null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as WholesaleForm,sentAt: null == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of WholesaleApplication
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WholesaleFormCopyWith<$Res> get form {
  
  return $WholesaleFormCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}

/// @nodoc


class WholesaleApproved implements WholesaleApplication {
  const WholesaleApproved({required this.form, required this.group});
  

 final  WholesaleForm form;
 final  String group;

/// Create a copy of WholesaleApplication
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WholesaleApprovedCopyWith<WholesaleApproved> get copyWith => _$WholesaleApprovedCopyWithImpl<WholesaleApproved>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WholesaleApproved&&(identical(other.form, form) || other.form == form)&&(identical(other.group, group) || other.group == group));
}


@override
int get hashCode => Object.hash(runtimeType,form,group);

@override
String toString() {
  return 'WholesaleApplication.approved(form: $form, group: $group)';
}


}

/// @nodoc
abstract mixin class $WholesaleApprovedCopyWith<$Res> implements $WholesaleApplicationCopyWith<$Res> {
  factory $WholesaleApprovedCopyWith(WholesaleApproved value, $Res Function(WholesaleApproved) _then) = _$WholesaleApprovedCopyWithImpl;
@useResult
$Res call({
 WholesaleForm form, String group
});


$WholesaleFormCopyWith<$Res> get form;

}
/// @nodoc
class _$WholesaleApprovedCopyWithImpl<$Res>
    implements $WholesaleApprovedCopyWith<$Res> {
  _$WholesaleApprovedCopyWithImpl(this._self, this._then);

  final WholesaleApproved _self;
  final $Res Function(WholesaleApproved) _then;

/// Create a copy of WholesaleApplication
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? form = null,Object? group = null,}) {
  return _then(WholesaleApproved(
form: null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as WholesaleForm,group: null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of WholesaleApplication
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WholesaleFormCopyWith<$Res> get form {
  
  return $WholesaleFormCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}

/// @nodoc


class WholesaleRejected implements WholesaleApplication {
  const WholesaleRejected({required this.form, required this.reason});
  

 final  WholesaleForm form;
 final  String reason;

/// Create a copy of WholesaleApplication
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WholesaleRejectedCopyWith<WholesaleRejected> get copyWith => _$WholesaleRejectedCopyWithImpl<WholesaleRejected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WholesaleRejected&&(identical(other.form, form) || other.form == form)&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,form,reason);

@override
String toString() {
  return 'WholesaleApplication.rejected(form: $form, reason: $reason)';
}


}

/// @nodoc
abstract mixin class $WholesaleRejectedCopyWith<$Res> implements $WholesaleApplicationCopyWith<$Res> {
  factory $WholesaleRejectedCopyWith(WholesaleRejected value, $Res Function(WholesaleRejected) _then) = _$WholesaleRejectedCopyWithImpl;
@useResult
$Res call({
 WholesaleForm form, String reason
});


$WholesaleFormCopyWith<$Res> get form;

}
/// @nodoc
class _$WholesaleRejectedCopyWithImpl<$Res>
    implements $WholesaleRejectedCopyWith<$Res> {
  _$WholesaleRejectedCopyWithImpl(this._self, this._then);

  final WholesaleRejected _self;
  final $Res Function(WholesaleRejected) _then;

/// Create a copy of WholesaleApplication
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? form = null,Object? reason = null,}) {
  return _then(WholesaleRejected(
form: null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as WholesaleForm,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of WholesaleApplication
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WholesaleFormCopyWith<$Res> get form {
  
  return $WholesaleFormCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}

/// @nodoc
mixin _$WholesaleDocument {

 WholesaleDocumentKind get kind; String get number; DateTime get date; String get url;
/// Create a copy of WholesaleDocument
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WholesaleDocumentCopyWith<WholesaleDocument> get copyWith => _$WholesaleDocumentCopyWithImpl<WholesaleDocument>(this as WholesaleDocument, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WholesaleDocument&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.number, number) || other.number == number)&&(identical(other.date, date) || other.date == date)&&(identical(other.url, url) || other.url == url));
}


@override
int get hashCode => Object.hash(runtimeType,kind,number,date,url);

@override
String toString() {
  return 'WholesaleDocument(kind: $kind, number: $number, date: $date, url: $url)';
}


}

/// @nodoc
abstract mixin class $WholesaleDocumentCopyWith<$Res>  {
  factory $WholesaleDocumentCopyWith(WholesaleDocument value, $Res Function(WholesaleDocument) _then) = _$WholesaleDocumentCopyWithImpl;
@useResult
$Res call({
 WholesaleDocumentKind kind, String number, DateTime date, String url
});




}
/// @nodoc
class _$WholesaleDocumentCopyWithImpl<$Res>
    implements $WholesaleDocumentCopyWith<$Res> {
  _$WholesaleDocumentCopyWithImpl(this._self, this._then);

  final WholesaleDocument _self;
  final $Res Function(WholesaleDocument) _then;

/// Create a copy of WholesaleDocument
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kind = null,Object? number = null,Object? date = null,Object? url = null,}) {
  return _then(_self.copyWith(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as WholesaleDocumentKind,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WholesaleDocument].
extension WholesaleDocumentPatterns on WholesaleDocument {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WholesaleDocument value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WholesaleDocument() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WholesaleDocument value)  $default,){
final _that = this;
switch (_that) {
case _WholesaleDocument():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WholesaleDocument value)?  $default,){
final _that = this;
switch (_that) {
case _WholesaleDocument() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WholesaleDocumentKind kind,  String number,  DateTime date,  String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WholesaleDocument() when $default != null:
return $default(_that.kind,_that.number,_that.date,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WholesaleDocumentKind kind,  String number,  DateTime date,  String url)  $default,) {final _that = this;
switch (_that) {
case _WholesaleDocument():
return $default(_that.kind,_that.number,_that.date,_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WholesaleDocumentKind kind,  String number,  DateTime date,  String url)?  $default,) {final _that = this;
switch (_that) {
case _WholesaleDocument() when $default != null:
return $default(_that.kind,_that.number,_that.date,_that.url);case _:
  return null;

}
}

}

/// @nodoc


class _WholesaleDocument implements WholesaleDocument {
  const _WholesaleDocument({required this.kind, required this.number, required this.date, required this.url});
  

@override final  WholesaleDocumentKind kind;
@override final  String number;
@override final  DateTime date;
@override final  String url;

/// Create a copy of WholesaleDocument
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WholesaleDocumentCopyWith<_WholesaleDocument> get copyWith => __$WholesaleDocumentCopyWithImpl<_WholesaleDocument>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WholesaleDocument&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.number, number) || other.number == number)&&(identical(other.date, date) || other.date == date)&&(identical(other.url, url) || other.url == url));
}


@override
int get hashCode => Object.hash(runtimeType,kind,number,date,url);

@override
String toString() {
  return 'WholesaleDocument(kind: $kind, number: $number, date: $date, url: $url)';
}


}

/// @nodoc
abstract mixin class _$WholesaleDocumentCopyWith<$Res> implements $WholesaleDocumentCopyWith<$Res> {
  factory _$WholesaleDocumentCopyWith(_WholesaleDocument value, $Res Function(_WholesaleDocument) _then) = __$WholesaleDocumentCopyWithImpl;
@override @useResult
$Res call({
 WholesaleDocumentKind kind, String number, DateTime date, String url
});




}
/// @nodoc
class __$WholesaleDocumentCopyWithImpl<$Res>
    implements _$WholesaleDocumentCopyWith<$Res> {
  __$WholesaleDocumentCopyWithImpl(this._self, this._then);

  final _WholesaleDocument _self;
  final $Res Function(_WholesaleDocument) _then;

/// Create a copy of WholesaleDocument
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kind = null,Object? number = null,Object? date = null,Object? url = null,}) {
  return _then(_WholesaleDocument(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as WholesaleDocumentKind,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$OrderDocuments {

 String get orderNumber; DateTime get createdAt; List<WholesaleDocument> get documents;
/// Create a copy of OrderDocuments
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDocumentsCopyWith<OrderDocuments> get copyWith => _$OrderDocumentsCopyWithImpl<OrderDocuments>(this as OrderDocuments, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDocuments&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.documents, documents));
}


@override
int get hashCode => Object.hash(runtimeType,orderNumber,createdAt,const DeepCollectionEquality().hash(documents));

@override
String toString() {
  return 'OrderDocuments(orderNumber: $orderNumber, createdAt: $createdAt, documents: $documents)';
}


}

/// @nodoc
abstract mixin class $OrderDocumentsCopyWith<$Res>  {
  factory $OrderDocumentsCopyWith(OrderDocuments value, $Res Function(OrderDocuments) _then) = _$OrderDocumentsCopyWithImpl;
@useResult
$Res call({
 String orderNumber, DateTime createdAt, List<WholesaleDocument> documents
});




}
/// @nodoc
class _$OrderDocumentsCopyWithImpl<$Res>
    implements $OrderDocumentsCopyWith<$Res> {
  _$OrderDocumentsCopyWithImpl(this._self, this._then);

  final OrderDocuments _self;
  final $Res Function(OrderDocuments) _then;

/// Create a copy of OrderDocuments
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderNumber = null,Object? createdAt = null,Object? documents = null,}) {
  return _then(_self.copyWith(
orderNumber: null == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,documents: null == documents ? _self.documents : documents // ignore: cast_nullable_to_non_nullable
as List<WholesaleDocument>,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderDocuments].
extension OrderDocumentsPatterns on OrderDocuments {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderDocuments value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderDocuments() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderDocuments value)  $default,){
final _that = this;
switch (_that) {
case _OrderDocuments():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderDocuments value)?  $default,){
final _that = this;
switch (_that) {
case _OrderDocuments() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String orderNumber,  DateTime createdAt,  List<WholesaleDocument> documents)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderDocuments() when $default != null:
return $default(_that.orderNumber,_that.createdAt,_that.documents);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String orderNumber,  DateTime createdAt,  List<WholesaleDocument> documents)  $default,) {final _that = this;
switch (_that) {
case _OrderDocuments():
return $default(_that.orderNumber,_that.createdAt,_that.documents);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String orderNumber,  DateTime createdAt,  List<WholesaleDocument> documents)?  $default,) {final _that = this;
switch (_that) {
case _OrderDocuments() when $default != null:
return $default(_that.orderNumber,_that.createdAt,_that.documents);case _:
  return null;

}
}

}

/// @nodoc


class _OrderDocuments implements OrderDocuments {
  const _OrderDocuments({required this.orderNumber, required this.createdAt, required final  List<WholesaleDocument> documents}): _documents = documents;
  

@override final  String orderNumber;
@override final  DateTime createdAt;
 final  List<WholesaleDocument> _documents;
@override List<WholesaleDocument> get documents {
  if (_documents is EqualUnmodifiableListView) return _documents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_documents);
}


/// Create a copy of OrderDocuments
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderDocumentsCopyWith<_OrderDocuments> get copyWith => __$OrderDocumentsCopyWithImpl<_OrderDocuments>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderDocuments&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other._documents, _documents));
}


@override
int get hashCode => Object.hash(runtimeType,orderNumber,createdAt,const DeepCollectionEquality().hash(_documents));

@override
String toString() {
  return 'OrderDocuments(orderNumber: $orderNumber, createdAt: $createdAt, documents: $documents)';
}


}

/// @nodoc
abstract mixin class _$OrderDocumentsCopyWith<$Res> implements $OrderDocumentsCopyWith<$Res> {
  factory _$OrderDocumentsCopyWith(_OrderDocuments value, $Res Function(_OrderDocuments) _then) = __$OrderDocumentsCopyWithImpl;
@override @useResult
$Res call({
 String orderNumber, DateTime createdAt, List<WholesaleDocument> documents
});




}
/// @nodoc
class __$OrderDocumentsCopyWithImpl<$Res>
    implements _$OrderDocumentsCopyWith<$Res> {
  __$OrderDocumentsCopyWithImpl(this._self, this._then);

  final _OrderDocuments _self;
  final $Res Function(_OrderDocuments) _then;

/// Create a copy of OrderDocuments
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderNumber = null,Object? createdAt = null,Object? documents = null,}) {
  return _then(_OrderDocuments(
orderNumber: null == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,documents: null == documents ? _self._documents : documents // ignore: cast_nullable_to_non_nullable
as List<WholesaleDocument>,
  ));
}


}

// dart format on
