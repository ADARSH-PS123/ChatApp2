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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String groupName, String myId, String message, String memberId)
        createGroup,
    required TResult Function(String groupId) readMessage,
    required TResult Function(String groupId) getGroupInfo,
    required TResult Function(
            String myId, List<String> memberIds, String groupName)
        createPublicGroup,
    required TResult Function(String groupId) getUserList,
    required TResult Function(String groupId, String myId, String message)
        sendPublicGroupMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String groupName, String myId, String message, String memberId)?
        createGroup,
    TResult Function(String groupId)? readMessage,
    TResult Function(String groupId)? getGroupInfo,
    TResult Function(String myId, List<String> memberIds, String groupName)?
        createPublicGroup,
    TResult Function(String groupId)? getUserList,
    TResult Function(String groupId, String myId, String message)?
        sendPublicGroupMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String groupName, String myId, String message, String memberId)?
        createGroup,
    TResult Function(String groupId)? readMessage,
    TResult Function(String groupId)? getGroupInfo,
    TResult Function(String myId, List<String> memberIds, String groupName)?
        createPublicGroup,
    TResult Function(String groupId)? getUserList,
    TResult Function(String groupId, String myId, String message)?
        sendPublicGroupMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventCreateGroup value) createGroup,
    required TResult Function(_EventReadMessage value) readMessage,
    required TResult Function(_EventGetUserInfo value) getGroupInfo,
    required TResult Function(_EventCreatePublicGroup value) createPublicGroup,
    required TResult Function(_EventGetUserList value) getUserList,
    required TResult Function(_EventSendPublicGroupMessage value)
        sendPublicGroupMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventCreateGroup value)? createGroup,
    TResult Function(_EventReadMessage value)? readMessage,
    TResult Function(_EventGetUserInfo value)? getGroupInfo,
    TResult Function(_EventCreatePublicGroup value)? createPublicGroup,
    TResult Function(_EventGetUserList value)? getUserList,
    TResult Function(_EventSendPublicGroupMessage value)?
        sendPublicGroupMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventCreateGroup value)? createGroup,
    TResult Function(_EventReadMessage value)? readMessage,
    TResult Function(_EventGetUserInfo value)? getGroupInfo,
    TResult Function(_EventCreatePublicGroup value)? createPublicGroup,
    TResult Function(_EventGetUserList value)? getUserList,
    TResult Function(_EventSendPublicGroupMessage value)?
        sendPublicGroupMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomEventCopyWith<$Res> {
  factory $ChatRoomEventCopyWith(
          ChatRoomEvent value, $Res Function(ChatRoomEvent) then) =
      _$ChatRoomEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatRoomEventCopyWithImpl<$Res>
    implements $ChatRoomEventCopyWith<$Res> {
  _$ChatRoomEventCopyWithImpl(this._value, this._then);

  final ChatRoomEvent _value;
  // ignore: unused_field
  final $Res Function(ChatRoomEvent) _then;
}

/// @nodoc
abstract class _$$_EventCreateGroupCopyWith<$Res> {
  factory _$$_EventCreateGroupCopyWith(
          _$_EventCreateGroup value, $Res Function(_$_EventCreateGroup) then) =
      __$$_EventCreateGroupCopyWithImpl<$Res>;
  $Res call({String groupName, String myId, String message, String memberId});
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
    Object? message = freezed,
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
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
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
      {required this.groupName,
      required this.myId,
      required this.message,
      required this.memberId});

  @override
  final String groupName;
  @override
  final String myId;
  @override
  final String message;
  @override
  final String memberId;

  @override
  String toString() {
    return 'ChatRoomEvent.createGroup(groupName: $groupName, myId: $myId, message: $message, memberId: $memberId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventCreateGroup &&
            const DeepCollectionEquality().equals(other.groupName, groupName) &&
            const DeepCollectionEquality().equals(other.myId, myId) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.memberId, memberId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(groupName),
      const DeepCollectionEquality().hash(myId),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(memberId));

  @JsonKey(ignore: true)
  @override
  _$$_EventCreateGroupCopyWith<_$_EventCreateGroup> get copyWith =>
      __$$_EventCreateGroupCopyWithImpl<_$_EventCreateGroup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String groupName, String myId, String message, String memberId)
        createGroup,
    required TResult Function(String groupId) readMessage,
    required TResult Function(String groupId) getGroupInfo,
    required TResult Function(
            String myId, List<String> memberIds, String groupName)
        createPublicGroup,
    required TResult Function(String groupId) getUserList,
    required TResult Function(String groupId, String myId, String message)
        sendPublicGroupMessage,
  }) {
    return createGroup(groupName, myId, message, memberId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String groupName, String myId, String message, String memberId)?
        createGroup,
    TResult Function(String groupId)? readMessage,
    TResult Function(String groupId)? getGroupInfo,
    TResult Function(String myId, List<String> memberIds, String groupName)?
        createPublicGroup,
    TResult Function(String groupId)? getUserList,
    TResult Function(String groupId, String myId, String message)?
        sendPublicGroupMessage,
  }) {
    return createGroup?.call(groupName, myId, message, memberId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String groupName, String myId, String message, String memberId)?
        createGroup,
    TResult Function(String groupId)? readMessage,
    TResult Function(String groupId)? getGroupInfo,
    TResult Function(String myId, List<String> memberIds, String groupName)?
        createPublicGroup,
    TResult Function(String groupId)? getUserList,
    TResult Function(String groupId, String myId, String message)?
        sendPublicGroupMessage,
    required TResult orElse(),
  }) {
    if (createGroup != null) {
      return createGroup(groupName, myId, message, memberId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventCreateGroup value) createGroup,
    required TResult Function(_EventReadMessage value) readMessage,
    required TResult Function(_EventGetUserInfo value) getGroupInfo,
    required TResult Function(_EventCreatePublicGroup value) createPublicGroup,
    required TResult Function(_EventGetUserList value) getUserList,
    required TResult Function(_EventSendPublicGroupMessage value)
        sendPublicGroupMessage,
  }) {
    return createGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventCreateGroup value)? createGroup,
    TResult Function(_EventReadMessage value)? readMessage,
    TResult Function(_EventGetUserInfo value)? getGroupInfo,
    TResult Function(_EventCreatePublicGroup value)? createPublicGroup,
    TResult Function(_EventGetUserList value)? getUserList,
    TResult Function(_EventSendPublicGroupMessage value)?
        sendPublicGroupMessage,
  }) {
    return createGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventCreateGroup value)? createGroup,
    TResult Function(_EventReadMessage value)? readMessage,
    TResult Function(_EventGetUserInfo value)? getGroupInfo,
    TResult Function(_EventCreatePublicGroup value)? createPublicGroup,
    TResult Function(_EventGetUserList value)? getUserList,
    TResult Function(_EventSendPublicGroupMessage value)?
        sendPublicGroupMessage,
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
      required final String message,
      required final String memberId}) = _$_EventCreateGroup;

  String get groupName;
  String get myId;
  String get message;
  String get memberId;
  @JsonKey(ignore: true)
  _$$_EventCreateGroupCopyWith<_$_EventCreateGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventReadMessageCopyWith<$Res> {
  factory _$$_EventReadMessageCopyWith(
          _$_EventReadMessage value, $Res Function(_$_EventReadMessage) then) =
      __$$_EventReadMessageCopyWithImpl<$Res>;
  $Res call({String groupId});
}

