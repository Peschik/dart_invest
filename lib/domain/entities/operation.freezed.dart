// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'operation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Operation {

 String get id; OperationType get type; int get amount; DateTime get date; String? get assetId; String? get description;
/// Create a copy of Operation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OperationCopyWith<Operation> get copyWith => _$OperationCopyWithImpl<Operation>(this as Operation, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Operation&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.date, date) || other.date == date)&&(identical(other.assetId, assetId) || other.assetId == assetId)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,amount,date,assetId,description);

@override
String toString() {
  return 'Operation(id: $id, type: $type, amount: $amount, date: $date, assetId: $assetId, description: $description)';
}


}

/// @nodoc
abstract mixin class $OperationCopyWith<$Res>  {
  factory $OperationCopyWith(Operation value, $Res Function(Operation) _then) = _$OperationCopyWithImpl;
@useResult
$Res call({
 String id, OperationType type, int amount, DateTime date, String? assetId, String? description
});




}
/// @nodoc
class _$OperationCopyWithImpl<$Res>
    implements $OperationCopyWith<$Res> {
  _$OperationCopyWithImpl(this._self, this._then);

  final Operation _self;
  final $Res Function(Operation) _then;

/// Create a copy of Operation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? amount = null,Object? date = null,Object? assetId = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as OperationType,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,assetId: freezed == assetId ? _self.assetId : assetId // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Operation].
extension OperationPatterns on Operation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Operation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Operation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Operation value)  $default,){
final _that = this;
switch (_that) {
case _Operation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Operation value)?  $default,){
final _that = this;
switch (_that) {
case _Operation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  OperationType type,  int amount,  DateTime date,  String? assetId,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Operation() when $default != null:
return $default(_that.id,_that.type,_that.amount,_that.date,_that.assetId,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  OperationType type,  int amount,  DateTime date,  String? assetId,  String? description)  $default,) {final _that = this;
switch (_that) {
case _Operation():
return $default(_that.id,_that.type,_that.amount,_that.date,_that.assetId,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  OperationType type,  int amount,  DateTime date,  String? assetId,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _Operation() when $default != null:
return $default(_that.id,_that.type,_that.amount,_that.date,_that.assetId,_that.description);case _:
  return null;

}
}

}

/// @nodoc


class _Operation implements Operation {
  const _Operation({required this.id, required this.type, required this.amount, required this.date, this.assetId, this.description});
  

@override final  String id;
@override final  OperationType type;
@override final  int amount;
@override final  DateTime date;
@override final  String? assetId;
@override final  String? description;

/// Create a copy of Operation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OperationCopyWith<_Operation> get copyWith => __$OperationCopyWithImpl<_Operation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Operation&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.date, date) || other.date == date)&&(identical(other.assetId, assetId) || other.assetId == assetId)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,amount,date,assetId,description);

@override
String toString() {
  return 'Operation(id: $id, type: $type, amount: $amount, date: $date, assetId: $assetId, description: $description)';
}


}

/// @nodoc
abstract mixin class _$OperationCopyWith<$Res> implements $OperationCopyWith<$Res> {
  factory _$OperationCopyWith(_Operation value, $Res Function(_Operation) _then) = __$OperationCopyWithImpl;
@override @useResult
$Res call({
 String id, OperationType type, int amount, DateTime date, String? assetId, String? description
});




}
/// @nodoc
class __$OperationCopyWithImpl<$Res>
    implements _$OperationCopyWith<$Res> {
  __$OperationCopyWithImpl(this._self, this._then);

  final _Operation _self;
  final $Res Function(_Operation) _then;

/// Create a copy of Operation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? amount = null,Object? date = null,Object? assetId = freezed,Object? description = freezed,}) {
  return _then(_Operation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as OperationType,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,assetId: freezed == assetId ? _self.assetId : assetId // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
