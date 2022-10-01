// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'verify_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VerifyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendEmail,
    required TResult Function() reload,
    required TResult Function() deleteUnverifiedEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? sendEmail,
    TResult Function()? reload,
    TResult Function()? deleteUnverifiedEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendEmail,
    TResult Function()? reload,
    TResult Function()? deleteUnverifiedEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventSendEmail value) sendEmail,
    required TResult Function(_EventReloadEmail value) reload,
    required TResult Function(_EventDeleteEmail value) deleteUnverifiedEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventSendEmail value)? sendEmail,
    TResult Function(_EventReloadEmail value)? reload,
    TResult Function(_EventDeleteEmail value)? deleteUnverifiedEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventSendEmail value)? sendEmail,
    TResult Function(_EventReloadEmail value)? reload,
    TResult Function(_EventDeleteEmail value)? deleteUnverifiedEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyEventCopyWith<$Res> {
  factory $VerifyEventCopyWith(
          VerifyEvent value, $Res Function(VerifyEvent) then) =
      _$VerifyEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerifyEventCopyWithImpl<$Res> implements $VerifyEventCopyWith<$Res> {
  _$VerifyEventCopyWithImpl(this._value, this._then);

  final VerifyEvent _value;
  // ignore: unused_field
  final $Res Function(VerifyEvent) _then;
}

/// @nodoc
abstract class _$$_EventSendEmailCopyWith<$Res> {
  factory _$$_EventSendEmailCopyWith(
          _$_EventSendEmail value, $Res Function(_$_EventSendEmail) then) =
      __$$_EventSendEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EventSendEmailCopyWithImpl<$Res>
    extends _$VerifyEventCopyWithImpl<$Res>
    implements _$$_EventSendEmailCopyWith<$Res> {
  __$$_EventSendEmailCopyWithImpl(
      _$_EventSendEmail _value, $Res Function(_$_EventSendEmail) _then)
      : super(_value, (v) => _then(v as _$_EventSendEmail));

  @override
  _$_EventSendEmail get _value => super._value as _$_EventSendEmail;
}

/// @nodoc

class _$_EventSendEmail implements _EventSendEmail {
  const _$_EventSendEmail();

  @override
  String toString() {
    return 'VerifyEvent.sendEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EventSendEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendEmail,
    required TResult Function() reload,
    required TResult Function() deleteUnverifiedEmail,
  }) {
    return sendEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? sendEmail,
    TResult Function()? reload,
    TResult Function()? deleteUnverifiedEmail,
  }) {
    return sendEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendEmail,
    TResult Function()? reload,
    TResult Function()? deleteUnverifiedEmail,
    required TResult orElse(),
  }) {
    if (sendEmail != null) {
      return sendEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventSendEmail value) sendEmail,
    required TResult Function(_EventReloadEmail value) reload,
    required TResult Function(_EventDeleteEmail value) deleteUnverifiedEmail,
  }) {
    return sendEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventSendEmail value)? sendEmail,
    TResult Function(_EventReloadEmail value)? reload,
    TResult Function(_EventDeleteEmail value)? deleteUnverifiedEmail,
  }) {
    return sendEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventSendEmail value)? sendEmail,
    TResult Function(_EventReloadEmail value)? reload,
    TResult Function(_EventDeleteEmail value)? deleteUnverifiedEmail,
    required TResult orElse(),
  }) {
    if (sendEmail != null) {
      return sendEmail(this);
    }
    return orElse();
  }
}

abstract class _EventSendEmail implements VerifyEvent {
  const factory _EventSendEmail() = _$_EventSendEmail;
}

