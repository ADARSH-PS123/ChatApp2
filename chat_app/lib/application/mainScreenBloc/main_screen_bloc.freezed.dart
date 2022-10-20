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
    required TResult Function(String uid) showChatLists,
    required TResult Function(String destination, bool isDeletion) userProfile,
    required TResult Function(String userName, String userId) editUserName,
    required TResult Function(String uid) showUserList,
    required TResult Function(String uid) showPublicChatLists,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String uid)? getUserInfo,
    TResult Function(String name)? serachUser,
    TResult Function(String uid)? showChatLists,
    TResult Function(String destination, bool isDeletion)? userProfile,
    TResult Function(String userName, String userId)? editUserName,
    TResult Function(String uid)? showUserList,
    TResult Function(String uid)? showPublicChatLists,
    TResult Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? getUserInfo,
    TResult Function(String name)? serachUser,
    TResult Function(String uid)? showChatLists,
    TResult Function(String destination, bool isDeletion)? userProfile,
    TResult Function(String userName, String userId)? editUserName,
    TResult Function(String uid)? showUserList,
    TResult Function(String uid)? showPublicChatLists,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventGetUserInfo value) getUserInfo,
    required TResult Function(_EventSearchUser value) serachUser,
    required TResult Function(_EventShowChatLists value) showChatLists,
    required TResult Function(_EventUserProfile value) userProfile,
    required TResult Function(_EventEditUserName value) editUserName,
    required TResult Function(_EventShowUserLists value) showUserList,
    required TResult Function(_EventShowPublicChatLists value)
        showPublicChatLists,
    required TResult Function(_EventSignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventGetUserInfo value)? getUserInfo,
    TResult Function(_EventSearchUser value)? serachUser,
    TResult Function(_EventShowChatLists value)? showChatLists,
    TResult Function(_EventUserProfile value)? userProfile,
    TResult Function(_EventEditUserName value)? editUserName,
    TResult Function(_EventShowUserLists value)? showUserList,
    TResult Function(_EventShowPublicChatLists value)? showPublicChatLists,
    TResult Function(_EventSignOut value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventGetUserInfo value)? getUserInfo,
    TResult Function(_EventSearchUser value)? serachUser,
    TResult Function(_EventShowChatLists value)? showChatLists,
    TResult Function(_EventUserProfile value)? userProfile,
    TResult Function(_EventEditUserName value)? editUserName,
    TResult Function(_EventShowUserLists value)? showUserList,
    TResult Function(_EventShowPublicChatLists value)? showPublicChatLists,
    TResult Function(_EventSignOut value)? signOut,
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
    required TResult Function(String uid) showChatLists,
    required TResult Function(String destination, bool isDeletion) userProfile,
    required TResult Function(String userName, String userId) editUserName,
    required TResult Function(String uid) showUserList,
    required TResult Function(String uid) showPublicChatLists,
    required TResult Function() signOut,
  }) {
    return getUserInfo(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String uid)? getUserInfo,
    TResult Function(String name)? serachUser,
    TResult Function(String uid)? showChatLists,
    TResult Function(String destination, bool isDeletion)? userProfile,
    TResult Function(String userName, String userId)? editUserName,
    TResult Function(String uid)? showUserList,
    TResult Function(String uid)? showPublicChatLists,
    TResult Function()? signOut,
  }) {
    return getUserInfo?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? getUserInfo,
    TResult Function(String name)? serachUser,
    TResult Function(String uid)? showChatLists,
    TResult Function(String destination, bool isDeletion)? userProfile,
    TResult Function(String userName, String userId)? editUserName,
    TResult Function(String uid)? showUserList,
    TResult Function(String uid)? showPublicChatLists,
    TResult Function()? signOut,
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
    required TResult Function(_EventShowChatLists value) showChatLists,
    required TResult Function(_EventUserProfile value) userProfile,
    required TResult Function(_EventEditUserName value) editUserName,
    required TResult Function(_EventShowUserLists value) showUserList,
    required TResult Function(_EventShowPublicChatLists value)
        showPublicChatLists,
    required TResult Function(_EventSignOut value) signOut,
  }) {
    return getUserInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventGetUserInfo value)? getUserInfo,
    TResult Function(_EventSearchUser value)? serachUser,
    TResult Function(_EventShowChatLists value)? showChatLists,
    TResult Function(_EventUserProfile value)? userProfile,
    TResult Function(_EventEditUserName value)? editUserName,
    TResult Function(_EventShowUserLists value)? showUserList,
    TResult Function(_EventShowPublicChatLists value)? showPublicChatLists,
    TResult Function(_EventSignOut value)? signOut,
  }) {
    return getUserInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventGetUserInfo value)? getUserInfo,
    TResult Function(_EventSearchUser value)? serachUser,
    TResult Function(_EventShowChatLists value)? showChatLists,
    TResult Function(_EventUserProfile value)? userProfile,
    TResult Function(_EventEditUserName value)? editUserName,
    TResult Function(_EventShowUserLists value)? showUserList,
    TResult Function(_EventShowPublicChatLists value)? showPublicChatLists,
    TResult Function(_EventSignOut value)? signOut,
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
    required TResult Function(String uid) showChatLists,
    required TResult Function(String destination, bool isDeletion) userProfile,
    required TResult Function(String userName, String userId) editUserName,
    required TResult Function(String uid) showUserList,
    required TResult Function(String uid) showPublicChatLists,
    required TResult Function() signOut,
  }) {
    return serachUser(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String uid)? getUserInfo,
    TResult Function(String name)? serachUser,
    TResult Function(String uid)? showChatLists,
    TResult Function(String destination, bool isDeletion)? userProfile,
    TResult Function(String userName, String userId)? editUserName,
    TResult Function(String uid)? showUserList,
    TResult Function(String uid)? showPublicChatLists,
    TResult Function()? signOut,
  }) {
    return serachUser?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? getUserInfo,
    TResult Function(String name)? serachUser,
    TResult Function(String uid)? showChatLists,
    TResult Function(String destination, bool isDeletion)? userProfile,
    TResult Function(String userName, String userId)? editUserName,
    TResult Function(String uid)? showUserList,
    TResult Function(String uid)? showPublicChatLists,
    TResult Function()? signOut,
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
    required TResult Function(_EventShowChatLists value) showChatLists,
    required TResult Function(_EventUserProfile value) userProfile,
    required TResult Function(_EventEditUserName value) editUserName,
    required TResult Function(_EventShowUserLists value) showUserList,
    required TResult Function(_EventShowPublicChatLists value)
        showPublicChatLists,
    required TResult Function(_EventSignOut value) signOut,
  }) {
    return serachUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventGetUserInfo value)? getUserInfo,
    TResult Function(_EventSearchUser value)? serachUser,
    TResult Function(_EventShowChatLists value)? showChatLists,
    TResult Function(_EventUserProfile value)? userProfile,
    TResult Function(_EventEditUserName value)? editUserName,
    TResult Function(_EventShowUserLists value)? showUserList,
    TResult Function(_EventShowPublicChatLists value)? showPublicChatLists,
    TResult Function(_EventSignOut value)? signOut,
  }) {
    return serachUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventGetUserInfo value)? getUserInfo,
    TResult Function(_EventSearchUser value)? serachUser,
    TResult Function(_EventShowChatLists value)? showChatLists,
    TResult Function(_EventUserProfile value)? userProfile,
    TResult Function(_EventEditUserName value)? editUserName,
    TResult Function(_EventShowUserLists value)? showUserList,
    TResult Function(_EventShowPublicChatLists value)? showPublicChatLists,
    TResult Function(_EventSignOut value)? signOut,
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
abstract class _$$_EventShowChatListsCopyWith<$Res> {
  factory _$$_EventShowChatListsCopyWith(_$_EventShowChatLists value,
          $Res Function(_$_EventShowChatLists) then) =
      __$$_EventShowChatListsCopyWithImpl<$Res>;
  $Res call({String uid});
}