/// @nodoc
class __$$_EventReadMessageCopyWithImpl<$Res>
    extends _$ChatRoomEventCopyWithImpl<$Res>
    implements _$$_EventReadMessageCopyWith<$Res> {
  __$$_EventReadMessageCopyWithImpl(
      _$_EventReadMessage _value, $Res Function(_$_EventReadMessage) _then)
      : super(_value, (v) => _then(v as _$_EventReadMessage));

  @override
  _$_EventReadMessage get _value => super._value as _$_EventReadMessage;

  @override
  $Res call({
    Object? groupId = freezed,
  }) {
    return _then(_$_EventReadMessage(
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventReadMessage implements _EventReadMessage {
  const _$_EventReadMessage({required this.groupId});

  @override
  final String groupId;

  @override
  String toString() {
    return 'ChatRoomEvent.readMessage(groupId: $groupId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventReadMessage &&
            const DeepCollectionEquality().equals(other.groupId, groupId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(groupId));

  @JsonKey(ignore: true)
  @override
  _$$_EventReadMessageCopyWith<_$_EventReadMessage> get copyWith =>
      __$$_EventReadMessageCopyWithImpl<_$_EventReadMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String groupName, String myId, String message, String memberId)
        createGroup,
    required TResult Function(String groupId) readMessage,
    required TResult Function(String groupId) getGroupInfo,
    required TResult Function(
            String myId, List<String> memberIds, String groupName)
        createPublicGroup,
    required TResult Function(String groupId) getUserList,
    required TResult Function(String groupId, String myId, String message)
        sendPublicGroupMessage,
  }) {
    return readMessage(groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String groupName, String myId, String message, String memberId)?
        createGroup,
    TResult Function(String groupId)? readMessage,
    TResult Function(String groupId)? getGroupInfo,
    TResult Function(String myId, List<String> memberIds, String groupName)?
        createPublicGroup,
    TResult Function(String groupId)? getUserList,
    TResult Function(String groupId, String myId, String message)?
        sendPublicGroupMessage,
  }) {
    return readMessage?.call(groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String groupName, String myId, String message, String memberId)?
        createGroup,
    TResult Function(String groupId)? readMessage,
    TResult Function(String groupId)? getGroupInfo,
    TResult Function(String myId, List<String> memberIds, String groupName)?
        createPublicGroup,
    TResult Function(String groupId)? getUserList,
    TResult Function(String groupId, String myId, String message)?
        sendPublicGroupMessage,
    required TResult orElse(),
  }) {
    if (readMessage != null) {
      return readMessage(groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventCreateGroup value) createGroup,
    required TResult Function(_EventReadMessage value) readMessage,
    required TResult Function(_EventGetUserInfo value) getGroupInfo,
    required TResult Function(_EventCreatePublicGroup value) createPublicGroup,
    required TResult Function(_EventGetUserList value) getUserList,
    required TResult Function(_EventSendPublicGroupMessage value)
        sendPublicGroupMessage,
  }) {
    return readMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventCreateGroup value)? createGroup,
    TResult Function(_EventReadMessage value)? readMessage,
    TResult Function(_EventGetUserInfo value)? getGroupInfo,
    TResult Function(_EventCreatePublicGroup value)? createPublicGroup,
    TResult Function(_EventGetUserList value)? getUserList,
    TResult Function(_EventSendPublicGroupMessage value)?
        sendPublicGroupMessage,
  }) {
    return readMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventCreateGroup value)? createGroup,
    TResult Function(_EventReadMessage value)? readMessage,
    TResult Function(_EventGetUserInfo value)? getGroupInfo,
    TResult Function(_EventCreatePublicGroup value)? createPublicGroup,
    TResult Function(_EventGetUserList value)? getUserList,
    TResult Function(_EventSendPublicGroupMessage value)?
        sendPublicGroupMessage,
    required TResult orElse(),
  }) {
    if (readMessage != null) {
      return readMessage(this);
    }
    return orElse();
  }
}

