// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Asset {

 String get id; String get name; AssetType get type; double get value; double get changePercent; int? get color; String? get image;
/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssetCopyWith<Asset> get copyWith => _$AssetCopyWithImpl<Asset>(this as Asset, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Asset&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value)&&(identical(other.changePercent, changePercent) || other.changePercent == changePercent)&&(identical(other.color, color) || other.color == color)&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,type,value,changePercent,color,image);

@override
String toString() {
  return 'Asset(id: $id, name: $name, type: $type, value: $value, changePercent: $changePercent, color: $color, image: $image)';
}


}

/// @nodoc
abstract mixin class $AssetCopyWith<$Res>  {
  factory $AssetCopyWith(Asset value, $Res Function(Asset) _then) = _$AssetCopyWithImpl;
@useResult
$Res call({
 String id, String name, AssetType type, double value, double changePercent, int? color, String? image
});




}
/// @nodoc
class _$AssetCopyWithImpl<$Res>
    implements $AssetCopyWith<$Res> {
  _$AssetCopyWithImpl(this._self, this._then);

  final Asset _self;
  final $Res Function(Asset) _then;

/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? type = null,Object? value = null,Object? changePercent = null,Object? color = freezed,Object? image = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AssetType,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,changePercent: null == changePercent ? _self.changePercent : changePercent // ignore: cast_nullable_to_non_nullable
as double,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as int?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Asset].
extension AssetPatterns on Asset {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Asset value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Asset() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Asset value)  $default,){
final _that = this;
switch (_that) {
case _Asset():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Asset value)?  $default,){
final _that = this;
switch (_that) {
case _Asset() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  AssetType type,  double value,  double changePercent,  int? color,  String? image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Asset() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.value,_that.changePercent,_that.color,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  AssetType type,  double value,  double changePercent,  int? color,  String? image)  $default,) {final _that = this;
switch (_that) {
case _Asset():
return $default(_that.id,_that.name,_that.type,_that.value,_that.changePercent,_that.color,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  AssetType type,  double value,  double changePercent,  int? color,  String? image)?  $default,) {final _that = this;
switch (_that) {
case _Asset() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.value,_that.changePercent,_that.color,_that.image);case _:
  return null;

}
}

}

/// @nodoc


class _Asset implements Asset {
  const _Asset({required this.id, required this.name, required this.type, required this.value, required this.changePercent, this.color, this.image});
  

@override final  String id;
@override final  String name;
@override final  AssetType type;
@override final  double value;
@override final  double changePercent;
@override final  int? color;
@override final  String? image;

/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssetCopyWith<_Asset> get copyWith => __$AssetCopyWithImpl<_Asset>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Asset&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value)&&(identical(other.changePercent, changePercent) || other.changePercent == changePercent)&&(identical(other.color, color) || other.color == color)&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,type,value,changePercent,color,image);

@override
String toString() {
  return 'Asset(id: $id, name: $name, type: $type, value: $value, changePercent: $changePercent, color: $color, image: $image)';
}


}

