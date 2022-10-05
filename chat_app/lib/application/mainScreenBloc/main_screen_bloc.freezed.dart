// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) getUserInfo,
    required TResult Function(String name) serachUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String uid)? getUserInfo,
    TResult Function(String name)? serachUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? getUserInfo,
    TResult Function(String name)? serachUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventGetUserInfo value) getUserInfo,
    required TResult Function(_EventSearchUser value) serachUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventGetUserInfo value)? getUserInfo,
    TResult Function(_EventSearchUser value)? serachUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventGetUserInfo value)? getUserInfo,
    TResult Function(_EventSearchUser value)? serachUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainScreenEventCopyWith<$Res> {
  factory $MainScreenEventCopyWith(
          MainScreenEvent value, $Res Function(MainScreenEvent) then) =
      _$MainScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainScreenEventCopyWithImpl<$Res>
    implements $MainScreenEventCopyWith<$Res> {
  _$MainScreenEventCopyWithImpl(this._value, this._then);

  final MainScreenEvent _value;
  // ignore: unused_field
  final $Res Function(MainScreenEvent) _then;
}

/// @nodoc
abstract class _$$_EventGetUserInfoCopyWith<$Res> {
  factory _$$_EventGetUserInfoCopyWith(
          _$_EventGetUserInfo value, $Res Function(_$_EventGetUserInfo) then) =
      __$$_EventGetUserInfoCopyWithImpl<$Res>;
  $Res call({String uid});
}

/// @nodoc
class __$$_EventGetUserInfoCopyWithImpl<$Res>
    extends _$MainScreenEventCopyWithImpl<$Res>
    implements _$$_EventGetUserInfoCopyWith<$Res> {
  __$$_EventGetUserInfoCopyWithImpl(
      _$_EventGetUserInfo _value, $Res Function(_$_EventGetUserInfo) _then)
      : super(_value, (v) => _then(v as _$_EventGetUserInfo));

  @override
  _$_EventGetUserInfo get _value => super._value as _$_EventGetUserInfo;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_$_EventGetUserInfo(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventGetUserInfo implements _EventGetUserInfo {
  const _$_EventGetUserInfo({required this.uid});

  @override
  final String uid;

  @override
  String toString() {
    return 'MainScreenEvent.getUserInfo(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventGetUserInfo &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  _$$_EventGetUserInfoCopyWith<_$_EventGetUserInfo> get copyWith =>
      __$$_EventGetUserInfoCopyWithImpl<_$_EventGetUserInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) getUserInfo,
    required TResult Function(String name) serachUser,
  }) {
    return getUserInfo(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String uid)? getUserInfo,
    TResult Function(String name)? serachUser,
  }) {
    return getUserInfo?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? getUserInfo,
    TResult Function(String name)? serachUser,
    required TResult orElse(),
  }) {
    if (getUserInfo != null) {
      return getUserInfo(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventGetUserInfo value) getUserInfo,
    required TResult Function(_EventSearchUser value) serachUser,
  }) {
    return getUserInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventGetUserInfo value)? getUserInfo,
    TResult Function(_EventSearchUser value)? serachUser,
  }) {
    return getUserInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventGetUserInfo value)? getUserInfo,
    TResult Function(_EventSearchUser value)? serachUser,
    required TResult orElse(),
  }) {
    if (getUserInfo != null) {
      return getUserInfo(this);
    }
    return orElse();
  }
}

abstract class _EventGetUserInfo implements MainScreenEvent {
  const factory _EventGetUserInfo({required final String uid}) =
      _$_EventGetUserInfo;

  String get uid;
  @JsonKey(ignore: true)
  _$$_EventGetUserInfoCopyWith<_$_EventGetUserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventSearchUserCopyWith<$Res> {
  factory _$$_EventSearchUserCopyWith(
          _$_EventSearchUser value, $Res Function(_$_EventSearchUser) then) =
      __$$_EventSearchUserCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$$_EventSearchUserCopyWithImpl<$Res>
    extends _$MainScreenEventCopyWithImpl<$Res>
    implements _$$_EventSearchUserCopyWith<$Res> {
  __$$_EventSearchUserCopyWithImpl(
      _$_EventSearchUser _value, $Res Function(_$_EventSearchUser) _then)
      : super(_value, (v) => _then(v as _$_EventSearchUser));

  @override
  _$_EventSearchUser get _value => super._value as _$_EventSearchUser;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_EventSearchUser(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventSearchUser implements _EventSearchUser {
  const _$_EventSearchUser({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'MainScreenEvent.serachUser(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventSearchUser &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_EventSearchUserCopyWith<_$_EventSearchUser> get copyWith =>
      __$$_EventSearchUserCopyWithImpl<_$_EventSearchUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) getUserInfo,
    required TResult Function(String name) serachUser,
  }) {
    return serachUser(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String uid)? getUserInfo,
    TResult Function(String name)? serachUser,
  }) {
    return serachUser?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? getUserInfo,
    TResult Function(String name)? serachUser,
    required TResult orElse(),
  }) {
    if (serachUser != null) {
      return serachUser(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventGetUserInfo value) getUserInfo,
    required TResult Function(_EventSearchUser value) serachUser,
  }) {
    return serachUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventGetUserInfo value)? getUserInfo,
    TResult Function(_EventSearchUser value)? serachUser,
  }) {
    return serachUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventGetUserInfo value)? getUserInfo,
    TResult Function(_EventSearchUser value)? serachUser,
    required TResult orElse(),
  }) {
    if (serachUser != null) {
      return serachUser(this);
    }
    return orElse();
  }
}