/// @nodoc
abstract class _$$_EventReloadEmailCopyWith<$Res> {
  factory _$$_EventReloadEmailCopyWith(
          _$_EventReloadEmail value, $Res Function(_$_EventReloadEmail) then) =
      __$$_EventReloadEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EventReloadEmailCopyWithImpl<$Res>
    extends _$VerifyEventCopyWithImpl<$Res>
    implements _$$_EventReloadEmailCopyWith<$Res> {
  __$$_EventReloadEmailCopyWithImpl(
      _$_EventReloadEmail _value, $Res Function(_$_EventReloadEmail) _then)
      : super(_value, (v) => _then(v as _$_EventReloadEmail));

  @override
  _$_EventReloadEmail get _value => super._value as _$_EventReloadEmail;
}

/// @nodoc

class _$_EventReloadEmail implements _EventReloadEmail {
  const _$_EventReloadEmail();

  @override
  String toString() {
    return 'VerifyEvent.reload()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EventReloadEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendEmail,
    required TResult Function() reload,
    required TResult Function() deleteUnverifiedEmail,
  }) {
    return reload();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? sendEmail,
    TResult Function()? reload,
    TResult Function()? deleteUnverifiedEmail,
  }) {
    return reload?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendEmail,
    TResult Function()? reload,
    TResult Function()? deleteUnverifiedEmail,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventSendEmail value) sendEmail,
    required TResult Function(_EventReloadEmail value) reload,
    required TResult Function(_EventDeleteEmail value) deleteUnverifiedEmail,
  }) {
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventSendEmail value)? sendEmail,
    TResult Function(_EventReloadEmail value)? reload,
    TResult Function(_EventDeleteEmail value)? deleteUnverifiedEmail,
  }) {
    return reload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventSendEmail value)? sendEmail,
    TResult Function(_EventReloadEmail value)? reload,
    TResult Function(_EventDeleteEmail value)? deleteUnverifiedEmail,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class _EventReloadEmail implements VerifyEvent {
  const factory _EventReloadEmail() = _$_EventReloadEmail;
}

/// @nodoc
abstract class _$$_EventDeleteEmailCopyWith<$Res> {
  factory _$$_EventDeleteEmailCopyWith(
          _$_EventDeleteEmail value, $Res Function(_$_EventDeleteEmail) then) =
      __$$_EventDeleteEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EventDeleteEmailCopyWithImpl<$Res>
    extends _$VerifyEventCopyWithImpl<$Res>
    implements _$$_EventDeleteEmailCopyWith<$Res> {
  __$$_EventDeleteEmailCopyWithImpl(
      _$_EventDeleteEmail _value, $Res Function(_$_EventDeleteEmail) _then)
      : super(_value, (v) => _then(v as _$_EventDeleteEmail));

  @override
  _$_EventDeleteEmail get _value => super._value as _$_EventDeleteEmail;
}

/// @nodoc

class _$_EventDeleteEmail implements _EventDeleteEmail {
  const _$_EventDeleteEmail();

  @override
  String toString() {
    return 'VerifyEvent.deleteUnverifiedEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EventDeleteEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendEmail,
    required TResult Function() reload,
    required TResult Function() deleteUnverifiedEmail,
  }) {
    return deleteUnverifiedEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? sendEmail,
    TResult Function()? reload,
    TResult Function()? deleteUnverifiedEmail,
  }) {
    return deleteUnverifiedEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendEmail,
    TResult Function()? reload,
    TResult Function()? deleteUnverifiedEmail,
    required TResult orElse(),
  }) {
    if (deleteUnverifiedEmail != null) {
      return deleteUnverifiedEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventSendEmail value) sendEmail,
    required TResult Function(_EventReloadEmail value) reload,
    required TResult Function(_EventDeleteEmail value) deleteUnverifiedEmail,
  }) {
    return deleteUnverifiedEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventSendEmail value)? sendEmail,
    TResult Function(_EventReloadEmail value)? reload,
    TResult Function(_EventDeleteEmail value)? deleteUnverifiedEmail,
  }) {
    return deleteUnverifiedEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventSendEmail value)? sendEmail,
    TResult Function(_EventReloadEmail value)? reload,
    TResult Function(_EventDeleteEmail value)? deleteUnverifiedEmail,
    required TResult orElse(),
  }) {
    if (deleteUnverifiedEmail != null) {
      return deleteUnverifiedEmail(this);
    }
    return orElse();
  }
}