/// @nodoc
class __$$_EventShowChatListsCopyWithImpl<$Res>
    extends _$MainScreenEventCopyWithImpl<$Res>
    implements _$$_EventShowChatListsCopyWith<$Res> {
  __$$_EventShowChatListsCopyWithImpl(
      _$_EventShowChatLists _value, $Res Function(_$_EventShowChatLists) _then)
      : super(_value, (v) => _then(v as _$_EventShowChatLists));

  @override
  _$_EventShowChatLists get _value => super._value as _$_EventShowChatLists;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_$_EventShowChatLists(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventShowChatLists implements _EventShowChatLists {
  const _$_EventShowChatLists({required this.uid});

  @override
  final String uid;

  @override
  String toString() {
    return 'MainScreenEvent.showChatLists(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventShowChatLists &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  _$$_EventShowChatListsCopyWith<_$_EventShowChatLists> get copyWith =>
      __$$_EventShowChatListsCopyWithImpl<_$_EventShowChatLists>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) getUserInfo,
    required TResult Function(String name) serachUser,
    required TResult Function(String uid) showChatLists,
    required TResult Function(String destination, bool isDeletion) userProfile,
    required TResult Function(String userName, String userId) editUserName,
    required TResult Function(String uid) showUserList,
    required TResult Function(String uid) showPublicChatLists,
    required TResult Function() signOut,
  }) {
    return showChatLists(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String uid)? getUserInfo,
    TResult Function(String name)? serachUser,
    TResult Function(String uid)? showChatLists,
    TResult Function(String destination, bool isDeletion)? userProfile,
    TResult Function(String userName, String userId)? editUserName,
    TResult Function(String uid)? showUserList,
    TResult Function(String uid)? showPublicChatLists,
    TResult Function()? signOut,
  }) {
    return showChatLists?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? getUserInfo,
    TResult Function(String name)? serachUser,
    TResult Function(String uid)? showChatLists,
    TResult Function(String destination, bool isDeletion)? userProfile,
    TResult Function(String userName, String userId)? editUserName,
    TResult Function(String uid)? showUserList,
    TResult Function(String uid)? showPublicChatLists,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (showChatLists != null) {
      return showChatLists(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventGetUserInfo value) getUserInfo,
    required TResult Function(_EventSearchUser value) serachUser,
    required TResult Function(_EventShowChatLists value) showChatLists,
    required TResult Function(_EventUserProfile value) userProfile,
    required TResult Function(_EventEditUserName value) editUserName,
    required TResult Function(_EventShowUserLists value) showUserList,
    required TResult Function(_EventShowPublicChatLists value)
        showPublicChatLists,
    required TResult Function(_EventSignOut value) signOut,
  }) {
    return showChatLists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventGetUserInfo value)? getUserInfo,
    TResult Function(_EventSearchUser value)? serachUser,
    TResult Function(_EventShowChatLists value)? showChatLists,
    TResult Function(_EventUserProfile value)? userProfile,
    TResult Function(_EventEditUserName value)? editUserName,
    TResult Function(_EventShowUserLists value)? showUserList,
    TResult Function(_EventShowPublicChatLists value)? showPublicChatLists,
    TResult Function(_EventSignOut value)? signOut,
  }) {
    return showChatLists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventGetUserInfo value)? getUserInfo,
    TResult Function(_EventSearchUser value)? serachUser,
    TResult Function(_EventShowChatLists value)? showChatLists,
    TResult Function(_EventUserProfile value)? userProfile,
    TResult Function(_EventEditUserName value)? editUserName,
    TResult Function(_EventShowUserLists value)? showUserList,
    TResult Function(_EventShowPublicChatLists value)? showPublicChatLists,
    TResult Function(_EventSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (showChatLists != null) {
      return showChatLists(this);
    }
    return orElse();
  }
}

