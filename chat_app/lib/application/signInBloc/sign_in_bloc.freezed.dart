// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logIn,
    required TResult Function() prefGetUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? prefGetUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? prefGetUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventLogIn value) logIn,
    required TResult Function(_EventPrefGetUser value) prefGetUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventLogIn value)? logIn,
    TResult Function(_EventPrefGetUser value)? prefGetUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventLogIn value)? logIn,
    TResult Function(_EventPrefGetUser value)? prefGetUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res> implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  final SignInEvent _value;
  // ignore: unused_field
  final $Res Function(SignInEvent) _then;
}

/// @nodoc
abstract class _$$_EventLogInCopyWith<$Res> {
  factory _$$_EventLogInCopyWith(
          _$_EventLogIn value, $Res Function(_$_EventLogIn) then) =
      __$$_EventLogInCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class __$$_EventLogInCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements _$$_EventLogInCopyWith<$Res> {
  __$$_EventLogInCopyWithImpl(
      _$_EventLogIn _value, $Res Function(_$_EventLogIn) _then)
      : super(_value, (v) => _then(v as _$_EventLogIn));

  @override
  _$_EventLogIn get _value => super._value as _$_EventLogIn;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_EventLogIn(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventLogIn implements _EventLogIn {
  const _$_EventLogIn({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInEvent.logIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventLogIn &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_EventLogInCopyWith<_$_EventLogIn> get copyWith =>
      __$$_EventLogInCopyWithImpl<_$_EventLogIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logIn,
    required TResult Function() prefGetUser,
  }) {
    return logIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? prefGetUser,
  }) {
    return logIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? prefGetUser,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventLogIn value) logIn,
    required TResult Function(_EventPrefGetUser value) prefGetUser,
  }) {
    return logIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventLogIn value)? logIn,
    TResult Function(_EventPrefGetUser value)? prefGetUser,
  }) {
    return logIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventLogIn value)? logIn,
    TResult Function(_EventPrefGetUser value)? prefGetUser,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(this);
    }
    return orElse();
  }
}

abstract class _EventLogIn implements SignInEvent {
  const factory _EventLogIn(
      {required final String email,
      required final String password}) = _$_EventLogIn;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_EventLogInCopyWith<_$_EventLogIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventPrefGetUserCopyWith<$Res> {
  factory _$$_EventPrefGetUserCopyWith(
          _$_EventPrefGetUser value, $Res Function(_$_EventPrefGetUser) then) =
      __$$_EventPrefGetUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EventPrefGetUserCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements _$$_EventPrefGetUserCopyWith<$Res> {
  __$$_EventPrefGetUserCopyWithImpl(
      _$_EventPrefGetUser _value, $Res Function(_$_EventPrefGetUser) _then)
      : super(_value, (v) => _then(v as _$_EventPrefGetUser));

  @override
  _$_EventPrefGetUser get _value => super._value as _$_EventPrefGetUser;
}

/// @nodoc

class _$_EventPrefGetUser implements _EventPrefGetUser {
  const _$_EventPrefGetUser();

  @override
  String toString() {
    return 'SignInEvent.prefGetUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EventPrefGetUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logIn,
    required TResult Function() prefGetUser,
  }) {
    return prefGetUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? prefGetUser,
  }) {
    return prefGetUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? prefGetUser,
    required TResult orElse(),
  }) {
    if (prefGetUser != null) {
      return prefGetUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventLogIn value) logIn,
    required TResult Function(_EventPrefGetUser value) prefGetUser,
  }) {
    return prefGetUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventLogIn value)? logIn,
    TResult Function(_EventPrefGetUser value)? prefGetUser,
  }) {
    return prefGetUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventLogIn value)? logIn,
    TResult Function(_EventPrefGetUser value)? prefGetUser,
    required TResult orElse(),
  }) {
    if (prefGetUser != null) {
      return prefGetUser(this);
    }
    return orElse();
  }
}

abstract class _EventPrefGetUser implements SignInEvent {
  const factory _EventPrefGetUser() = _$_EventPrefGetUser;
}

/// @nodoc
mixin _$SignInState {
  String get email => throw _privateConstructorUsedError;
  bool get isLoggedIn => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<Failure, String>> get optionSucessOrFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
  $Res call(
      {String email,
      bool isLoggedIn,
      String uid,
      String password,
      bool isLoading,
      Option<Either<Failure, String>> optionSucessOrFailure});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? isLoggedIn = freezed,
    Object? uid = freezed,
    Object? password = freezed,
    Object? isLoading = freezed,
    Object? optionSucessOrFailure = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isLoggedIn: isLoggedIn == freezed
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      optionSucessOrFailure: optionSucessOrFailure == freezed
          ? _value.optionSucessOrFailure
          : optionSucessOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, String>>,
    ));
  }
}

/// @nodoc
abstract class _$$_SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$_SignInStateCopyWith(
          _$_SignInState value, $Res Function(_$_SignInState) then) =
      __$$_SignInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      bool isLoggedIn,
      String uid,
      String password,
      bool isLoading,
      Option<Either<Failure, String>> optionSucessOrFailure});
}

/// @nodoc
class __$$_SignInStateCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements _$$_SignInStateCopyWith<$Res> {
  __$$_SignInStateCopyWithImpl(
      _$_SignInState _value, $Res Function(_$_SignInState) _then)
      : super(_value, (v) => _then(v as _$_SignInState));

  @override
  _$_SignInState get _value => super._value as _$_SignInState;

  @override
  $Res call({
    Object? email = freezed,
    Object? isLoggedIn = freezed,
    Object? uid = freezed,
    Object? password = freezed,
    Object? isLoading = freezed,
    Object? optionSucessOrFailure = freezed,
  }) {
    return _then(_$_SignInState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isLoggedIn: isLoggedIn == freezed
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      optionSucessOrFailure: optionSucessOrFailure == freezed
          ? _value.optionSucessOrFailure
          : optionSucessOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, String>>,
    ));
  }
}

/// @nodoc

class _$_SignInState implements _SignInState {
  const _$_SignInState(
      {required this.email,
      required this.isLoggedIn,
      required this.uid,
      required this.password,
      required this.isLoading,
      required this.optionSucessOrFailure});

  @override
  final String email;
  @override
  final bool isLoggedIn;
  @override
  final String uid;
  @override
  final String password;
  @override
  final bool isLoading;
  @override
  final Option<Either<Failure, String>> optionSucessOrFailure;

  @override
  String toString() {
    return 'SignInState(email: $email, isLoggedIn: $isLoggedIn, uid: $uid, password: $password, isLoading: $isLoading, optionSucessOrFailure: $optionSucessOrFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInState &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.isLoggedIn, isLoggedIn) &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.optionSucessOrFailure, optionSucessOrFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(isLoggedIn),
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(optionSucessOrFailure));

  @JsonKey(ignore: true)
  @override
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      __$$_SignInStateCopyWithImpl<_$_SignInState>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
      {required final String email,
      required final bool isLoggedIn,
      required final String uid,
      required final String password,
      required final bool isLoading,
      required final Option<Either<Failure, String>>
          optionSucessOrFailure}) = _$_SignInState;

  @override
  String get email;
  @override
  bool get isLoggedIn;
  @override
  String get uid;
  @override
  String get password;
  @override
  bool get isLoading;
  @override
  Option<Either<Failure, String>> get optionSucessOrFailure;
  @override
  @JsonKey(ignore: true)
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