abstract class _EventReadMessage implements ChatRoomEvent {
  const factory _EventReadMessage({required final String groupId}) =
      _$_EventReadMessage;

  String get groupId;
  @JsonKey(ignore: true)
  _$$_EventReadMessageCopyWith<_$_EventReadMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventGetUserInfoCopyWith<$Res> {
  factory _$$_EventGetUserInfoCopyWith(
          _$_EventGetUserInfo value, $Res Function(_$_EventGetUserInfo) then) =
      __$$_EventGetUserInfoCopyWithImpl<$Res>;
  $Res call({String groupId});
}

/// @nodoc
class __$$_EventGetUserInfoCopyWithImpl<$Res>
    extends _$ChatRoomEventCopyWithImpl<$Res>
    implements _$$_EventGetUserInfoCopyWith<$Res> {
  __$$_EventGetUserInfoCopyWithImpl(
      _$_EventGetUserInfo _value, $Res Function(_$_EventGetUserInfo) _then)
      : super(_value, (v) => _then(v as _$_EventGetUserInfo));

  @override
  _$_EventGetUserInfo get _value => super._value as _$_EventGetUserInfo;

  @override
  $Res call({
    Object? groupId = freezed,
  }) {
    return _then(_$_EventGetUserInfo(
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventGetUserInfo implements _EventGetUserInfo {
  const _$_EventGetUserInfo({required this.groupId});

  @override
  final String groupId;

  @override
  String toString() {
    return 'ChatRoomEvent.getGroupInfo(groupId: $groupId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventGetUserInfo &&
            const DeepCollectionEquality().equals(other.groupId, groupId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(groupId));

  @JsonKey(ignore: true)
  @override
  _$$_EventGetUserInfoCopyWith<_$_EventGetUserInfo> get copyWith =>
      __$$_EventGetUserInfoCopyWithImpl<_$_EventGetUserInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String groupName, String myId, String message, String memberId)
        createGroup,
    required TResult Function(String groupId) readMessage,
    required TResult Function(String groupId) getGroupInfo,
    required TResult Function(
            String myId, List<String> memberIds, String groupName)
        createPublicGroup,
    required TResult Function(String groupId) getUserList,
    required TResult Function(String groupId, String myId, String message)
        sendPublicGroupMessage,
  }) {
    return getGroupInfo(groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String groupName, String myId, String message, String memberId)?
        createGroup,
    TResult Function(String groupId)? readMessage,
    TResult Function(String groupId)? getGroupInfo,
    TResult Function(String myId, List<String> memberIds, String groupName)?
        createPublicGroup,
    TResult Function(String groupId)? getUserList,
    TResult Function(String groupId, String myId, String message)?
        sendPublicGroupMessage,
  }) {
    return getGroupInfo?.call(groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String groupName, String myId, String message, String memberId)?
        createGroup,
    TResult Function(String groupId)? readMessage,
    TResult Function(String groupId)? getGroupInfo,
    TResult Function(String myId, List<String> memberIds, String groupName)?
        createPublicGroup,
    TResult Function(String groupId)? getUserList,
    TResult Function(String groupId, String myId, String message)?
        sendPublicGroupMessage,
    required TResult orElse(),
  }) {
    if (getGroupInfo != null) {
      return getGroupInfo(groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventCreateGroup value) createGroup,
    required TResult Function(_EventReadMessage value) readMessage,
    required TResult Function(_EventGetUserInfo value) getGroupInfo,
    required TResult Function(_EventCreatePublicGroup value) createPublicGroup,
    required TResult Function(_EventGetUserList value) getUserList,
    required TResult Function(_EventSendPublicGroupMessage value)
        sendPublicGroupMessage,
  }) {
    return getGroupInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventCreateGroup value)? createGroup,
    TResult Function(_EventReadMessage value)? readMessage,
    TResult Function(_EventGetUserInfo value)? getGroupInfo,
    TResult Function(_EventCreatePublicGroup value)? createPublicGroup,
    TResult Function(_EventGetUserList value)? getUserList,
    TResult Function(_EventSendPublicGroupMessage value)?
        sendPublicGroupMessage,
  }) {
    return getGroupInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventCreateGroup value)? createGroup,
    TResult Function(_EventReadMessage value)? readMessage,
    TResult Function(_EventGetUserInfo value)? getGroupInfo,
    TResult Function(_EventCreatePublicGroup value)? createPublicGroup,
    TResult Function(_EventGetUserList value)? getUserList,
    TResult Function(_EventSendPublicGroupMessage value)?
        sendPublicGroupMessage,
    required TResult orElse(),
  }) {
    if (getGroupInfo != null) {
      return getGroupInfo(this);
    }
    return orElse();
  }
}