abstract class _EventShowChatLists implements MainScreenEvent {
  const factory _EventShowChatLists({required final String uid}) =
      _$_EventShowChatLists;

  String get uid;
  @JsonKey(ignore: true)
  _$$_EventShowChatListsCopyWith<_$_EventShowChatLists> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventUserProfileCopyWith<$Res> {
  factory _$$_EventUserProfileCopyWith(
          _$_EventUserProfile value, $Res Function(_$_EventUserProfile) then) =
      __$$_EventUserProfileCopyWithImpl<$Res>;
  $Res call({String destination, bool isDeletion});
}

/// @nodoc
class __$$_EventUserProfileCopyWithImpl<$Res>
    extends _$MainScreenEventCopyWithImpl<$Res>
    implements _$$_EventUserProfileCopyWith<$Res> {
  __$$_EventUserProfileCopyWithImpl(
      _$_EventUserProfile _value, $Res Function(_$_EventUserProfile) _then)
      : super(_value, (v) => _then(v as _$_EventUserProfile));

  @override
  _$_EventUserProfile get _value => super._value as _$_EventUserProfile;

  @override
  $Res call({
    Object? destination = freezed,
    Object? isDeletion = freezed,
  }) {
    return _then(_$_EventUserProfile(
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      isDeletion: isDeletion == freezed
          ? _value.isDeletion
          : isDeletion // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EventUserProfile implements _EventUserProfile {
  const _$_EventUserProfile(
      {required this.destination, required this.isDeletion});

  @override
  final String destination;
  @override
  final bool isDeletion;

  @override
  String toString() {
    return 'MainScreenEvent.userProfile(destination: $destination, isDeletion: $isDeletion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventUserProfile &&
            const DeepCollectionEquality()
                .equals(other.destination, destination) &&
            const DeepCollectionEquality()
                .equals(other.isDeletion, isDeletion));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(destination),
      const DeepCollectionEquality().hash(isDeletion));

  @JsonKey(ignore: true)
  @override
  _$$_EventUserProfileCopyWith<_$_EventUserProfile> get copyWith =>
      __$$_EventUserProfileCopyWithImpl<_$_EventUserProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) getUserInfo,
    required TResult Function(String name) serachUser,
    required TResult Function(String uid) showChatLists,
    required TResult Function(String destination, bool isDeletion) userProfile,
    required TResult Function(String userName, String userId) editUserName,
    required TResult Function(String uid) showUserList,
    required TResult Function(String uid) showPublicChatLists,
    required TResult Function() signOut,
  }) {
    return userProfile(destination, isDeletion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String uid)? getUserInfo,
    TResult Function(String name)? serachUser,
    TResult Function(String uid)? showChatLists,
    TResult Function(String destination, bool isDeletion)? userProfile,
    TResult Function(String userName, String userId)? editUserName,
    TResult Function(String uid)? showUserList,
    TResult Function(String uid)? showPublicChatLists,
    TResult Function()? signOut,
  }) {
    return userProfile?.call(destination, isDeletion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? getUserInfo,
    TResult Function(String name)? serachUser,
    TResult Function(String uid)? showChatLists,
    TResult Function(String destination, bool isDeletion)? userProfile,
    TResult Function(String userName, String userId)? editUserName,
    TResult Function(String uid)? showUserList,
    TResult Function(String uid)? showPublicChatLists,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (userProfile != null) {
      return userProfile(destination, isDeletion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventGetUserInfo value) getUserInfo,
    required TResult Function(_EventSearchUser value) serachUser,
    required TResult Function(_EventShowChatLists value) showChatLists,
    required TResult Function(_EventUserProfile value) userProfile,
    required TResult Function(_EventEditUserName value) editUserName,
    required TResult Function(_EventShowUserLists value) showUserList,
    required TResult Function(_EventShowPublicChatLists value)
        showPublicChatLists,
    required TResult Function(_EventSignOut value) signOut,
  }) {
    return userProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventGetUserInfo value)? getUserInfo,
    TResult Function(_EventSearchUser value)? serachUser,
    TResult Function(_EventShowChatLists value)? showChatLists,
    TResult Function(_EventUserProfile value)? userProfile,
    TResult Function(_EventEditUserName value)? editUserName,
    TResult Function(_EventShowUserLists value)? showUserList,
    TResult Function(_EventShowPublicChatLists value)? showPublicChatLists,
    TResult Function(_EventSignOut value)? signOut,
  }) {
    return userProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventGetUserInfo value)? getUserInfo,
    TResult Function(_EventSearchUser value)? serachUser,
    TResult Function(_EventShowChatLists value)? showChatLists,
    TResult Function(_EventUserProfile value)? userProfile,
    TResult Function(_EventEditUserName value)? editUserName,
    TResult Function(_EventShowUserLists value)? showUserList,
    TResult Function(_EventShowPublicChatLists value)? showPublicChatLists,
    TResult Function(_EventSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (userProfile != null) {
      return userProfile(this);
    }
    return orElse();
  }
}

