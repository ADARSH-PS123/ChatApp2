// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupModel _$GroupModelFromJson(Map<String, dynamic> json) => GroupModel(
      groupName: json['group_name'] as String?,
      members: json['members'] as List<dynamic>,
      createdAt: json['created_at'] as String?,
      createdBy: json['created_by'] as String?,
      groupId: json['group_id'] as String?,
      private: json['private'] as bool?,
      recentMsg: json['recent_msg'] as String?,
    );

Map<String, dynamic> _$GroupModelToJson(GroupModel instance) =>
    <String, dynamic>{
      'group_name': instance.groupName,
      'created_at': instance.createdAt,
      'created_by': instance.createdBy,
      'group_id': instance.groupId,
      'private': instance.private,
      'recent_msg': instance.recentMsg,
      'members': instance.members,
    };
