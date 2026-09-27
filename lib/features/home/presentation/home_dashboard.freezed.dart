// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_dashboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PortfolioSlice {

 AssetType get type; double get value; double get share;
/// Create a copy of PortfolioSlice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PortfolioSliceCopyWith<PortfolioSlice> get copyWith => _$PortfolioSliceCopyWithImpl<PortfolioSlice>(this as PortfolioSlice, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PortfolioSlice&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value)&&(identical(other.share, share) || other.share == share));
}


@override
int get hashCode => Object.hash(runtimeType,type,value,share);

@override
String toString() {
  return 'PortfolioSlice(type: $type, value: $value, share: $share)';
}


}

/// @nodoc
abstract mixin class $PortfolioSliceCopyWith<$Res>  {
  factory $PortfolioSliceCopyWith(PortfolioSlice value, $Res Function(PortfolioSlice) _then) = _$PortfolioSliceCopyWithImpl;
@useResult
$Res call({
 AssetType type, double value, double share
});




}
/// @nodoc
class _$PortfolioSliceCopyWithImpl<$Res>
    implements $PortfolioSliceCopyWith<$Res> {
  _$PortfolioSliceCopyWithImpl(this._self, this._then);

  final PortfolioSlice _self;
  final $Res Function(PortfolioSlice) _then;

/// Create a copy of PortfolioSlice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? value = null,Object? share = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AssetType,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,share: null == share ? _self.share : share // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [PortfolioSlice].
extension PortfolioSlicePatterns on PortfolioSlice {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PortfolioSlice value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PortfolioSlice() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PortfolioSlice value)  $default,){
final _that = this;
switch (_that) {
case _PortfolioSlice():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PortfolioSlice value)?  $default,){
final _that = this;
switch (_that) {
case _PortfolioSlice() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AssetType type,  double value,  double share)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PortfolioSlice() when $default != null:
return $default(_that.type,_that.value,_that.share);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AssetType type,  double value,  double share)  $default,) {final _that = this;
switch (_that) {
case _PortfolioSlice():
return $default(_that.type,_that.value,_that.share);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AssetType type,  double value,  double share)?  $default,) {final _that = this;
switch (_that) {
case _PortfolioSlice() when $default != null:
return $default(_that.type,_that.value,_that.share);case _:
  return null;

}
}

}

/// @nodoc


class _PortfolioSlice implements PortfolioSlice {
  const _PortfolioSlice({required this.type, required this.value, required this.share});
  

@override final  AssetType type;
@override final  double value;
@override final  double share;

/// Create a copy of PortfolioSlice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PortfolioSliceCopyWith<_PortfolioSlice> get copyWith => __$PortfolioSliceCopyWithImpl<_PortfolioSlice>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PortfolioSlice&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value)&&(identical(other.share, share) || other.share == share));
}


@override
int get hashCode => Object.hash(runtimeType,type,value,share);

@override
String toString() {
  return 'PortfolioSlice(type: $type, value: $value, share: $share)';
}


}