abstract class _EventUserProfile implements MainScreenEvent {
  const factory _EventUserProfile(
      {required final String destination,
      required final bool isDeletion}) = _$_EventUserProfile;

  String get destination;
  bool get isDeletion;
  @JsonKey(ignore: true)
  _$$_EventUserProfileCopyWith<_$_EventUserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventEditUserNameCopyWith<$Res> {
  factory _$$_EventEditUserNameCopyWith(_$_EventEditUserName value,
          $Res Function(_$_EventEditUserName) then) =
      __$$_EventEditUserNameCopyWithImpl<$Res>;
  $Res call({String userName, String userId});
}

/// @nodoc
class __$$_EventEditUserNameCopyWithImpl<$Res>
    extends _$MainScreenEventCopyWithImpl<$Res>
    implements _$$_EventEditUserNameCopyWith<$Res> {
  __$$_EventEditUserNameCopyWithImpl(
      _$_EventEditUserName _value, $Res Function(_$_EventEditUserName) _then)
      : super(_value, (v) => _then(v as _$_EventEditUserName));

  @override
  _$_EventEditUserName get _value => super._value as _$_EventEditUserName;

  @override
  $Res call({
    Object? userName = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$_EventEditUserName(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventEditUserName implements _EventEditUserName {
  const _$_EventEditUserName({required this.userName, required this.userId});

  @override
  final String userName;
  @override
  final String userId;

  @override
  String toString() {
    return 'MainScreenEvent.editUserName(userName: $userName, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventEditUserName &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$$_EventEditUserNameCopyWith<_$_EventEditUserName> get copyWith =>
      __$$_EventEditUserNameCopyWithImpl<_$_EventEditUserName>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) getUserInfo,
    required TResult Function(String name) serachUser,
    required TResult Function(String uid) showChatLists,
    required TResult Function(String destination, bool isDeletion) userProfile,
    required TResult Function(String userName, String userId) editUserName,
    required TResult Function(String uid) showUserList,
    required TResult Function(String uid) showPublicChatLists,
    required TResult Function() signOut,
  }) {
    return editUserName(userName, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String uid)? getUserInfo,
    TResult Function(String name)? serachUser,
    TResult Function(String uid)? showChatLists,
    TResult Function(String destination, bool isDeletion)? userProfile,
    TResult Function(String userName, String userId)? editUserName,
    TResult Function(String uid)? showUserList,
    TResult Function(String uid)? showPublicChatLists,
    TResult Function()? signOut,
  }) {
    return editUserName?.call(userName, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? getUserInfo,
    TResult Function(String name)? serachUser,
    TResult Function(String uid)? showChatLists,
    TResult Function(String destination, bool isDeletion)? userProfile,
    TResult Function(String userName, String userId)? editUserName,
    TResult Function(String uid)? showUserList,
    TResult Function(String uid)? showPublicChatLists,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (editUserName != null) {
      return editUserName(userName, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventGetUserInfo value) getUserInfo,
    required TResult Function(_EventSearchUser value) serachUser,
    required TResult Function(_EventShowChatLists value) showChatLists,
    required TResult Function(_EventUserProfile value) userProfile,
    required TResult Function(_EventEditUserName value) editUserName,
    required TResult Function(_EventShowUserLists value) showUserList,
    required TResult Function(_EventShowPublicChatLists value)
        showPublicChatLists,
    required TResult Function(_EventSignOut value) signOut,
  }) {
    return editUserName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventGetUserInfo value)? getUserInfo,
    TResult Function(_EventSearchUser value)? serachUser,
    TResult Function(_EventShowChatLists value)? showChatLists,
    TResult Function(_EventUserProfile value)? userProfile,
    TResult Function(_EventEditUserName value)? editUserName,
    TResult Function(_EventShowUserLists value)? showUserList,
    TResult Function(_EventShowPublicChatLists value)? showPublicChatLists,
    TResult Function(_EventSignOut value)? signOut,
  }) {
    return editUserName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventGetUserInfo value)? getUserInfo,
    TResult Function(_EventSearchUser value)? serachUser,
    TResult Function(_EventShowChatLists value)? showChatLists,
    TResult Function(_EventUserProfile value)? userProfile,
    TResult Function(_EventEditUserName value)? editUserName,
    TResult Function(_EventShowUserLists value)? showUserList,
    TResult Function(_EventShowPublicChatLists value)? showPublicChatLists,
    TResult Function(_EventSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (editUserName != null) {
      return editUserName(this);
    }
    return orElse();
  }
}

abstract class _EventEditUserName implements MainScreenEvent {
  const factory _EventEditUserName(
      {required final String userName,
      required final String userId}) = _$_EventEditUserName;

