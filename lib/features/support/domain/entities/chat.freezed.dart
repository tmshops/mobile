// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatContent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatContent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatContent()';
}


}

/// @nodoc
class $ChatContentCopyWith<$Res>  {
$ChatContentCopyWith(ChatContent _, $Res Function(ChatContent) __);
}


/// Adds pattern-matching-related methods to [ChatContent].
extension ChatContentPatterns on ChatContent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChatText value)?  text,TResult Function( ChatImages value)?  images,TResult Function( ChatProduct value)?  product,TResult Function( ChatOrder value)?  order,TResult Function( ChatRequest value)?  request,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChatText() when text != null:
return text(_that);case ChatImages() when images != null:
return images(_that);case ChatProduct() when product != null:
return product(_that);case ChatOrder() when order != null:
return order(_that);case ChatRequest() when request != null:
return request(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChatText value)  text,required TResult Function( ChatImages value)  images,required TResult Function( ChatProduct value)  product,required TResult Function( ChatOrder value)  order,required TResult Function( ChatRequest value)  request,}){
final _that = this;
switch (_that) {
case ChatText():
return text(_that);case ChatImages():
return images(_that);case ChatProduct():
return product(_that);case ChatOrder():
return order(_that);case ChatRequest():
return request(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChatText value)?  text,TResult? Function( ChatImages value)?  images,TResult? Function( ChatProduct value)?  product,TResult? Function( ChatOrder value)?  order,TResult? Function( ChatRequest value)?  request,}){
final _that = this;
switch (_that) {
case ChatText() when text != null:
return text(_that);case ChatImages() when images != null:
return images(_that);case ChatProduct() when product != null:
return product(_that);case ChatOrder() when order != null:
return order(_that);case ChatRequest() when request != null:
return request(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String text)?  text,TResult Function( List<String> urls)?  images,TResult Function( ProductSummary product)?  product,TResult Function( String number)?  order,TResult Function( FindRequest request)?  request,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChatText() when text != null:
return text(_that.text);case ChatImages() when images != null:
return images(_that.urls);case ChatProduct() when product != null:
return product(_that.product);case ChatOrder() when order != null:
return order(_that.number);case ChatRequest() when request != null:
return request(_that.request);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String text)  text,required TResult Function( List<String> urls)  images,required TResult Function( ProductSummary product)  product,required TResult Function( String number)  order,required TResult Function( FindRequest request)  request,}) {final _that = this;
switch (_that) {
case ChatText():
return text(_that.text);case ChatImages():
return images(_that.urls);case ChatProduct():
return product(_that.product);case ChatOrder():
return order(_that.number);case ChatRequest():
return request(_that.request);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String text)?  text,TResult? Function( List<String> urls)?  images,TResult? Function( ProductSummary product)?  product,TResult? Function( String number)?  order,TResult? Function( FindRequest request)?  request,}) {final _that = this;
switch (_that) {
case ChatText() when text != null:
return text(_that.text);case ChatImages() when images != null:
return images(_that.urls);case ChatProduct() when product != null:
return product(_that.product);case ChatOrder() when order != null:
return order(_that.number);case ChatRequest() when request != null:
return request(_that.request);case _:
  return null;

}
}

}

/// @nodoc


class ChatText implements ChatContent {
  const ChatText(this.text);
  

 final  String text;

/// Create a copy of ChatContent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatTextCopyWith<ChatText> get copyWith => _$ChatTextCopyWithImpl<ChatText>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatText&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString() {
  return 'ChatContent.text(text: $text)';
}


}