abstract class _EventSearchUser implements MainScreenEvent {
  const factory _EventSearchUser({required final String name}) =
      _$_EventSearchUser;

  String get name;
  @JsonKey(ignore: true)
  _$$_EventSearchUserCopyWith<_$_EventSearchUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainScreenState {
  Option<Either<Failure, UserModel>> get optionUserSucessOrFailure =>
      throw _privateConstructorUsedError;
  UserModel get userModel => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<UserModel> get lUserModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainScreenStateCopyWith<MainScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainScreenStateCopyWith<$Res> {
  factory $MainScreenStateCopyWith(
          MainScreenState value, $Res Function(MainScreenState) then) =
      _$MainScreenStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<Failure, UserModel>> optionUserSucessOrFailure,
      UserModel userModel,
      bool isLoading,
      List<UserModel> lUserModel});
}

/// @nodoc
class _$MainScreenStateCopyWithImpl<$Res>
    implements $MainScreenStateCopyWith<$Res> {
  _$MainScreenStateCopyWithImpl(this._value, this._then);

  final MainScreenState _value;
  // ignore: unused_field
  final $Res Function(MainScreenState) _then;

  @override
  $Res call({
    Object? optionUserSucessOrFailure = freezed,
    Object? userModel = freezed,
    Object? isLoading = freezed,
    Object? lUserModel = freezed,
  }) {
    return _then(_value.copyWith(
      optionUserSucessOrFailure: optionUserSucessOrFailure == freezed
          ? _value.optionUserSucessOrFailure
          : optionUserSucessOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, UserModel>>,
      userModel: userModel == freezed
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      lUserModel: lUserModel == freezed
          ? _value.lUserModel
          : lUserModel // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_MainScreenStateCopyWith<$Res>
    implements $MainScreenStateCopyWith<$Res> {
  factory _$$_MainScreenStateCopyWith(
          _$_MainScreenState value, $Res Function(_$_MainScreenState) then) =
      __$$_MainScreenStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<Failure, UserModel>> optionUserSucessOrFailure,
      UserModel userModel,
      bool isLoading,
      List<UserModel> lUserModel});
}

/// @nodoc
class __$$_MainScreenStateCopyWithImpl<$Res>
    extends _$MainScreenStateCopyWithImpl<$Res>
    implements _$$_MainScreenStateCopyWith<$Res> {
  __$$_MainScreenStateCopyWithImpl(
      _$_MainScreenState _value, $Res Function(_$_MainScreenState) _then)
      : super(_value, (v) => _then(v as _$_MainScreenState));

  @override
  _$_MainScreenState get _value => super._value as _$_MainScreenState;

  @override
  $Res call({
    Object? optionUserSucessOrFailure = freezed,
    Object? userModel = freezed,
    Object? isLoading = freezed,
    Object? lUserModel = freezed,
  }) {
    return _then(_$_MainScreenState(
      optionUserSucessOrFailure: optionUserSucessOrFailure == freezed
          ? _value.optionUserSucessOrFailure
          : optionUserSucessOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, UserModel>>,
      userModel: userModel == freezed
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      lUserModel: lUserModel == freezed
          ? _value._lUserModel
          : lUserModel // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ));
  }
}

/// @nodoc

class _$_MainScreenState implements _MainScreenState {
  const _$_MainScreenState(
      {required this.optionUserSucessOrFailure,
      required this.userModel,
      required this.isLoading,
      required final List<UserModel> lUserModel})
      : _lUserModel = lUserModel;

  @override
  final Option<Either<Failure, UserModel>> optionUserSucessOrFailure;
  @override
  final UserModel userModel;
  @override
  final bool isLoading;
  final List<UserModel> _lUserModel;
  @override
  List<UserModel> get lUserModel {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lUserModel);
  }

  @override
  String toString() {
    return 'MainScreenState(optionUserSucessOrFailure: $optionUserSucessOrFailure, userModel: $userModel, isLoading: $isLoading, lUserModel: $lUserModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainScreenState &&
            const DeepCollectionEquality().equals(
                other.optionUserSucessOrFailure, optionUserSucessOrFailure) &&
            const DeepCollectionEquality().equals(other.userModel, userModel) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other._lUserModel, _lUserModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(optionUserSucessOrFailure),
      const DeepCollectionEquality().hash(userModel),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_lUserModel));

  @JsonKey(ignore: true)
  @override
  _$$_MainScreenStateCopyWith<_$_MainScreenState> get copyWith =>
      __$$_MainScreenStateCopyWithImpl<_$_MainScreenState>(this, _$identity);
}

abstract class _MainScreenState implements MainScreenState {
  const factory _MainScreenState(
      {required final Option<Either<Failure, UserModel>>
          optionUserSucessOrFailure,
      required final UserModel userModel,
      required final bool isLoading,
      required final List<UserModel> lUserModel}) = _$_MainScreenState;

  @override
  Option<Either<Failure, UserModel>> get optionUserSucessOrFailure;
  @override
  UserModel get userModel;
  @override
  bool get isLoading;
  @override
  List<UserModel> get lUserModel;
  @override
  @JsonKey(ignore: true)
  _$$_MainScreenStateCopyWith<_$_MainScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
