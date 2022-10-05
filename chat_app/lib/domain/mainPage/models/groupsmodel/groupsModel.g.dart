// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'groupsModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Groups _$GroupsFromJson(Map<String, dynamic> json) => Groups(
      groupName: json['group_name'] as String?,
      members:
          (json['members'] as List<dynamic>?)?.map((e) => e as String).toList(),
      chats: json['chats'] == null
          ? null
          : Chats.fromJson(json['chats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GroupsToJson(Groups instance) => <String, dynamic>{
      'group_name': instance.groupName,
      'members': instance.members,
      'chats': instance.chats,
    };

Chats _$ChatsFromJson(Map<String, dynamic> json) => Chats(
      messageId: json['message_id'] == null
          ? null
          : MessageId.fromJson(json['message_id'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatsToJson(Chats instance) => <String, dynamic>{
      'message_id': instance.messageId,
    };

MessageId _$MessageIdFromJson(Map<String, dynamic> json) => MessageId(
      message: json['message'] as String?,
      sendby: json['sendby'] as String?,
      timeStamp: json['timeStamp'] as String?,
      isDeleted: json['isDeleted'] as bool?,
    );

Map<String, dynamic> _$MessageIdToJson(MessageId instance) => <String, dynamic>{
      'message': instance.message,
      'sendby': instance.sendby,
      'timeStamp': instance.timeStamp,
      'isDeleted': instance.isDeleted,
    };