  String get userName;
  String get userId;
  @JsonKey(ignore: true)
  _$$_EventEditUserNameCopyWith<_$_EventEditUserName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventShowUserListsCopyWith<$Res> {
  factory _$$_EventShowUserListsCopyWith(_$_EventShowUserLists value,
          $Res Function(_$_EventShowUserLists) then) =
      __$$_EventShowUserListsCopyWithImpl<$Res>;
  $Res call({String uid});
}

/// @nodoc
class __$$_EventShowUserListsCopyWithImpl<$Res>
    extends _$MainScreenEventCopyWithImpl<$Res>
    implements _$$_EventShowUserListsCopyWith<$Res> {
  __$$_EventShowUserListsCopyWithImpl(
      _$_EventShowUserLists _value, $Res Function(_$_EventShowUserLists) _then)
      : super(_value, (v) => _then(v as _$_EventShowUserLists));

  @override
  _$_EventShowUserLists get _value => super._value as _$_EventShowUserLists;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_$_EventShowUserLists(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventShowUserLists implements _EventShowUserLists {
  const _$_EventShowUserLists({required this.uid});

  @override
  final String uid;

  @override
  String toString() {
    return 'MainScreenEvent.showUserList(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventShowUserLists &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  _$$_EventShowUserListsCopyWith<_$_EventShowUserLists> get copyWith =>
      __$$_EventShowUserListsCopyWithImpl<_$_EventShowUserLists>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) getUserInfo,
    required TResult Function(String name) serachUser,
    required TResult Function(String uid) showChatLists,
    required TResult Function(String destination, bool isDeletion) userProfile,
    required TResult Function(String userName, String userId) editUserName,
    required TResult Function(String uid) showUserList,
    required TResult Function(String uid) showPublicChatLists,
    required TResult Function() signOut,
  }) {
    return showUserList(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String uid)? getUserInfo,
    TResult Function(String name)? serachUser,
    TResult Function(String uid)? showChatLists,
    TResult Function(String destination, bool isDeletion)? userProfile,
    TResult Function(String userName, String userId)? editUserName,
    TResult Function(String uid)? showUserList,
    TResult Function(String uid)? showPublicChatLists,
    TResult Function()? signOut,
  }) {
    return showUserList?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? getUserInfo,
    TResult Function(String name)? serachUser,
    TResult Function(String uid)? showChatLists,
    TResult Function(String destination, bool isDeletion)? userProfile,
    TResult Function(String userName, String userId)? editUserName,
    TResult Function(String uid)? showUserList,
    TResult Function(String uid)? showPublicChatLists,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (showUserList != null) {
      return showUserList(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventGetUserInfo value) getUserInfo,
    required TResult Function(_EventSearchUser value) serachUser,
    required TResult Function(_EventShowChatLists value) showChatLists,
    required TResult Function(_EventUserProfile value) userProfile,
    required TResult Function(_EventEditUserName value) editUserName,
    required TResult Function(_EventShowUserLists value) showUserList,
    required TResult Function(_EventShowPublicChatLists value)
        showPublicChatLists,
    required TResult Function(_EventSignOut value) signOut,
  }) {
    return showUserList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventGetUserInfo value)? getUserInfo,
    TResult Function(_EventSearchUser value)? serachUser,
    TResult Function(_EventShowChatLists value)? showChatLists,
    TResult Function(_EventUserProfile value)? userProfile,
    TResult Function(_EventEditUserName value)? editUserName,
    TResult Function(_EventShowUserLists value)? showUserList,
    TResult Function(_EventShowPublicChatLists value)? showPublicChatLists,
    TResult Function(_EventSignOut value)? signOut,
  }) {
    return showUserList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventGetUserInfo value)? getUserInfo,
    TResult Function(_EventSearchUser value)? serachUser,
    TResult Function(_EventShowChatLists value)? showChatLists,
    TResult Function(_EventUserProfile value)? userProfile,
    TResult Function(_EventEditUserName value)? editUserName,
    TResult Function(_EventShowUserLists value)? showUserList,
    TResult Function(_EventShowPublicChatLists value)? showPublicChatLists,
    TResult Function(_EventSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (showUserList != null) {
      return showUserList(this);
    }
    return orElse();
  }
}

