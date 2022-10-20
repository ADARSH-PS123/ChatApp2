// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
      isDeleted: json['is_deleted'] as bool?,
      message: json['message'] as String?,
      timeStamp: json['time_stamp'] as String?,
      sendBy: json['send_by'] as String?,
      seenBy: json['seen_by'] as List<dynamic>?,
    );

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'is_deleted': instance.isDeleted,
      'message': instance.message,
      'time_stamp': instance.timeStamp,
      'send_by': instance.sendBy,
      'seen_by': instance.seenBy,
    };