abstract class _EventGetUserInfo implements ChatRoomEvent {
  const factory _EventGetUserInfo({required final String groupId}) =
      _$_EventGetUserInfo;

  String get groupId;
  @JsonKey(ignore: true)
  _$$_EventGetUserInfoCopyWith<_$_EventGetUserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventCreatePublicGroupCopyWith<$Res> {
  factory _$$_EventCreatePublicGroupCopyWith(_$_EventCreatePublicGroup value,
          $Res Function(_$_EventCreatePublicGroup) then) =
      __$$_EventCreatePublicGroupCopyWithImpl<$Res>;
  $Res call({String myId, List<String> memberIds, String groupName});
}

/// @nodoc
class __$$_EventCreatePublicGroupCopyWithImpl<$Res>
    extends _$ChatRoomEventCopyWithImpl<$Res>
    implements _$$_EventCreatePublicGroupCopyWith<$Res> {
  __$$_EventCreatePublicGroupCopyWithImpl(_$_EventCreatePublicGroup _value,
      $Res Function(_$_EventCreatePublicGroup) _then)
      : super(_value, (v) => _then(v as _$_EventCreatePublicGroup));

  @override
  _$_EventCreatePublicGroup get _value =>
      super._value as _$_EventCreatePublicGroup;

  @override
  $Res call({
    Object? myId = freezed,
    Object? memberIds = freezed,
    Object? groupName = freezed,
  }) {
    return _then(_$_EventCreatePublicGroup(
      myId: myId == freezed
          ? _value.myId
          : myId // ignore: cast_nullable_to_non_nullable
              as String,
      memberIds: memberIds == freezed
          ? _value._memberIds
          : memberIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      groupName: groupName == freezed
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventCreatePublicGroup implements _EventCreatePublicGroup {
  const _$_EventCreatePublicGroup(
      {required this.myId,
      required final List<String> memberIds,
      required this.groupName})
      : _memberIds = memberIds;

  @override
  final String myId;
  final List<String> _memberIds;
  @override
  List<String> get memberIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memberIds);
  }

  @override
  final String groupName;

  @override
  String toString() {
    return 'ChatRoomEvent.createPublicGroup(myId: $myId, memberIds: $memberIds, groupName: $groupName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventCreatePublicGroup &&
            const DeepCollectionEquality().equals(other.myId, myId) &&
            const DeepCollectionEquality()
                .equals(other._memberIds, _memberIds) &&
            const DeepCollectionEquality().equals(other.groupName, groupName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(myId),
      const DeepCollectionEquality().hash(_memberIds),
      const DeepCollectionEquality().hash(groupName));

  @JsonKey(ignore: true)
  @override
  _$$_EventCreatePublicGroupCopyWith<_$_EventCreatePublicGroup> get copyWith =>
      __$$_EventCreatePublicGroupCopyWithImpl<_$_EventCreatePublicGroup>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String groupName, String myId, String message, String memberId)
        createGroup,
    required TResult Function(String groupId) readMessage,
    required TResult Function(String groupId) getGroupInfo,
    required TResult Function(
            String myId, List<String> memberIds, String groupName)
        createPublicGroup,
    required TResult Function(String groupId) getUserList,
    required TResult Function(String groupId, String myId, String message)
        sendPublicGroupMessage,
  }) {
    return createPublicGroup(myId, memberIds, groupName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String groupName, String myId, String message, String memberId)?
        createGroup,
    TResult Function(String groupId)? readMessage,
    TResult Function(String groupId)? getGroupInfo,
    TResult Function(String myId, List<String> memberIds, String groupName)?
        createPublicGroup,
    TResult Function(String groupId)? getUserList,
    TResult Function(String groupId, String myId, String message)?
        sendPublicGroupMessage,
  }) {
    return createPublicGroup?.call(myId, memberIds, groupName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String groupName, String myId, String message, String memberId)?
        createGroup,
    TResult Function(String groupId)? readMessage,
    TResult Function(String groupId)? getGroupInfo,
    TResult Function(String myId, List<String> memberIds, String groupName)?
        createPublicGroup,
    TResult Function(String groupId)? getUserList,
    TResult Function(String groupId, String myId, String message)?
        sendPublicGroupMessage,
    required TResult orElse(),
  }) {
    if (createPublicGroup != null) {
      return createPublicGroup(myId, memberIds, groupName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventCreateGroup value) createGroup,
    required TResult Function(_EventReadMessage value) readMessage,
    required TResult Function(_EventGetUserInfo value) getGroupInfo,
    required TResult Function(_EventCreatePublicGroup value) createPublicGroup,
    required TResult Function(_EventGetUserList value) getUserList,
    required TResult Function(_EventSendPublicGroupMessage value)
        sendPublicGroupMessage,
  }) {
    return createPublicGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventCreateGroup value)? createGroup,
    TResult Function(_EventReadMessage value)? readMessage,
    TResult Function(_EventGetUserInfo value)? getGroupInfo,
    TResult Function(_EventCreatePublicGroup value)? createPublicGroup,
    TResult Function(_EventGetUserList value)? getUserList,
    TResult Function(_EventSendPublicGroupMessage value)?
        sendPublicGroupMessage,
  }) {
    return createPublicGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventCreateGroup value)? createGroup,
    TResult Function(_EventReadMessage value)? readMessage,
    TResult Function(_EventGetUserInfo value)? getGroupInfo,
    TResult Function(_EventCreatePublicGroup value)? createPublicGroup,
    TResult Function(_EventGetUserList value)? getUserList,
    TResult Function(_EventSendPublicGroupMessage value)?
        sendPublicGroupMessage,
    required TResult orElse(),
  }) {
    if (createPublicGroup != null) {
      return createPublicGroup(this);
    }
    return orElse();
  }
}

