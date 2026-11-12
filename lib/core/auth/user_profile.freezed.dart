// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserProfile {

 String get id;/// 8 national digits, without +993.
 String get phone; String get firstName; String get lastName; String? get email; String? get regionId; int get balance;/// Owed for surcharges; a parcel with debt is not handed over (TZ §6.3).
 int get debt; int get bonuses;/// Wholesale group: «Опт» badge and wholesale screens (TZ §6.4).
 bool get isWholesale;
/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileCopyWith<UserProfile> get copyWith => _$UserProfileCopyWithImpl<UserProfile>(this as UserProfile, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.regionId, regionId) || other.regionId == regionId)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.debt, debt) || other.debt == debt)&&(identical(other.bonuses, bonuses) || other.bonuses == bonuses)&&(identical(other.isWholesale, isWholesale) || other.isWholesale == isWholesale));
}


@override
int get hashCode => Object.hash(runtimeType,id,phone,firstName,lastName,email,regionId,balance,debt,bonuses,isWholesale);

@override
String toString() {
  return 'UserProfile(id: $id, phone: $phone, firstName: $firstName, lastName: $lastName, email: $email, regionId: $regionId, balance: $balance, debt: $debt, bonuses: $bonuses, isWholesale: $isWholesale)';
}


}

/// @nodoc
abstract mixin class $UserProfileCopyWith<$Res>  {
  factory $UserProfileCopyWith(UserProfile value, $Res Function(UserProfile) _then) = _$UserProfileCopyWithImpl;
@useResult
$Res call({
 String id, String phone, String firstName, String lastName, String? email, String? regionId, int balance, int debt, int bonuses, bool isWholesale
});




}
/// @nodoc
class _$UserProfileCopyWithImpl<$Res>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._self, this._then);

  final UserProfile _self;
  final $Res Function(UserProfile) _then;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? phone = null,Object? firstName = null,Object? lastName = null,Object? email = freezed,Object? regionId = freezed,Object? balance = null,Object? debt = null,Object? bonuses = null,Object? isWholesale = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,regionId: freezed == regionId ? _self.regionId : regionId // ignore: cast_nullable_to_non_nullable
as String?,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as int,debt: null == debt ? _self.debt : debt // ignore: cast_nullable_to_non_nullable
as int,bonuses: null == bonuses ? _self.bonuses : bonuses // ignore: cast_nullable_to_non_nullable
as int,isWholesale: null == isWholesale ? _self.isWholesale : isWholesale // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UserProfile].
extension UserProfilePatterns on UserProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserProfile value)  $default,){
final _that = this;
switch (_that) {
case _UserProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserProfile value)?  $default,){
final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String phone,  String firstName,  String lastName,  String? email,  String? regionId,  int balance,  int debt,  int bonuses,  bool isWholesale)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
return $default(_that.id,_that.phone,_that.firstName,_that.lastName,_that.email,_that.regionId,_that.balance,_that.debt,_that.bonuses,_that.isWholesale);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String phone,  String firstName,  String lastName,  String? email,  String? regionId,  int balance,  int debt,  int bonuses,  bool isWholesale)  $default,) {final _that = this;
switch (_that) {
case _UserProfile():
return $default(_that.id,_that.phone,_that.firstName,_that.lastName,_that.email,_that.regionId,_that.balance,_that.debt,_that.bonuses,_that.isWholesale);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String phone,  String firstName,  String lastName,  String? email,  String? regionId,  int balance,  int debt,  int bonuses,  bool isWholesale)?  $default,) {final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
return $default(_that.id,_that.phone,_that.firstName,_that.lastName,_that.email,_that.regionId,_that.balance,_that.debt,_that.bonuses,_that.isWholesale);case _:
  return null;

}
}

}

/// @nodoc


class _UserProfile extends UserProfile {
  const _UserProfile({required this.id, required this.phone, this.firstName = '', this.lastName = '', this.email, this.regionId, this.balance = 0, this.debt = 0, this.bonuses = 0, this.isWholesale = false}): super._();
  

@override final  String id;
/// 8 national digits, without +993.
@override final  String phone;
@override@JsonKey() final  String firstName;
@override@JsonKey() final  String lastName;
@override final  String? email;
@override final  String? regionId;
@override@JsonKey() final  int balance;
/// Owed for surcharges; a parcel with debt is not handed over (TZ §6.3).
@override@JsonKey() final  int debt;
@override@JsonKey() final  int bonuses;
/// Wholesale group: «Опт» badge and wholesale screens (TZ §6.4).
@override@JsonKey() final  bool isWholesale;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserProfileCopyWith<_UserProfile> get copyWith => __$UserProfileCopyWithImpl<_UserProfile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.regionId, regionId) || other.regionId == regionId)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.debt, debt) || other.debt == debt)&&(identical(other.bonuses, bonuses) || other.bonuses == bonuses)&&(identical(other.isWholesale, isWholesale) || other.isWholesale == isWholesale));
}


@override
int get hashCode => Object.hash(runtimeType,id,phone,firstName,lastName,email,regionId,balance,debt,bonuses,isWholesale);

@override
String toString() {
  return 'UserProfile(id: $id, phone: $phone, firstName: $firstName, lastName: $lastName, email: $email, regionId: $regionId, balance: $balance, debt: $debt, bonuses: $bonuses, isWholesale: $isWholesale)';
}


}

/// @nodoc
abstract mixin class _$UserProfileCopyWith<$Res> implements $UserProfileCopyWith<$Res> {
  factory _$UserProfileCopyWith(_UserProfile value, $Res Function(_UserProfile) _then) = __$UserProfileCopyWithImpl;
@override @useResult
$Res call({
 String id, String phone, String firstName, String lastName, String? email, String? regionId, int balance, int debt, int bonuses, bool isWholesale
});




}
/// @nodoc
class __$UserProfileCopyWithImpl<$Res>
    implements _$UserProfileCopyWith<$Res> {
  __$UserProfileCopyWithImpl(this._self, this._then);

  final _UserProfile _self;
  final $Res Function(_UserProfile) _then;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? phone = null,Object? firstName = null,Object? lastName = null,Object? email = freezed,Object? regionId = freezed,Object? balance = null,Object? debt = null,Object? bonuses = null,Object? isWholesale = null,}) {
  return _then(_UserProfile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,regionId: freezed == regionId ? _self.regionId : regionId // ignore: cast_nullable_to_non_nullable
as String?,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as int,debt: null == debt ? _self.debt : debt // ignore: cast_nullable_to_non_nullable
as int,bonuses: null == bonuses ? _self.bonuses : bonuses // ignore: cast_nullable_to_non_nullable
as int,isWholesale: null == isWholesale ? _self.isWholesale : isWholesale // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