/// @nodoc
abstract mixin class $ChatTextCopyWith<$Res> implements $ChatContentCopyWith<$Res> {
  factory $ChatTextCopyWith(ChatText value, $Res Function(ChatText) _then) = _$ChatTextCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class _$ChatTextCopyWithImpl<$Res>
    implements $ChatTextCopyWith<$Res> {
  _$ChatTextCopyWithImpl(this._self, this._then);

  final ChatText _self;
  final $Res Function(ChatText) _then;

/// Create a copy of ChatContent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(ChatText(
null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ChatImages implements ChatContent {
  const ChatImages(final  List<String> urls): _urls = urls;
  

 final  List<String> _urls;
 List<String> get urls {
  if (_urls is EqualUnmodifiableListView) return _urls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_urls);
}


/// Create a copy of ChatContent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatImagesCopyWith<ChatImages> get copyWith => _$ChatImagesCopyWithImpl<ChatImages>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatImages&&const DeepCollectionEquality().equals(other._urls, _urls));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_urls));

@override
String toString() {
  return 'ChatContent.images(urls: $urls)';
}


}

/// @nodoc
abstract mixin class $ChatImagesCopyWith<$Res> implements $ChatContentCopyWith<$Res> {
  factory $ChatImagesCopyWith(ChatImages value, $Res Function(ChatImages) _then) = _$ChatImagesCopyWithImpl;
@useResult
$Res call({
 List<String> urls
});




}
/// @nodoc
class _$ChatImagesCopyWithImpl<$Res>
    implements $ChatImagesCopyWith<$Res> {
  _$ChatImagesCopyWithImpl(this._self, this._then);

  final ChatImages _self;
  final $Res Function(ChatImages) _then;

/// Create a copy of ChatContent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? urls = null,}) {
  return _then(ChatImages(
null == urls ? _self._urls : urls // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class ChatProduct implements ChatContent {
  const ChatProduct(this.product);
  

 final  ProductSummary product;

/// Create a copy of ChatContent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatProductCopyWith<ChatProduct> get copyWith => _$ChatProductCopyWithImpl<ChatProduct>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatProduct&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString() {
  return 'ChatContent.product(product: $product)';
}


}

/// @nodoc
abstract mixin class $ChatProductCopyWith<$Res> implements $ChatContentCopyWith<$Res> {
  factory $ChatProductCopyWith(ChatProduct value, $Res Function(ChatProduct) _then) = _$ChatProductCopyWithImpl;
@useResult
$Res call({
 ProductSummary product
});


$ProductSummaryCopyWith<$Res> get product;

}
/// @nodoc
class _$ChatProductCopyWithImpl<$Res>
    implements $ChatProductCopyWith<$Res> {
  _$ChatProductCopyWithImpl(this._self, this._then);

  final ChatProduct _self;
  final $Res Function(ChatProduct) _then;

/// Create a copy of ChatContent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,}) {
  return _then(ChatProduct(
null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductSummary,
  ));
}

/// Create a copy of ChatContent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductSummaryCopyWith<$Res> get product {
  
  return $ProductSummaryCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

/// @nodoc


class ChatOrder implements ChatContent {
  const ChatOrder(this.number);
  

 final  String number;

/// Create a copy of ChatContent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatOrderCopyWith<ChatOrder> get copyWith => _$ChatOrderCopyWithImpl<ChatOrder>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatOrder&&(identical(other.number, number) || other.number == number));
}


@override
int get hashCode => Object.hash(runtimeType,number);

@override
String toString() {
  return 'ChatContent.order(number: $number)';
}


}

/// @nodoc
abstract mixin class $ChatOrderCopyWith<$Res> implements $ChatContentCopyWith<$Res> {
  factory $ChatOrderCopyWith(ChatOrder value, $Res Function(ChatOrder) _then) = _$ChatOrderCopyWithImpl;
@useResult
$Res call({
 String number
});




}
/// @nodoc
class _$ChatOrderCopyWithImpl<$Res>
    implements $ChatOrderCopyWith<$Res> {
  _$ChatOrderCopyWithImpl(this._self, this._then);

  final ChatOrder _self;
  final $Res Function(ChatOrder) _then;

/// Create a copy of ChatContent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? number = null,}) {
  return _then(ChatOrder(
null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ChatRequest implements ChatContent {
  const ChatRequest(this.request);
  

 final  FindRequest request;

/// Create a copy of ChatContent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatRequestCopyWith<ChatRequest> get copyWith => _$ChatRequestCopyWithImpl<ChatRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatRequest&&(identical(other.request, request) || other.request == request));
}


@override
int get hashCode => Object.hash(runtimeType,request);

@override
String toString() {
  return 'ChatContent.request(request: $request)';
}


}

/// @nodoc
abstract mixin class $ChatRequestCopyWith<$Res> implements $ChatContentCopyWith<$Res> {
  factory $ChatRequestCopyWith(ChatRequest value, $Res Function(ChatRequest) _then) = _$ChatRequestCopyWithImpl;
@useResult
$Res call({
 FindRequest request
});


$FindRequestCopyWith<$Res> get request;

}
/// @nodoc
class _$ChatRequestCopyWithImpl<$Res>
    implements $ChatRequestCopyWith<$Res> {
  _$ChatRequestCopyWithImpl(this._self, this._then);

  final ChatRequest _self;
  final $Res Function(ChatRequest) _then;

/// Create a copy of ChatContent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? request = null,}) {
  return _then(ChatRequest(
null == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as FindRequest,
  ));
}

/// Create a copy of ChatContent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FindRequestCopyWith<$Res> get request {
  
  return $FindRequestCopyWith<$Res>(_self.request, (value) {
    return _then(_self.copyWith(request: value));
  });
}
}

/// @nodoc
mixin _$FindRequest {

 String get id; String get description; List<String> get photos; String? get link; FindRequestStatus get status;/// What the operator found; set once [status] is found.
 ProductSummary? get product;
/// Create a copy of FindRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FindRequestCopyWith<FindRequest> get copyWith => _$FindRequestCopyWithImpl<FindRequest>(this as FindRequest, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FindRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.photos, photos)&&(identical(other.link, link) || other.link == link)&&(identical(other.status, status) || other.status == status)&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,id,description,const DeepCollectionEquality().hash(photos),link,status,product);

@override
String toString() {
  return 'FindRequest(id: $id, description: $description, photos: $photos, link: $link, status: $status, product: $product)';
}


}

/// @nodoc
abstract mixin class $FindRequestCopyWith<$Res>  {
  factory $FindRequestCopyWith(FindRequest value, $Res Function(FindRequest) _then) = _$FindRequestCopyWithImpl;
@useResult
$Res call({
 String id, String description, List<String> photos, String? link, FindRequestStatus status, ProductSummary? product
});


$ProductSummaryCopyWith<$Res>? get product;

}
/// @nodoc
class _$FindRequestCopyWithImpl<$Res>
    implements $FindRequestCopyWith<$Res> {
  _$FindRequestCopyWithImpl(this._self, this._then);

  final FindRequest _self;
  final $Res Function(FindRequest) _then;

/// Create a copy of FindRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? description = null,Object? photos = null,Object? link = freezed,Object? status = null,Object? product = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,photos: null == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FindRequestStatus,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductSummary?,
  ));
}
/// Create a copy of FindRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductSummaryCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductSummaryCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [FindRequest].
extension FindRequestPatterns on FindRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FindRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FindRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FindRequest value)  $default,){
final _that = this;
switch (_that) {
case _FindRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FindRequest value)?  $default,){
final _that = this;
switch (_that) {
case _FindRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String description,  List<String> photos,  String? link,  FindRequestStatus status,  ProductSummary? product)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FindRequest() when $default != null:
return $default(_that.id,_that.description,_that.photos,_that.link,_that.status,_that.product);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String description,  List<String> photos,  String? link,  FindRequestStatus status,  ProductSummary? product)  $default,) {final _that = this;
switch (_that) {
case _FindRequest():
return $default(_that.id,_that.description,_that.photos,_that.link,_that.status,_that.product);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String description,  List<String> photos,  String? link,  FindRequestStatus status,  ProductSummary? product)?  $default,) {final _that = this;
switch (_that) {
case _FindRequest() when $default != null:
return $default(_that.id,_that.description,_that.photos,_that.link,_that.status,_that.product);case _:
  return null;

}
}

}