abstract class _EventDeleteEmail implements VerifyEvent {
  const factory _EventDeleteEmail() = _$_EventDeleteEmail;
}

/// @nodoc
mixin _$VerifyState {
  bool get isVerified => throw _privateConstructorUsedError;
  Option<Either<Failure, String>> get optionSuccessFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerifyStateCopyWith<VerifyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyStateCopyWith<$Res> {
  factory $VerifyStateCopyWith(
          VerifyState value, $Res Function(VerifyState) then) =
      _$VerifyStateCopyWithImpl<$Res>;
  $Res call(
      {bool isVerified, Option<Either<Failure, String>> optionSuccessFailure});
}

/// @nodoc
class _$VerifyStateCopyWithImpl<$Res> implements $VerifyStateCopyWith<$Res> {
  _$VerifyStateCopyWithImpl(this._value, this._then);

  final VerifyState _value;
  // ignore: unused_field
  final $Res Function(VerifyState) _then;

  @override
  $Res call({
    Object? isVerified = freezed,
    Object? optionSuccessFailure = freezed,
  }) {
    return _then(_value.copyWith(
      isVerified: isVerified == freezed
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      optionSuccessFailure: optionSuccessFailure == freezed
          ? _value.optionSuccessFailure
          : optionSuccessFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, String>>,
    ));
  }
}

/// @nodoc
abstract class _$$_VerifyStateCopyWith<$Res>
    implements $VerifyStateCopyWith<$Res> {
  factory _$$_VerifyStateCopyWith(
          _$_VerifyState value, $Res Function(_$_VerifyState) then) =
      __$$_VerifyStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isVerified, Option<Either<Failure, String>> optionSuccessFailure});
}

/// @nodoc
class __$$_VerifyStateCopyWithImpl<$Res> extends _$VerifyStateCopyWithImpl<$Res>
    implements _$$_VerifyStateCopyWith<$Res> {
  __$$_VerifyStateCopyWithImpl(
      _$_VerifyState _value, $Res Function(_$_VerifyState) _then)
      : super(_value, (v) => _then(v as _$_VerifyState));

  @override
  _$_VerifyState get _value => super._value as _$_VerifyState;

  @override
  $Res call({
    Object? isVerified = freezed,
    Object? optionSuccessFailure = freezed,
  }) {
    return _then(_$_VerifyState(
      isVerified: isVerified == freezed
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      optionSuccessFailure: optionSuccessFailure == freezed
          ? _value.optionSuccessFailure
          : optionSuccessFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, String>>,
    ));
  }
}

/// @nodoc

class _$_VerifyState implements _VerifyState {
  const _$_VerifyState(
      {required this.isVerified, required this.optionSuccessFailure});

  @override
  final bool isVerified;
  @override
  final Option<Either<Failure, String>> optionSuccessFailure;

  @override
  String toString() {
    return 'VerifyState(isVerified: $isVerified, optionSuccessFailure: $optionSuccessFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyState &&
            const DeepCollectionEquality()
                .equals(other.isVerified, isVerified) &&
            const DeepCollectionEquality()
                .equals(other.optionSuccessFailure, optionSuccessFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isVerified),
      const DeepCollectionEquality().hash(optionSuccessFailure));

  @JsonKey(ignore: true)
  @override
  _$$_VerifyStateCopyWith<_$_VerifyState> get copyWith =>
      __$$_VerifyStateCopyWithImpl<_$_VerifyState>(this, _$identity);
}

abstract class _VerifyState implements VerifyState {
  const factory _VerifyState(
      {required final bool isVerified,
      required final Option<Either<Failure, String>>
          optionSuccessFailure}) = _$_VerifyState;

  @override
  bool get isVerified;
  @override
  Option<Either<Failure, String>> get optionSuccessFailure;
  @override
  @JsonKey(ignore: true)
  _$$_VerifyStateCopyWith<_$_VerifyState> get copyWith =>
      throw _privateConstructorUsedError;
}