abstract class _EventShowUserLists implements MainScreenEvent {
  const factory _EventShowUserLists({required final String uid}) =
      _$_EventShowUserLists;

  String get uid;
  @JsonKey(ignore: true)
  _$$_EventShowUserListsCopyWith<_$_EventShowUserLists> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventShowPublicChatListsCopyWith<$Res> {
  factory _$$_EventShowPublicChatListsCopyWith(
          _$_EventShowPublicChatLists value,
          $Res Function(_$_EventShowPublicChatLists) then) =
      __$$_EventShowPublicChatListsCopyWithImpl<$Res>;
  $Res call({String uid});
}

/// @nodoc
class __$$_EventShowPublicChatListsCopyWithImpl<$Res>
    extends _$MainScreenEventCopyWithImpl<$Res>
    implements _$$_EventShowPublicChatListsCopyWith<$Res> {
  __$$_EventShowPublicChatListsCopyWithImpl(_$_EventShowPublicChatLists _value,
      $Res Function(_$_EventShowPublicChatLists) _then)
      : super(_value, (v) => _then(v as _$_EventShowPublicChatLists));

  @override
  _$_EventShowPublicChatLists get _value =>
      super._value as _$_EventShowPublicChatLists;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_$_EventShowPublicChatLists(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventShowPublicChatLists implements _EventShowPublicChatLists {
  const _$_EventShowPublicChatLists({required this.uid});

  @override
  final String uid;

  @override
  String toString() {
    return 'MainScreenEvent.showPublicChatLists(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventShowPublicChatLists &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  _$$_EventShowPublicChatListsCopyWith<_$_EventShowPublicChatLists>
      get copyWith => __$$_EventShowPublicChatListsCopyWithImpl<
          _$_EventShowPublicChatLists>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) getUserInfo,
    required TResult Function(String name) serachUser,
    required TResult Function(String uid) showChatLists,
    required TResult Function(String destination, bool isDeletion) userProfile,
    required TResult Function(String userName, String userId) editUserName,
    required TResult Function(String uid) showUserList,
    required TResult Function(String uid) showPublicChatLists,
    required TResult Function() signOut,
  }) {
    return showPublicChatLists(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String uid)? getUserInfo,
    TResult Function(String name)? serachUser,
    TResult Function(String uid)? showChatLists,
    TResult Function(String destination, bool isDeletion)? userProfile,
    TResult Function(String userName, String userId)? editUserName,
    TResult Function(String uid)? showUserList,
    TResult Function(String uid)? showPublicChatLists,
    TResult Function()? signOut,
  }) {
    return showPublicChatLists?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? getUserInfo,
    TResult Function(String name)? serachUser,
    TResult Function(String uid)? showChatLists,
    TResult Function(String destination, bool isDeletion)? userProfile,
    TResult Function(String userName, String userId)? editUserName,
    TResult Function(String uid)? showUserList,
    TResult Function(String uid)? showPublicChatLists,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (showPublicChatLists != null) {
      return showPublicChatLists(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventGetUserInfo value) getUserInfo,
    required TResult Function(_EventSearchUser value) serachUser,
    required TResult Function(_EventShowChatLists value) showChatLists,
    required TResult Function(_EventUserProfile value) userProfile,
    required TResult Function(_EventEditUserName value) editUserName,
    required TResult Function(_EventShowUserLists value) showUserList,
    required TResult Function(_EventShowPublicChatLists value)
        showPublicChatLists,
    required TResult Function(_EventSignOut value) signOut,
  }) {
    return showPublicChatLists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventGetUserInfo value)? getUserInfo,
    TResult Function(_EventSearchUser value)? serachUser,
    TResult Function(_EventShowChatLists value)? showChatLists,
    TResult Function(_EventUserProfile value)? userProfile,
    TResult Function(_EventEditUserName value)? editUserName,
    TResult Function(_EventShowUserLists value)? showUserList,
    TResult Function(_EventShowPublicChatLists value)? showPublicChatLists,
    TResult Function(_EventSignOut value)? signOut,
  }) {
    return showPublicChatLists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventGetUserInfo value)? getUserInfo,
    TResult Function(_EventSearchUser value)? serachUser,
    TResult Function(_EventShowChatLists value)? showChatLists,
    TResult Function(_EventUserProfile value)? userProfile,
    TResult Function(_EventEditUserName value)? editUserName,
    TResult Function(_EventShowUserLists value)? showUserList,
    TResult Function(_EventShowPublicChatLists value)? showPublicChatLists,
    TResult Function(_EventSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (showPublicChatLists != null) {
      return showPublicChatLists(this);
    }
    return orElse();
  }
}