/// @nodoc


class _FindRequest implements FindRequest {
  const _FindRequest({required this.id, required this.description, final  List<String> photos = const <String>[], this.link, this.status = FindRequestStatus.searching, this.product}): _photos = photos;
  

@override final  String id;
@override final  String description;
 final  List<String> _photos;
@override@JsonKey() List<String> get photos {
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photos);
}

@override final  String? link;
@override@JsonKey() final  FindRequestStatus status;
/// What the operator found; set once [status] is found.
@override final  ProductSummary? product;

/// Create a copy of FindRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FindRequestCopyWith<_FindRequest> get copyWith => __$FindRequestCopyWithImpl<_FindRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FindRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._photos, _photos)&&(identical(other.link, link) || other.link == link)&&(identical(other.status, status) || other.status == status)&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,id,description,const DeepCollectionEquality().hash(_photos),link,status,product);

@override
String toString() {
  return 'FindRequest(id: $id, description: $description, photos: $photos, link: $link, status: $status, product: $product)';
}


}

/// @nodoc
abstract mixin class _$FindRequestCopyWith<$Res> implements $FindRequestCopyWith<$Res> {
  factory _$FindRequestCopyWith(_FindRequest value, $Res Function(_FindRequest) _then) = __$FindRequestCopyWithImpl;
@override @useResult
$Res call({
 String id, String description, List<String> photos, String? link, FindRequestStatus status, ProductSummary? product
});


@override $ProductSummaryCopyWith<$Res>? get product;

}
/// @nodoc
class __$FindRequestCopyWithImpl<$Res>
    implements _$FindRequestCopyWith<$Res> {
  __$FindRequestCopyWithImpl(this._self, this._then);

  final _FindRequest _self;
  final $Res Function(_FindRequest) _then;

/// Create a copy of FindRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? description = null,Object? photos = null,Object? link = freezed,Object? status = null,Object? product = freezed,}) {
  return _then(_FindRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,photos: null == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FindRequestStatus,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductSummary?,
  ));
}