abstract class _EventCreatePublicGroup implements ChatRoomEvent {
  const factory _EventCreatePublicGroup(
      {required final String myId,
      required final List<String> memberIds,
      required final String groupName}) = _$_EventCreatePublicGroup;

  String get myId;
  List<String> get memberIds;
  String get groupName;
  @JsonKey(ignore: true)
  _$$_EventCreatePublicGroupCopyWith<_$_EventCreatePublicGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventGetUserListCopyWith<$Res> {
  factory _$$_EventGetUserListCopyWith(
          _$_EventGetUserList value, $Res Function(_$_EventGetUserList) then) =
      __$$_EventGetUserListCopyWithImpl<$Res>;
  $Res call({String groupId});
}

/// @nodoc
class __$$_EventGetUserListCopyWithImpl<$Res>
    extends _$ChatRoomEventCopyWithImpl<$Res>
    implements _$$_EventGetUserListCopyWith<$Res> {
  __$$_EventGetUserListCopyWithImpl(
      _$_EventGetUserList _value, $Res Function(_$_EventGetUserList) _then)
      : super(_value, (v) => _then(v as _$_EventGetUserList));

  @override
  _$_EventGetUserList get _value => super._value as _$_EventGetUserList;

  @override
  $Res call({
    Object? groupId = freezed,
  }) {
    return _then(_$_EventGetUserList(
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventGetUserList implements _EventGetUserList {
  const _$_EventGetUserList({required this.groupId});

  @override
  final String groupId;

  @override
  String toString() {
    return 'ChatRoomEvent.getUserList(groupId: $groupId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventGetUserList &&
            const DeepCollectionEquality().equals(other.groupId, groupId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(groupId));

  @JsonKey(ignore: true)
  @override
  _$$_EventGetUserListCopyWith<_$_EventGetUserList> get copyWith =>
      __$$_EventGetUserListCopyWithImpl<_$_EventGetUserList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String groupName, String myId, String message, String memberId)
        createGroup,
    required TResult Function(String groupId) readMessage,
    required TResult Function(String groupId) getGroupInfo,
    required TResult Function(
            String myId, List<String> memberIds, String groupName)
        createPublicGroup,
    required TResult Function(String groupId) getUserList,
    required TResult Function(String groupId, String myId, String message)
        sendPublicGroupMessage,
  }) {
    return getUserList(groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String groupName, String myId, String message, String memberId)?
        createGroup,
    TResult Function(String groupId)? readMessage,
    TResult Function(String groupId)? getGroupInfo,
    TResult Function(String myId, List<String> memberIds, String groupName)?
        createPublicGroup,
    TResult Function(String groupId)? getUserList,
    TResult Function(String groupId, String myId, String message)?
        sendPublicGroupMessage,
  }) {
    return getUserList?.call(groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String groupName, String myId, String message, String memberId)?
        createGroup,
    TResult Function(String groupId)? readMessage,
    TResult Function(String groupId)? getGroupInfo,
    TResult Function(String myId, List<String> memberIds, String groupName)?
        createPublicGroup,
    TResult Function(String groupId)? getUserList,
    TResult Function(String groupId, String myId, String message)?
        sendPublicGroupMessage,
    required TResult orElse(),
  }) {
    if (getUserList != null) {
      return getUserList(groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventCreateGroup value) createGroup,
    required TResult Function(_EventReadMessage value) readMessage,
    required TResult Function(_EventGetUserInfo value) getGroupInfo,
    required TResult Function(_EventCreatePublicGroup value) createPublicGroup,
    required TResult Function(_EventGetUserList value) getUserList,
    required TResult Function(_EventSendPublicGroupMessage value)
        sendPublicGroupMessage,
  }) {
    return getUserList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventCreateGroup value)? createGroup,
    TResult Function(_EventReadMessage value)? readMessage,
    TResult Function(_EventGetUserInfo value)? getGroupInfo,
    TResult Function(_EventCreatePublicGroup value)? createPublicGroup,
    TResult Function(_EventGetUserList value)? getUserList,
    TResult Function(_EventSendPublicGroupMessage value)?
        sendPublicGroupMessage,
  }) {
    return getUserList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventCreateGroup value)? createGroup,
    TResult Function(_EventReadMessage value)? readMessage,
    TResult Function(_EventGetUserInfo value)? getGroupInfo,
    TResult Function(_EventCreatePublicGroup value)? createPublicGroup,
    TResult Function(_EventGetUserList value)? getUserList,
    TResult Function(_EventSendPublicGroupMessage value)?
        sendPublicGroupMessage,
    required TResult orElse(),
  }) {
    if (getUserList != null) {
      return getUserList(this);
    }
    return orElse();
  }
}

