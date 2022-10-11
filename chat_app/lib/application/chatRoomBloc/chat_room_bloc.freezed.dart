// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_room_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatRoomEvent {
  String get groupName => throw _privateConstructorUsedError;
  String get myId => throw _privateConstructorUsedError;
  String get memberId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupName, String myId, String memberId)
        createGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupName, String myId, String memberId)?
        createGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupName, String myId, String memberId)?
        createGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventCreateGroup value) createGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventCreateGroup value)? createGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventCreateGroup value)? createGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatRoomEventCopyWith<ChatRoomEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomEventCopyWith<$Res> {
  factory $ChatRoomEventCopyWith(
          ChatRoomEvent value, $Res Function(ChatRoomEvent) then) =
      _$ChatRoomEventCopyWithImpl<$Res>;
  $Res call({String groupName, String myId, String memberId});
}

/// @nodoc
class _$ChatRoomEventCopyWithImpl<$Res>
    implements $ChatRoomEventCopyWith<$Res> {
  _$ChatRoomEventCopyWithImpl(this._value, this._then);

  final ChatRoomEvent _value;
  // ignore: unused_field
  final $Res Function(ChatRoomEvent) _then;

  @override
  $Res call({
    Object? groupName = freezed,
    Object? myId = freezed,
    Object? memberId = freezed,
  }) {
    return _then(_value.copyWith(
      groupName: groupName == freezed
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      myId: myId == freezed
          ? _value.myId
          : myId // ignore: cast_nullable_to_non_nullable
              as String,
      memberId: memberId == freezed
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_EventCreateGroupCopyWith<$Res>
    implements $ChatRoomEventCopyWith<$Res> {
  factory _$$_EventCreateGroupCopyWith(
          _$_EventCreateGroup value, $Res Function(_$_EventCreateGroup) then) =
      __$$_EventCreateGroupCopyWithImpl<$Res>;
  @override
  $Res call({String groupName, String myId, String memberId});
}

/// @nodoc
class __$$_EventCreateGroupCopyWithImpl<$Res>
    extends _$ChatRoomEventCopyWithImpl<$Res>
    implements _$$_EventCreateGroupCopyWith<$Res> {
  __$$_EventCreateGroupCopyWithImpl(
      _$_EventCreateGroup _value, $Res Function(_$_EventCreateGroup) _then)
      : super(_value, (v) => _then(v as _$_EventCreateGroup));

  @override
  _$_EventCreateGroup get _value => super._value as _$_EventCreateGroup;

  @override
  $Res call({
    Object? groupName = freezed,
    Object? myId = freezed,
    Object? memberId = freezed,
  }) {
    return _then(_$_EventCreateGroup(
      groupName: groupName == freezed
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      myId: myId == freezed
          ? _value.myId
          : myId // ignore: cast_nullable_to_non_nullable
              as String,
      memberId: memberId == freezed
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventCreateGroup implements _EventCreateGroup {
  const _$_EventCreateGroup(
      {required this.groupName, required this.myId, required this.memberId});

  @override
  final String groupName;
  @override
  final String myId;
  @override
  final String memberId;

  @override
  String toString() {
    return 'ChatRoomEvent.createGroup(groupName: $groupName, myId: $myId, memberId: $memberId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventCreateGroup &&
            const DeepCollectionEquality().equals(other.groupName, groupName) &&
            const DeepCollectionEquality().equals(other.myId, myId) &&
            const DeepCollectionEquality().equals(other.memberId, memberId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(groupName),
      const DeepCollectionEquality().hash(myId),
      const DeepCollectionEquality().hash(memberId));

  @JsonKey(ignore: true)
  @override
  _$$_EventCreateGroupCopyWith<_$_EventCreateGroup> get copyWith =>
      __$$_EventCreateGroupCopyWithImpl<_$_EventCreateGroup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupName, String myId, String memberId)
        createGroup,
  }) {
    return createGroup(groupName, myId, memberId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupName, String myId, String memberId)?
        createGroup,
  }) {
    return createGroup?.call(groupName, myId, memberId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupName, String myId, String memberId)?
        createGroup,
    required TResult orElse(),
  }) {
    if (createGroup != null) {
      return createGroup(groupName, myId, memberId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventCreateGroup value) createGroup,
  }) {
    return createGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventCreateGroup value)? createGroup,
  }) {
    return createGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventCreateGroup value)? createGroup,
    required TResult orElse(),
  }) {
    if (createGroup != null) {
      return createGroup(this);
    }
    return orElse();
  }
}