/// Create a copy of FindRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductSummaryCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductSummaryCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

/// @nodoc
mixin _$ChatMessage {

/// Server id; for a message not yet sent, a local one.
 String get id; bool get isMine; DateTime get sentAt; ChatContent get content; MessageStatus get status;
/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessageCopyWith<ChatMessage> get copyWith => _$ChatMessageCopyWithImpl<ChatMessage>(this as ChatMessage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessage&&(identical(other.id, id) || other.id == id)&&(identical(other.isMine, isMine) || other.isMine == isMine)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.content, content) || other.content == content)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,id,isMine,sentAt,content,status);

@override
String toString() {
  return 'ChatMessage(id: $id, isMine: $isMine, sentAt: $sentAt, content: $content, status: $status)';
}


}

/// @nodoc
abstract mixin class $ChatMessageCopyWith<$Res>  {
  factory $ChatMessageCopyWith(ChatMessage value, $Res Function(ChatMessage) _then) = _$ChatMessageCopyWithImpl;
@useResult
$Res call({
 String id, bool isMine, DateTime sentAt, ChatContent content, MessageStatus status
});


$ChatContentCopyWith<$Res> get content;

}
/// @nodoc
class _$ChatMessageCopyWithImpl<$Res>
    implements $ChatMessageCopyWith<$Res> {
  _$ChatMessageCopyWithImpl(this._self, this._then);

  final ChatMessage _self;
  final $Res Function(ChatMessage) _then;

/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? isMine = null,Object? sentAt = null,Object? content = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,isMine: null == isMine ? _self.isMine : isMine // ignore: cast_nullable_to_non_nullable
as bool,sentAt: null == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as DateTime,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as ChatContent,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MessageStatus,
  ));
}
/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatContentCopyWith<$Res> get content {
  
  return $ChatContentCopyWith<$Res>(_self.content, (value) {
    return _then(_self.copyWith(content: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatMessage].
extension ChatMessagePatterns on ChatMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatMessage value)  $default,){
final _that = this;
switch (_that) {
case _ChatMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatMessage value)?  $default,){
final _that = this;
switch (_that) {
case _ChatMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  bool isMine,  DateTime sentAt,  ChatContent content,  MessageStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatMessage() when $default != null:
return $default(_that.id,_that.isMine,_that.sentAt,_that.content,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  bool isMine,  DateTime sentAt,  ChatContent content,  MessageStatus status)  $default,) {final _that = this;
switch (_that) {
case _ChatMessage():
return $default(_that.id,_that.isMine,_that.sentAt,_that.content,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  bool isMine,  DateTime sentAt,  ChatContent content,  MessageStatus status)?  $default,) {final _that = this;
switch (_that) {
case _ChatMessage() when $default != null:
return $default(_that.id,_that.isMine,_that.sentAt,_that.content,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _ChatMessage implements ChatMessage {
  const _ChatMessage({required this.id, required this.isMine, required this.sentAt, required this.content, this.status = MessageStatus.sent});
  

/// Server id; for a message not yet sent, a local one.
@override final  String id;
@override final  bool isMine;
@override final  DateTime sentAt;
@override final  ChatContent content;
@override@JsonKey() final  MessageStatus status;

/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatMessageCopyWith<_ChatMessage> get copyWith => __$ChatMessageCopyWithImpl<_ChatMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatMessage&&(identical(other.id, id) || other.id == id)&&(identical(other.isMine, isMine) || other.isMine == isMine)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.content, content) || other.content == content)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,id,isMine,sentAt,content,status);

@override
String toString() {
  return 'ChatMessage(id: $id, isMine: $isMine, sentAt: $sentAt, content: $content, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ChatMessageCopyWith<$Res> implements $ChatMessageCopyWith<$Res> {
  factory _$ChatMessageCopyWith(_ChatMessage value, $Res Function(_ChatMessage) _then) = __$ChatMessageCopyWithImpl;
@override @useResult
$Res call({
 String id, bool isMine, DateTime sentAt, ChatContent content, MessageStatus status
});


@override $ChatContentCopyWith<$Res> get content;

}
/// @nodoc
class __$ChatMessageCopyWithImpl<$Res>
    implements _$ChatMessageCopyWith<$Res> {
  __$ChatMessageCopyWithImpl(this._self, this._then);

  final _ChatMessage _self;
  final $Res Function(_ChatMessage) _then;

/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? isMine = null,Object? sentAt = null,Object? content = null,Object? status = null,}) {
  return _then(_ChatMessage(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,isMine: null == isMine ? _self.isMine : isMine // ignore: cast_nullable_to_non_nullable
as bool,sentAt: null == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as DateTime,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as ChatContent,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MessageStatus,
  ));
}

/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatContentCopyWith<$Res> get content {
  
  return $ChatContentCopyWith<$Res>(_self.content, (value) {
    return _then(_self.copyWith(content: value));
  });
}
}

/// @nodoc
mixin _$ChatPage {

 List<ChatMessage> get messages;/// `null`: the start of the conversation.
 String? get olderCursor;
/// Create a copy of ChatPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatPageCopyWith<ChatPage> get copyWith => _$ChatPageCopyWithImpl<ChatPage>(this as ChatPage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatPage&&const DeepCollectionEquality().equals(other.messages, messages)&&(identical(other.olderCursor, olderCursor) || other.olderCursor == olderCursor));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(messages),olderCursor);

@override
String toString() {
  return 'ChatPage(messages: $messages, olderCursor: $olderCursor)';
}


}

/// @nodoc
abstract mixin class $ChatPageCopyWith<$Res>  {
  factory $ChatPageCopyWith(ChatPage value, $Res Function(ChatPage) _then) = _$ChatPageCopyWithImpl;
@useResult
$Res call({
 List<ChatMessage> messages, String? olderCursor
});




}
/// @nodoc
class _$ChatPageCopyWithImpl<$Res>
    implements $ChatPageCopyWith<$Res> {
  _$ChatPageCopyWithImpl(this._self, this._then);

  final ChatPage _self;
  final $Res Function(ChatPage) _then;

/// Create a copy of ChatPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messages = null,Object? olderCursor = freezed,}) {
  return _then(_self.copyWith(
messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,olderCursor: freezed == olderCursor ? _self.olderCursor : olderCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatPage].
extension ChatPagePatterns on ChatPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatPage value)  $default,){
final _that = this;
switch (_that) {
case _ChatPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatPage value)?  $default,){
final _that = this;
switch (_that) {
case _ChatPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ChatMessage> messages,  String? olderCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatPage() when $default != null:
return $default(_that.messages,_that.olderCursor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ChatMessage> messages,  String? olderCursor)  $default,) {final _that = this;
switch (_that) {
case _ChatPage():
return $default(_that.messages,_that.olderCursor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ChatMessage> messages,  String? olderCursor)?  $default,) {final _that = this;
switch (_that) {
case _ChatPage() when $default != null:
return $default(_that.messages,_that.olderCursor);case _:
  return null;

}
}

}

/// @nodoc


class _ChatPage implements ChatPage {
  const _ChatPage({required final  List<ChatMessage> messages, this.olderCursor}): _messages = messages;
  

 final  List<ChatMessage> _messages;
@override List<ChatMessage> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

/// `null`: the start of the conversation.
@override final  String? olderCursor;

/// Create a copy of ChatPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatPageCopyWith<_ChatPage> get copyWith => __$ChatPageCopyWithImpl<_ChatPage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatPage&&const DeepCollectionEquality().equals(other._messages, _messages)&&(identical(other.olderCursor, olderCursor) || other.olderCursor == olderCursor));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages),olderCursor);

@override
String toString() {
  return 'ChatPage(messages: $messages, olderCursor: $olderCursor)';
}


}

/// @nodoc
abstract mixin class _$ChatPageCopyWith<$Res> implements $ChatPageCopyWith<$Res> {
  factory _$ChatPageCopyWith(_ChatPage value, $Res Function(_ChatPage) _then) = __$ChatPageCopyWithImpl;
@override @useResult
$Res call({
 List<ChatMessage> messages, String? olderCursor
});




}
/// @nodoc
class __$ChatPageCopyWithImpl<$Res>
    implements _$ChatPageCopyWith<$Res> {
  __$ChatPageCopyWithImpl(this._self, this._then);

  final _ChatPage _self;
  final $Res Function(_ChatPage) _then;

/// Create a copy of ChatPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messages = null,Object? olderCursor = freezed,}) {
  return _then(_ChatPage(
messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,olderCursor: freezed == olderCursor ? _self.olderCursor : olderCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ChatNews {

 List<ChatMessage> get messages; List<ChatMessage> get requests;
/// Create a copy of ChatNews
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatNewsCopyWith<ChatNews> get copyWith => _$ChatNewsCopyWithImpl<ChatNews>(this as ChatNews, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatNews&&const DeepCollectionEquality().equals(other.messages, messages)&&const DeepCollectionEquality().equals(other.requests, requests));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(messages),const DeepCollectionEquality().hash(requests));

@override
String toString() {
  return 'ChatNews(messages: $messages, requests: $requests)';
}


}

/// @nodoc
abstract mixin class $ChatNewsCopyWith<$Res>  {
  factory $ChatNewsCopyWith(ChatNews value, $Res Function(ChatNews) _then) = _$ChatNewsCopyWithImpl;
@useResult
$Res call({
 List<ChatMessage> messages, List<ChatMessage> requests
});




}
/// @nodoc
class _$ChatNewsCopyWithImpl<$Res>
    implements $ChatNewsCopyWith<$Res> {
  _$ChatNewsCopyWithImpl(this._self, this._then);

  final ChatNews _self;
  final $Res Function(ChatNews) _then;

/// Create a copy of ChatNews
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messages = null,Object? requests = null,}) {
  return _then(_self.copyWith(
messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,requests: null == requests ? _self.requests : requests // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatNews].
extension ChatNewsPatterns on ChatNews {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatNews value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatNews() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatNews value)  $default,){
final _that = this;
switch (_that) {
case _ChatNews():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatNews value)?  $default,){
final _that = this;
switch (_that) {
case _ChatNews() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ChatMessage> messages,  List<ChatMessage> requests)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatNews() when $default != null:
return $default(_that.messages,_that.requests);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ChatMessage> messages,  List<ChatMessage> requests)  $default,) {final _that = this;
switch (_that) {
case _ChatNews():
return $default(_that.messages,_that.requests);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ChatMessage> messages,  List<ChatMessage> requests)?  $default,) {final _that = this;
switch (_that) {
case _ChatNews() when $default != null:
return $default(_that.messages,_that.requests);case _:
  return null;

}
}

}

/// @nodoc


class _ChatNews implements ChatNews {
  const _ChatNews({final  List<ChatMessage> messages = const <ChatMessage>[], final  List<ChatMessage> requests = const <ChatMessage>[]}): _messages = messages,_requests = requests;
  

 final  List<ChatMessage> _messages;
@override@JsonKey() List<ChatMessage> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

 final  List<ChatMessage> _requests;
@override@JsonKey() List<ChatMessage> get requests {
  if (_requests is EqualUnmodifiableListView) return _requests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_requests);
}


/// Create a copy of ChatNews
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatNewsCopyWith<_ChatNews> get copyWith => __$ChatNewsCopyWithImpl<_ChatNews>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatNews&&const DeepCollectionEquality().equals(other._messages, _messages)&&const DeepCollectionEquality().equals(other._requests, _requests));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages),const DeepCollectionEquality().hash(_requests));

@override
String toString() {
  return 'ChatNews(messages: $messages, requests: $requests)';
}


}

/// @nodoc
abstract mixin class _$ChatNewsCopyWith<$Res> implements $ChatNewsCopyWith<$Res> {
  factory _$ChatNewsCopyWith(_ChatNews value, $Res Function(_ChatNews) _then) = __$ChatNewsCopyWithImpl;
@override @useResult
$Res call({
 List<ChatMessage> messages, List<ChatMessage> requests
});




}
/// @nodoc
class __$ChatNewsCopyWithImpl<$Res>
    implements _$ChatNewsCopyWith<$Res> {
  __$ChatNewsCopyWithImpl(this._self, this._then);

  final _ChatNews _self;
  final $Res Function(_ChatNews) _then;

/// Create a copy of ChatNews
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messages = null,Object? requests = null,}) {
  return _then(_ChatNews(
messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,requests: null == requests ? _self._requests : requests // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,
  ));
}


}