/// @nodoc
abstract mixin class _$PortfolioSliceCopyWith<$Res> implements $PortfolioSliceCopyWith<$Res> {
  factory _$PortfolioSliceCopyWith(_PortfolioSlice value, $Res Function(_PortfolioSlice) _then) = __$PortfolioSliceCopyWithImpl;
@override @useResult
$Res call({
 AssetType type, double value, double share
});




}
/// @nodoc
class __$PortfolioSliceCopyWithImpl<$Res>
    implements _$PortfolioSliceCopyWith<$Res> {
  __$PortfolioSliceCopyWithImpl(this._self, this._then);

  final _PortfolioSlice _self;
  final $Res Function(_PortfolioSlice) _then;

/// Create a copy of PortfolioSlice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? value = null,Object? share = null,}) {
  return _then(_PortfolioSlice(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AssetType,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,share: null == share ? _self.share : share // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$HomeDashboard {

 double get capital; double get capitalChangePercent; Goal? get primaryGoal; List<PortfolioSlice> get portfolio; List<Account> get accounts;
/// Create a copy of HomeDashboard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeDashboardCopyWith<HomeDashboard> get copyWith => _$HomeDashboardCopyWithImpl<HomeDashboard>(this as HomeDashboard, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeDashboard&&(identical(other.capital, capital) || other.capital == capital)&&(identical(other.capitalChangePercent, capitalChangePercent) || other.capitalChangePercent == capitalChangePercent)&&(identical(other.primaryGoal, primaryGoal) || other.primaryGoal == primaryGoal)&&const DeepCollectionEquality().equals(other.portfolio, portfolio)&&const DeepCollectionEquality().equals(other.accounts, accounts));
}


@override
int get hashCode => Object.hash(runtimeType,capital,capitalChangePercent,primaryGoal,const DeepCollectionEquality().hash(portfolio),const DeepCollectionEquality().hash(accounts));

@override
String toString() {
  return 'HomeDashboard(capital: $capital, capitalChangePercent: $capitalChangePercent, primaryGoal: $primaryGoal, portfolio: $portfolio, accounts: $accounts)';
}


}

/// @nodoc
abstract mixin class $HomeDashboardCopyWith<$Res>  {
  factory $HomeDashboardCopyWith(HomeDashboard value, $Res Function(HomeDashboard) _then) = _$HomeDashboardCopyWithImpl;
@useResult
$Res call({
 double capital, double capitalChangePercent, Goal? primaryGoal, List<PortfolioSlice> portfolio, List<Account> accounts
});


$GoalCopyWith<$Res>? get primaryGoal;

}
/// @nodoc
class _$HomeDashboardCopyWithImpl<$Res>
    implements $HomeDashboardCopyWith<$Res> {
  _$HomeDashboardCopyWithImpl(this._self, this._then);

  final HomeDashboard _self;
  final $Res Function(HomeDashboard) _then;

/// Create a copy of HomeDashboard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? capital = null,Object? capitalChangePercent = null,Object? primaryGoal = freezed,Object? portfolio = null,Object? accounts = null,}) {
  return _then(_self.copyWith(
capital: null == capital ? _self.capital : capital // ignore: cast_nullable_to_non_nullable
as double,capitalChangePercent: null == capitalChangePercent ? _self.capitalChangePercent : capitalChangePercent // ignore: cast_nullable_to_non_nullable
as double,primaryGoal: freezed == primaryGoal ? _self.primaryGoal : primaryGoal // ignore: cast_nullable_to_non_nullable
as Goal?,portfolio: null == portfolio ? _self.portfolio : portfolio // ignore: cast_nullable_to_non_nullable
as List<PortfolioSlice>,accounts: null == accounts ? _self.accounts : accounts // ignore: cast_nullable_to_non_nullable
as List<Account>,
  ));
}
/// Create a copy of HomeDashboard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GoalCopyWith<$Res>? get primaryGoal {
    if (_self.primaryGoal == null) {
    return null;
  }

  return $GoalCopyWith<$Res>(_self.primaryGoal!, (value) {
    return _then(_self.copyWith(primaryGoal: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeDashboard].
extension HomeDashboardPatterns on HomeDashboard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeDashboard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeDashboard() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeDashboard value)  $default,){
final _that = this;
switch (_that) {
case _HomeDashboard():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeDashboard value)?  $default,){
final _that = this;
switch (_that) {
case _HomeDashboard() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double capital,  double capitalChangePercent,  Goal? primaryGoal,  List<PortfolioSlice> portfolio,  List<Account> accounts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeDashboard() when $default != null:
return $default(_that.capital,_that.capitalChangePercent,_that.primaryGoal,_that.portfolio,_that.accounts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double capital,  double capitalChangePercent,  Goal? primaryGoal,  List<PortfolioSlice> portfolio,  List<Account> accounts)  $default,) {final _that = this;
switch (_that) {
case _HomeDashboard():
return $default(_that.capital,_that.capitalChangePercent,_that.primaryGoal,_that.portfolio,_that.accounts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double capital,  double capitalChangePercent,  Goal? primaryGoal,  List<PortfolioSlice> portfolio,  List<Account> accounts)?  $default,) {final _that = this;
switch (_that) {
case _HomeDashboard() when $default != null:
return $default(_that.capital,_that.capitalChangePercent,_that.primaryGoal,_that.portfolio,_that.accounts);case _:
  return null;

}
}

}

/// @nodoc


class _HomeDashboard implements HomeDashboard {
  const _HomeDashboard({required this.capital, required this.capitalChangePercent, required this.primaryGoal, required final  List<PortfolioSlice> portfolio, required final  List<Account> accounts}): _portfolio = portfolio,_accounts = accounts;
  

@override final  double capital;
@override final  double capitalChangePercent;
@override final  Goal? primaryGoal;
 final  List<PortfolioSlice> _portfolio;
@override List<PortfolioSlice> get portfolio {
  if (_portfolio is EqualUnmodifiableListView) return _portfolio;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_portfolio);
}

 final  List<Account> _accounts;
@override List<Account> get accounts {
  if (_accounts is EqualUnmodifiableListView) return _accounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_accounts);
}


/// Create a copy of HomeDashboard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeDashboardCopyWith<_HomeDashboard> get copyWith => __$HomeDashboardCopyWithImpl<_HomeDashboard>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeDashboard&&(identical(other.capital, capital) || other.capital == capital)&&(identical(other.capitalChangePercent, capitalChangePercent) || other.capitalChangePercent == capitalChangePercent)&&(identical(other.primaryGoal, primaryGoal) || other.primaryGoal == primaryGoal)&&const DeepCollectionEquality().equals(other._portfolio, _portfolio)&&const DeepCollectionEquality().equals(other._accounts, _accounts));
}


@override
int get hashCode => Object.hash(runtimeType,capital,capitalChangePercent,primaryGoal,const DeepCollectionEquality().hash(_portfolio),const DeepCollectionEquality().hash(_accounts));

@override
String toString() {
  return 'HomeDashboard(capital: $capital, capitalChangePercent: $capitalChangePercent, primaryGoal: $primaryGoal, portfolio: $portfolio, accounts: $accounts)';
}


}