abstract class _EventGetUserList implements ChatRoomEvent {
  const factory _EventGetUserList({required final String groupId}) =
      _$_EventGetUserList;

  String get groupId;
  @JsonKey(ignore: true)
  _$$_EventGetUserListCopyWith<_$_EventGetUserList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventSendPublicGroupMessageCopyWith<$Res> {
  factory _$$_EventSendPublicGroupMessageCopyWith(
          _$_EventSendPublicGroupMessage value,
          $Res Function(_$_EventSendPublicGroupMessage) then) =
      __$$_EventSendPublicGroupMessageCopyWithImpl<$Res>;
  $Res call({String groupId, String myId, String message});
}

/// @nodoc
class __$$_EventSendPublicGroupMessageCopyWithImpl<$Res>
    extends _$ChatRoomEventCopyWithImpl<$Res>
    implements _$$_EventSendPublicGroupMessageCopyWith<$Res> {
  __$$_EventSendPublicGroupMessageCopyWithImpl(
      _$_EventSendPublicGroupMessage _value,
      $Res Function(_$_EventSendPublicGroupMessage) _then)
      : super(_value, (v) => _then(v as _$_EventSendPublicGroupMessage));

  @override
  _$_EventSendPublicGroupMessage get _value =>
      super._value as _$_EventSendPublicGroupMessage;

  @override
  $Res call({
    Object? groupId = freezed,
    Object? myId = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_EventSendPublicGroupMessage(
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      myId: myId == freezed
          ? _value.myId
          : myId // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventSendPublicGroupMessage implements _EventSendPublicGroupMessage {
  const _$_EventSendPublicGroupMessage(
      {required this.groupId, required this.myId, required this.message});

  @override
  final String groupId;
  @override
  final String myId;
  @override
  final String message;

  @override
  String toString() {
    return 'ChatRoomEvent.sendPublicGroupMessage(groupId: $groupId, myId: $myId, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventSendPublicGroupMessage &&
            const DeepCollectionEquality().equals(other.groupId, groupId) &&
            const DeepCollectionEquality().equals(other.myId, myId) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(groupId),
      const DeepCollectionEquality().hash(myId),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_EventSendPublicGroupMessageCopyWith<_$_EventSendPublicGroupMessage>
      get copyWith => __$$_EventSendPublicGroupMessageCopyWithImpl<
          _$_EventSendPublicGroupMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String groupName, String myId, String message, String memberId)
        createGroup,
    required TResult Function(String groupId) readMessage,
    required TResult Function(String groupId) getGroupInfo,
    required TResult Function(
            String myId, List<String> memberIds, String groupName)
        createPublicGroup,
    required TResult Function(String groupId) getUserList,
    required TResult Function(String groupId, String myId, String message)
        sendPublicGroupMessage,
  }) {
    return sendPublicGroupMessage(groupId, myId, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String groupName, String myId, String message, String memberId)?
        createGroup,
    TResult Function(String groupId)? readMessage,
    TResult Function(String groupId)? getGroupInfo,
    TResult Function(String myId, List<String> memberIds, String groupName)?
        createPublicGroup,
    TResult Function(String groupId)? getUserList,
    TResult Function(String groupId, String myId, String message)?
        sendPublicGroupMessage,
  }) {
    return sendPublicGroupMessage?.call(groupId, myId, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String groupName, String myId, String message, String memberId)?
        createGroup,
    TResult Function(String groupId)? readMessage,
    TResult Function(String groupId)? getGroupInfo,
    TResult Function(String myId, List<String> memberIds, String groupName)?
        createPublicGroup,
    TResult Function(String groupId)? getUserList,
    TResult Function(String groupId, String myId, String message)?
        sendPublicGroupMessage,
    required TResult orElse(),
  }) {
    if (sendPublicGroupMessage != null) {
      return sendPublicGroupMessage(groupId, myId, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventCreateGroup value) createGroup,
    required TResult Function(_EventReadMessage value) readMessage,
    required TResult Function(_EventGetUserInfo value) getGroupInfo,
    required TResult Function(_EventCreatePublicGroup value) createPublicGroup,
    required TResult Function(_EventGetUserList value) getUserList,
    required TResult Function(_EventSendPublicGroupMessage value)
        sendPublicGroupMessage,
  }) {
    return sendPublicGroupMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventCreateGroup value)? createGroup,
    TResult Function(_EventReadMessage value)? readMessage,
    TResult Function(_EventGetUserInfo value)? getGroupInfo,
    TResult Function(_EventCreatePublicGroup value)? createPublicGroup,
    TResult Function(_EventGetUserList value)? getUserList,
    TResult Function(_EventSendPublicGroupMessage value)?
        sendPublicGroupMessage,
  }) {
    return sendPublicGroupMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventCreateGroup value)? createGroup,
    TResult Function(_EventReadMessage value)? readMessage,
    TResult Function(_EventGetUserInfo value)? getGroupInfo,
    TResult Function(_EventCreatePublicGroup value)? createPublicGroup,
    TResult Function(_EventGetUserList value)? getUserList,
    TResult Function(_EventSendPublicGroupMessage value)?
        sendPublicGroupMessage,
    required TResult orElse(),
  }) {
    if (sendPublicGroupMessage != null) {
      return sendPublicGroupMessage(this);
    }
    return orElse();
  }
}