abstract class _EventCreateGroup implements ChatRoomEvent {
  const factory _EventCreateGroup(
      {required final String groupName,
      required final String myId,
      required final String memberId}) = _$_EventCreateGroup;

  @override
  String get groupName;
  @override
  String get myId;
  @override
  String get memberId;
  @override
  @JsonKey(ignore: true)
  _$$_EventCreateGroupCopyWith<_$_EventCreateGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatRoomState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<Failure, String>> get optionSuccessOrFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatRoomStateCopyWith<ChatRoomState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomStateCopyWith<$Res> {
  factory $ChatRoomStateCopyWith(
          ChatRoomState value, $Res Function(ChatRoomState) then) =
      _$ChatRoomStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading, Option<Either<Failure, String>> optionSuccessOrFailure});
}

/// @nodoc
class _$ChatRoomStateCopyWithImpl<$Res>
    implements $ChatRoomStateCopyWith<$Res> {
  _$ChatRoomStateCopyWithImpl(this._value, this._then);

  final ChatRoomState _value;
  // ignore: unused_field
  final $Res Function(ChatRoomState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? optionSuccessOrFailure = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      optionSuccessOrFailure: optionSuccessOrFailure == freezed
          ? _value.optionSuccessOrFailure
          : optionSuccessOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, String>>,
    ));
  }
}

/// @nodoc
abstract class _$$_ChatRoomStateCopyWith<$Res>
    implements $ChatRoomStateCopyWith<$Res> {
  factory _$$_ChatRoomStateCopyWith(
          _$_ChatRoomState value, $Res Function(_$_ChatRoomState) then) =
      __$$_ChatRoomStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading, Option<Either<Failure, String>> optionSuccessOrFailure});
}

/// @nodoc
class __$$_ChatRoomStateCopyWithImpl<$Res>
    extends _$ChatRoomStateCopyWithImpl<$Res>
    implements _$$_ChatRoomStateCopyWith<$Res> {
  __$$_ChatRoomStateCopyWithImpl(
      _$_ChatRoomState _value, $Res Function(_$_ChatRoomState) _then)
      : super(_value, (v) => _then(v as _$_ChatRoomState));

  @override
  _$_ChatRoomState get _value => super._value as _$_ChatRoomState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? optionSuccessOrFailure = freezed,
  }) {
    return _then(_$_ChatRoomState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      optionSuccessOrFailure: optionSuccessOrFailure == freezed
          ? _value.optionSuccessOrFailure
          : optionSuccessOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, String>>,
    ));
  }
}

/// @nodoc

class _$_ChatRoomState implements _ChatRoomState {
  const _$_ChatRoomState(
      {required this.isLoading, required this.optionSuccessOrFailure});

  @override
  final bool isLoading;
  @override
  final Option<Either<Failure, String>> optionSuccessOrFailure;

  @override
  String toString() {
    return 'ChatRoomState(isLoading: $isLoading, optionSuccessOrFailure: $optionSuccessOrFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatRoomState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.optionSuccessOrFailure, optionSuccessOrFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(optionSuccessOrFailure));

  @JsonKey(ignore: true)
  @override
  _$$_ChatRoomStateCopyWith<_$_ChatRoomState> get copyWith =>
      __$$_ChatRoomStateCopyWithImpl<_$_ChatRoomState>(this, _$identity);
}

abstract class _ChatRoomState implements ChatRoomState {
  const factory _ChatRoomState(
      {required final bool isLoading,
      required final Option<Either<Failure, String>>
          optionSuccessOrFailure}) = _$_ChatRoomState;

  @override
  bool get isLoading;
  @override
  Option<Either<Failure, String>> get optionSuccessOrFailure;
  @override
  @JsonKey(ignore: true)
  _$$_ChatRoomStateCopyWith<_$_ChatRoomState> get copyWith =>
      throw _privateConstructorUsedError;
}