/// @nodoc
mixin _$OrderRef {

 String get number; String get status;
/// Create a copy of OrderRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderRefCopyWith<OrderRef> get copyWith => _$OrderRefCopyWithImpl<OrderRef>(this as OrderRef, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderRef&&(identical(other.number, number) || other.number == number)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,number,status);

@override
String toString() {
  return 'OrderRef(number: $number, status: $status)';
}


}

/// @nodoc
abstract mixin class $OrderRefCopyWith<$Res>  {
  factory $OrderRefCopyWith(OrderRef value, $Res Function(OrderRef) _then) = _$OrderRefCopyWithImpl;
@useResult
$Res call({
 String number, String status
});




}
/// @nodoc
class _$OrderRefCopyWithImpl<$Res>
    implements $OrderRefCopyWith<$Res> {
  _$OrderRefCopyWithImpl(this._self, this._then);

  final OrderRef _self;
  final $Res Function(OrderRef) _then;

/// Create a copy of OrderRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? status = null,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderRef].
extension OrderRefPatterns on OrderRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderRef value)  $default,){
final _that = this;
switch (_that) {
case _OrderRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderRef value)?  $default,){
final _that = this;
switch (_that) {
case _OrderRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String number,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderRef() when $default != null:
return $default(_that.number,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String number,  String status)  $default,) {final _that = this;
switch (_that) {
case _OrderRef():
return $default(_that.number,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String number,  String status)?  $default,) {final _that = this;
switch (_that) {
case _OrderRef() when $default != null:
return $default(_that.number,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _OrderRef implements OrderRef {
  const _OrderRef({required this.number, required this.status});
  

@override final  String number;
@override final  String status;

/// Create a copy of OrderRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderRefCopyWith<_OrderRef> get copyWith => __$OrderRefCopyWithImpl<_OrderRef>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderRef&&(identical(other.number, number) || other.number == number)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,number,status);

@override
String toString() {
  return 'OrderRef(number: $number, status: $status)';
}


}

/// @nodoc
abstract mixin class _$OrderRefCopyWith<$Res> implements $OrderRefCopyWith<$Res> {
  factory _$OrderRefCopyWith(_OrderRef value, $Res Function(_OrderRef) _then) = __$OrderRefCopyWithImpl;
@override @useResult
$Res call({
 String number, String status
});




}
/// @nodoc
class __$OrderRefCopyWithImpl<$Res>
    implements _$OrderRefCopyWith<$Res> {
  __$OrderRefCopyWithImpl(this._self, this._then);

  final _OrderRef _self;
  final $Res Function(_OrderRef) _then;

/// Create a copy of OrderRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? status = null,}) {
  return _then(_OrderRef(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ChatDraft {

 String? get text; List<String> get images; String? get orderNumber;
/// Create a copy of ChatDraft
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatDraftCopyWith<ChatDraft> get copyWith => _$ChatDraftCopyWithImpl<ChatDraft>(this as ChatDraft, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatDraft&&(identical(other.text, text) || other.text == text)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber));
}


@override
int get hashCode => Object.hash(runtimeType,text,const DeepCollectionEquality().hash(images),orderNumber);

@override
String toString() {
  return 'ChatDraft(text: $text, images: $images, orderNumber: $orderNumber)';
}


}

/// @nodoc
abstract mixin class $ChatDraftCopyWith<$Res>  {
  factory $ChatDraftCopyWith(ChatDraft value, $Res Function(ChatDraft) _then) = _$ChatDraftCopyWithImpl;
@useResult
$Res call({
 String? text, List<String> images, String? orderNumber
});




}
/// @nodoc
class _$ChatDraftCopyWithImpl<$Res>
    implements $ChatDraftCopyWith<$Res> {
  _$ChatDraftCopyWithImpl(this._self, this._then);

  final ChatDraft _self;
  final $Res Function(ChatDraft) _then;

/// Create a copy of ChatDraft
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = freezed,Object? images = null,Object? orderNumber = freezed,}) {
  return _then(_self.copyWith(
text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,orderNumber: freezed == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatDraft].
extension ChatDraftPatterns on ChatDraft {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatDraft value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatDraft() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatDraft value)  $default,){
final _that = this;
switch (_that) {
case _ChatDraft():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatDraft value)?  $default,){
final _that = this;
switch (_that) {
case _ChatDraft() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? text,  List<String> images,  String? orderNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatDraft() when $default != null:
return $default(_that.text,_that.images,_that.orderNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? text,  List<String> images,  String? orderNumber)  $default,) {final _that = this;
switch (_that) {
case _ChatDraft():
return $default(_that.text,_that.images,_that.orderNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? text,  List<String> images,  String? orderNumber)?  $default,) {final _that = this;
switch (_that) {
case _ChatDraft() when $default != null:
return $default(_that.text,_that.images,_that.orderNumber);case _:
  return null;

}
}

}

/// @nodoc


class _ChatDraft implements ChatDraft {
  const _ChatDraft({this.text, final  List<String> images = const <String>[], this.orderNumber}): _images = images;
  

@override final  String? text;
 final  List<String> _images;
@override@JsonKey() List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override final  String? orderNumber;

/// Create a copy of ChatDraft
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatDraftCopyWith<_ChatDraft> get copyWith => __$ChatDraftCopyWithImpl<_ChatDraft>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatDraft&&(identical(other.text, text) || other.text == text)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber));
}


@override
int get hashCode => Object.hash(runtimeType,text,const DeepCollectionEquality().hash(_images),orderNumber);

@override
String toString() {
  return 'ChatDraft(text: $text, images: $images, orderNumber: $orderNumber)';
}


}

/// @nodoc
abstract mixin class _$ChatDraftCopyWith<$Res> implements $ChatDraftCopyWith<$Res> {
  factory _$ChatDraftCopyWith(_ChatDraft value, $Res Function(_ChatDraft) _then) = __$ChatDraftCopyWithImpl;
@override @useResult
$Res call({
 String? text, List<String> images, String? orderNumber
});




}
/// @nodoc
class __$ChatDraftCopyWithImpl<$Res>
    implements _$ChatDraftCopyWith<$Res> {
  __$ChatDraftCopyWithImpl(this._self, this._then);

  final _ChatDraft _self;
  final $Res Function(_ChatDraft) _then;

/// Create a copy of ChatDraft
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = freezed,Object? images = null,Object? orderNumber = freezed,}) {
  return _then(_ChatDraft(
text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,orderNumber: freezed == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