abstract class _EventShowPublicChatLists implements MainScreenEvent {
  const factory _EventShowPublicChatLists({required final String uid}) =
      _$_EventShowPublicChatLists;

  String get uid;
  @JsonKey(ignore: true)
  _$$_EventShowPublicChatListsCopyWith<_$_EventShowPublicChatLists>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventSignOutCopyWith<$Res> {
  factory _$$_EventSignOutCopyWith(
          _$_EventSignOut value, $Res Function(_$_EventSignOut) then) =
      __$$_EventSignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EventSignOutCopyWithImpl<$Res>
    extends _$MainScreenEventCopyWithImpl<$Res>
    implements _$$_EventSignOutCopyWith<$Res> {
  __$$_EventSignOutCopyWithImpl(
      _$_EventSignOut _value, $Res Function(_$_EventSignOut) _then)
      : super(_value, (v) => _then(v as _$_EventSignOut));

  @override
  _$_EventSignOut get _value => super._value as _$_EventSignOut;
}

/// @nodoc

class _$_EventSignOut implements _EventSignOut {
  const _$_EventSignOut();

  @override
  String toString() {
    return 'MainScreenEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EventSignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) getUserInfo,
    required TResult Function(String name) serachUser,
    required TResult Function(String uid) showChatLists,
    required TResult Function(String destination, bool isDeletion) userProfile,
    required TResult Function(String userName, String userId) editUserName,
    required TResult Function(String uid) showUserList,
    required TResult Function(String uid) showPublicChatLists,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String uid)? getUserInfo,
    TResult Function(String name)? serachUser,
    TResult Function(String uid)? showChatLists,
    TResult Function(String destination, bool isDeletion)? userProfile,
    TResult Function(String userName, String userId)? editUserName,
    TResult Function(String uid)? showUserList,
    TResult Function(String uid)? showPublicChatLists,
    TResult Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? getUserInfo,
    TResult Function(String name)? serachUser,
    TResult Function(String uid)? showChatLists,
    TResult Function(String destination, bool isDeletion)? userProfile,
    TResult Function(String userName, String userId)? editUserName,
    TResult Function(String uid)? showUserList,
    TResult Function(String uid)? showPublicChatLists,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventGetUserInfo value) getUserInfo,
    required TResult Function(_EventSearchUser value) serachUser,
    required TResult Function(_EventShowChatLists value) showChatLists,
    required TResult Function(_EventUserProfile value) userProfile,
    required TResult Function(_EventEditUserName value) editUserName,
    required TResult Function(_EventShowUserLists value) showUserList,
    required TResult Function(_EventShowPublicChatLists value)
        showPublicChatLists,
    required TResult Function(_EventSignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventGetUserInfo value)? getUserInfo,
    TResult Function(_EventSearchUser value)? serachUser,
    TResult Function(_EventShowChatLists value)? showChatLists,
    TResult Function(_EventUserProfile value)? userProfile,
    TResult Function(_EventEditUserName value)? editUserName,
    TResult Function(_EventShowUserLists value)? showUserList,
    TResult Function(_EventShowPublicChatLists value)? showPublicChatLists,
    TResult Function(_EventSignOut value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventGetUserInfo value)? getUserInfo,
    TResult Function(_EventSearchUser value)? serachUser,
    TResult Function(_EventShowChatLists value)? showChatLists,
    TResult Function(_EventUserProfile value)? userProfile,
    TResult Function(_EventEditUserName value)? editUserName,
    TResult Function(_EventShowUserLists value)? showUserList,
    TResult Function(_EventShowPublicChatLists value)? showPublicChatLists,
    TResult Function(_EventSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _EventSignOut implements MainScreenEvent {
  const factory _EventSignOut() = _$_EventSignOut;
}

/// @nodoc
mixin _$MainScreenState {
  Option<Either<Failure, UserModel>> get optionUserSucessOrFailure =>
      throw _privateConstructorUsedError;
  UserModel get userModel => throw _privateConstructorUsedError;
  List<UserModel> get lUserModel => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool? get isSignedOut => throw _privateConstructorUsedError;
  List<GroupModel> get groupModelList => throw _privateConstructorUsedError;
  List<GroupModel> get lGroupModel => throw _privateConstructorUsedError;

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
      List<UserModel> lUserModel,
      bool isLoading,
      bool? isSignedOut,
      List<GroupModel> groupModelList,
      List<GroupModel> lGroupModel});
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
    Object? lUserModel = freezed,
    Object? isLoading = freezed,
    Object? isSignedOut = freezed,
    Object? groupModelList = freezed,
    Object? lGroupModel = freezed,
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
      lUserModel: lUserModel == freezed
          ? _value.lUserModel
          : lUserModel // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignedOut: isSignedOut == freezed
          ? _value.isSignedOut
          : isSignedOut // ignore: cast_nullable_to_non_nullable
              as bool?,
      groupModelList: groupModelList == freezed
          ? _value.groupModelList
          : groupModelList // ignore: cast_nullable_to_non_nullable
              as List<GroupModel>,
      lGroupModel: lGroupModel == freezed
          ? _value.lGroupModel
          : lGroupModel // ignore: cast_nullable_to_non_nullable
              as List<GroupModel>,
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
      List<UserModel> lUserModel,
      bool isLoading,
      bool? isSignedOut,
      List<GroupModel> groupModelList,
      List<GroupModel> lGroupModel});
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
    Object? lUserModel = freezed,
    Object? isLoading = freezed,
    Object? isSignedOut = freezed,
    Object? groupModelList = freezed,
    Object? lGroupModel = freezed,
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
      lUserModel: lUserModel == freezed
          ? _value._lUserModel
          : lUserModel // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignedOut: isSignedOut == freezed
          ? _value.isSignedOut
          : isSignedOut // ignore: cast_nullable_to_non_nullable
              as bool?,
      groupModelList: groupModelList == freezed
          ? _value._groupModelList
          : groupModelList // ignore: cast_nullable_to_non_nullable
              as List<GroupModel>,
      lGroupModel: lGroupModel == freezed
          ? _value._lGroupModel
          : lGroupModel // ignore: cast_nullable_to_non_nullable
              as List<GroupModel>,
    ));
  }
}