abstract class _EventSendPublicGroupMessage implements ChatRoomEvent {
  const factory _EventSendPublicGroupMessage(
      {required final String groupId,
      required final String myId,
      required final String message}) = _$_EventSendPublicGroupMessage;

  String get groupId;
  String get myId;
  String get message;
  @JsonKey(ignore: true)
  _$$_EventSendPublicGroupMessageCopyWith<_$_EventSendPublicGroupMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatRoomState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Message> get lMessage => throw _privateConstructorUsedError;
  GroupModel get groupInfo => throw _privateConstructorUsedError;
  List<UserModel> get lUserModel => throw _privateConstructorUsedError;
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
      {bool isLoading,
      List<Message> lMessage,
      GroupModel groupInfo,
      List<UserModel> lUserModel,
      Option<Either<Failure, String>> optionSuccessOrFailure});
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
    Object? lMessage = freezed,
    Object? groupInfo = freezed,
    Object? lUserModel = freezed,
    Object? optionSuccessOrFailure = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      lMessage: lMessage == freezed
          ? _value.lMessage
          : lMessage // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      groupInfo: groupInfo == freezed
          ? _value.groupInfo
          : groupInfo // ignore: cast_nullable_to_non_nullable
              as GroupModel,
      lUserModel: lUserModel == freezed
          ? _value.lUserModel
          : lUserModel // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
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
      {bool isLoading,
      List<Message> lMessage,
      GroupModel groupInfo,
      List<UserModel> lUserModel,
      Option<Either<Failure, String>> optionSuccessOrFailure});
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
    Object? lMessage = freezed,
    Object? groupInfo = freezed,
    Object? lUserModel = freezed,
    Object? optionSuccessOrFailure = freezed,
  }) {
    return _then(_$_ChatRoomState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      lMessage: lMessage == freezed
          ? _value._lMessage
          : lMessage // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      groupInfo: groupInfo == freezed
          ? _value.groupInfo
          : groupInfo // ignore: cast_nullable_to_non_nullable
              as GroupModel,
      lUserModel: lUserModel == freezed
          ? _value._lUserModel
          : lUserModel // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
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
      {required this.isLoading,
      required final List<Message> lMessage,
      required this.groupInfo,
      required final List<UserModel> lUserModel,
      required this.optionSuccessOrFailure})
      : _lMessage = lMessage,
        _lUserModel = lUserModel;

  @override
  final bool isLoading;
  final List<Message> _lMessage;
  @override
  List<Message> get lMessage {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lMessage);
  }

  @override
  final GroupModel groupInfo;
  final List<UserModel> _lUserModel;
  @override
  List<UserModel> get lUserModel {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lUserModel);
  }

  @override
  final Option<Either<Failure, String>> optionSuccessOrFailure;

  @override
  String toString() {
    return 'ChatRoomState(isLoading: $isLoading, lMessage: $lMessage, groupInfo: $groupInfo, lUserModel: $lUserModel, optionSuccessOrFailure: $optionSuccessOrFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatRoomState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other._lMessage, _lMessage) &&
            const DeepCollectionEquality().equals(other.groupInfo, groupInfo) &&
            const DeepCollectionEquality()
                .equals(other._lUserModel, _lUserModel) &&
            const DeepCollectionEquality()
                .equals(other.optionSuccessOrFailure, optionSuccessOrFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_lMessage),
      const DeepCollectionEquality().hash(groupInfo),
      const DeepCollectionEquality().hash(_lUserModel),
      const DeepCollectionEquality().hash(optionSuccessOrFailure));

  @JsonKey(ignore: true)
  @override
  _$$_ChatRoomStateCopyWith<_$_ChatRoomState> get copyWith =>
      __$$_ChatRoomStateCopyWithImpl<_$_ChatRoomState>(this, _$identity);
}

abstract class _ChatRoomState implements ChatRoomState {
  const factory _ChatRoomState(
      {required final bool isLoading,
      required final List<Message> lMessage,
      required final GroupModel groupInfo,
      required final List<UserModel> lUserModel,
      required final Option<Either<Failure, String>>
          optionSuccessOrFailure}) = _$_ChatRoomState;

  @override
  bool get isLoading;
  @override
  List<Message> get lMessage;
  @override
  GroupModel get groupInfo;
  @override
  List<UserModel> get lUserModel;
  @override
  Option<Either<Failure, String>> get optionSuccessOrFailure;
  @override
  @JsonKey(ignore: true)
  _$$_ChatRoomStateCopyWith<_$_ChatRoomState> get copyWith =>
      throw _privateConstructorUsedError;
}
