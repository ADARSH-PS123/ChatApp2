// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      name: json['name'] as String?,
      profilePhoto: json['profile_photo'] as String?,
      groups:
          (json['groups'] as List<dynamic>?)?.map((e) => e as String).toList(),
      userId: json['user_id'] as String,
      isOnline: json['is_online'] as bool,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'name': instance.name,
      'profile_photo': instance.profilePhoto,
      'user_id': instance.userId,
      'groups': instance.groups,
      'is_online': instance.isOnline,
    };