/// @nodoc

class _$_MainScreenState implements _MainScreenState {
  const _$_MainScreenState(
      {required this.optionUserSucessOrFailure,
      required this.userModel,
      required final List<UserModel> lUserModel,
      required this.isLoading,
      this.isSignedOut,
      required final List<GroupModel> groupModelList,
      required final List<GroupModel> lGroupModel})
      : _lUserModel = lUserModel,
        _groupModelList = groupModelList,
        _lGroupModel = lGroupModel;

  @override
  final Option<Either<Failure, UserModel>> optionUserSucessOrFailure;
  @override
  final UserModel userModel;
  final List<UserModel> _lUserModel;
  @override
  List<UserModel> get lUserModel {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lUserModel);
  }

  @override
  final bool isLoading;
  @override
  final bool? isSignedOut;
  final List<GroupModel> _groupModelList;
  @override
  List<GroupModel> get groupModelList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupModelList);
  }

  final List<GroupModel> _lGroupModel;
  @override
  List<GroupModel> get lGroupModel {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lGroupModel);
  }

  @override
  String toString() {
    return 'MainScreenState(optionUserSucessOrFailure: $optionUserSucessOrFailure, userModel: $userModel, lUserModel: $lUserModel, isLoading: $isLoading, isSignedOut: $isSignedOut, groupModelList: $groupModelList, lGroupModel: $lGroupModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainScreenState &&
            const DeepCollectionEquality().equals(
                other.optionUserSucessOrFailure, optionUserSucessOrFailure) &&
            const DeepCollectionEquality().equals(other.userModel, userModel) &&
            const DeepCollectionEquality()
                .equals(other._lUserModel, _lUserModel) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isSignedOut, isSignedOut) &&
            const DeepCollectionEquality()
                .equals(other._groupModelList, _groupModelList) &&
            const DeepCollectionEquality()
                .equals(other._lGroupModel, _lGroupModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(optionUserSucessOrFailure),
      const DeepCollectionEquality().hash(userModel),
      const DeepCollectionEquality().hash(_lUserModel),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isSignedOut),
      const DeepCollectionEquality().hash(_groupModelList),
      const DeepCollectionEquality().hash(_lGroupModel));

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
      required final List<UserModel> lUserModel,
      required final bool isLoading,
      final bool? isSignedOut,
      required final List<GroupModel> groupModelList,
      required final List<GroupModel> lGroupModel}) = _$_MainScreenState;

  @override
  Option<Either<Failure, UserModel>> get optionUserSucessOrFailure;
  @override
  UserModel get userModel;
  @override
  List<UserModel> get lUserModel;
  @override
  bool get isLoading;
  @override
  bool? get isSignedOut;
  @override
  List<GroupModel> get groupModelList;
  @override
  List<GroupModel> get lGroupModel;
  @override
  @JsonKey(ignore: true)
  _$$_MainScreenStateCopyWith<_$_MainScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