/// @nodoc
abstract mixin class _$AssetCopyWith<$Res> implements $AssetCopyWith<$Res> {
  factory _$AssetCopyWith(_Asset value, $Res Function(_Asset) _then) = __$AssetCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, AssetType type, double value, double changePercent, int? color, String? image
});




}
/// @nodoc
class __$AssetCopyWithImpl<$Res>
    implements _$AssetCopyWith<$Res> {
  __$AssetCopyWithImpl(this._self, this._then);

  final _Asset _self;
  final $Res Function(_Asset) _then;

/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? type = null,Object? value = null,Object? changePercent = null,Object? color = freezed,Object? image = freezed,}) {
  return _then(_Asset(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AssetType,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,changePercent: null == changePercent ? _self.changePercent : changePercent // ignore: cast_nullable_to_non_nullable
as double,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as int?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$NewAsset {

 String get name; AssetType get type; double get value; double get changePercent; int? get color; String? get image;
/// Create a copy of NewAsset
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewAssetCopyWith<NewAsset> get copyWith => _$NewAssetCopyWithImpl<NewAsset>(this as NewAsset, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewAsset&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value)&&(identical(other.changePercent, changePercent) || other.changePercent == changePercent)&&(identical(other.color, color) || other.color == color)&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,name,type,value,changePercent,color,image);

@override
String toString() {
  return 'NewAsset(name: $name, type: $type, value: $value, changePercent: $changePercent, color: $color, image: $image)';
}


}

/// @nodoc
abstract mixin class $NewAssetCopyWith<$Res>  {
  factory $NewAssetCopyWith(NewAsset value, $Res Function(NewAsset) _then) = _$NewAssetCopyWithImpl;
@useResult
$Res call({
 String name, AssetType type, double value, double changePercent, int? color, String? image
});




}
/// @nodoc
class _$NewAssetCopyWithImpl<$Res>
    implements $NewAssetCopyWith<$Res> {
  _$NewAssetCopyWithImpl(this._self, this._then);

  final NewAsset _self;
  final $Res Function(NewAsset) _then;

/// Create a copy of NewAsset
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? type = null,Object? value = null,Object? changePercent = null,Object? color = freezed,Object? image = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AssetType,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,changePercent: null == changePercent ? _self.changePercent : changePercent // ignore: cast_nullable_to_non_nullable
as double,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as int?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NewAsset].
extension NewAssetPatterns on NewAsset {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NewAsset value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NewAsset() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NewAsset value)  $default,){
final _that = this;
switch (_that) {
case _NewAsset():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NewAsset value)?  $default,){
final _that = this;
switch (_that) {
case _NewAsset() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  AssetType type,  double value,  double changePercent,  int? color,  String? image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NewAsset() when $default != null:
return $default(_that.name,_that.type,_that.value,_that.changePercent,_that.color,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  AssetType type,  double value,  double changePercent,  int? color,  String? image)  $default,) {final _that = this;
switch (_that) {
case _NewAsset():
return $default(_that.name,_that.type,_that.value,_that.changePercent,_that.color,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  AssetType type,  double value,  double changePercent,  int? color,  String? image)?  $default,) {final _that = this;
switch (_that) {
case _NewAsset() when $default != null:
return $default(_that.name,_that.type,_that.value,_that.changePercent,_that.color,_that.image);case _:
  return null;

}
}

}

/// @nodoc


class _NewAsset implements NewAsset {
  const _NewAsset({required this.name, required this.type, required this.value, required this.changePercent, this.color, this.image});
  

@override final  String name;
@override final  AssetType type;
@override final  double value;
@override final  double changePercent;
@override final  int? color;
@override final  String? image;

/// Create a copy of NewAsset
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewAssetCopyWith<_NewAsset> get copyWith => __$NewAssetCopyWithImpl<_NewAsset>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewAsset&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value)&&(identical(other.changePercent, changePercent) || other.changePercent == changePercent)&&(identical(other.color, color) || other.color == color)&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,name,type,value,changePercent,color,image);

@override
String toString() {
  return 'NewAsset(name: $name, type: $type, value: $value, changePercent: $changePercent, color: $color, image: $image)';
}


}

/// @nodoc
abstract mixin class _$NewAssetCopyWith<$Res> implements $NewAssetCopyWith<$Res> {
  factory _$NewAssetCopyWith(_NewAsset value, $Res Function(_NewAsset) _then) = __$NewAssetCopyWithImpl;
@override @useResult
$Res call({
 String name, AssetType type, double value, double changePercent, int? color, String? image
});




}
/// @nodoc
class __$NewAssetCopyWithImpl<$Res>
    implements _$NewAssetCopyWith<$Res> {
  __$NewAssetCopyWithImpl(this._self, this._then);

  final _NewAsset _self;
  final $Res Function(_NewAsset) _then;

/// Create a copy of NewAsset
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? type = null,Object? value = null,Object? changePercent = null,Object? color = freezed,Object? image = freezed,}) {
  return _then(_NewAsset(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AssetType,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,changePercent: null == changePercent ? _self.changePercent : changePercent // ignore: cast_nullable_to_non_nullable
as double,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as int?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