/// @nodoc
abstract mixin class _$HomeDashboardCopyWith<$Res> implements $HomeDashboardCopyWith<$Res> {
  factory _$HomeDashboardCopyWith(_HomeDashboard value, $Res Function(_HomeDashboard) _then) = __$HomeDashboardCopyWithImpl;
@override @useResult
$Res call({
 double capital, double capitalChangePercent, Goal? primaryGoal, List<PortfolioSlice> portfolio, List<Account> accounts
});


@override $GoalCopyWith<$Res>? get primaryGoal;

}
/// @nodoc
class __$HomeDashboardCopyWithImpl<$Res>
    implements _$HomeDashboardCopyWith<$Res> {
  __$HomeDashboardCopyWithImpl(this._self, this._then);

  final _HomeDashboard _self;
  final $Res Function(_HomeDashboard) _then;

/// Create a copy of HomeDashboard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? capital = null,Object? capitalChangePercent = null,Object? primaryGoal = freezed,Object? portfolio = null,Object? accounts = null,}) {
  return _then(_HomeDashboard(
capital: null == capital ? _self.capital : capital // ignore: cast_nullable_to_non_nullable
as double,capitalChangePercent: null == capitalChangePercent ? _self.capitalChangePercent : capitalChangePercent // ignore: cast_nullable_to_non_nullable
as double,primaryGoal: freezed == primaryGoal ? _self.primaryGoal : primaryGoal // ignore: cast_nullable_to_non_nullable
as Goal?,portfolio: null == portfolio ? _self._portfolio : portfolio // ignore: cast_nullable_to_non_nullable
as List<PortfolioSlice>,accounts: null == accounts ? _self._accounts : accounts // ignore: cast_nullable_to_non_nullable
as List<Account>,
  ));
}

/// Create a copy of HomeDashboard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GoalCopyWith<$Res>? get primaryGoal {
    if (_self.primaryGoal == null) {
    return null;
  }

  return $GoalCopyWith<$Res>(_self.primaryGoal!, (value) {
    return _then(_self.copyWith(primaryGoal: value));
  });
}
}

// dart format on
