// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'msgModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MgsModel _$MgsModelFromJson(Map<String, dynamic> json) => MgsModel(
      msg: json['msg'] as String?,
      sendBy: json['send_by'] as String?,
      timeStamp: json['time_stamp'] as String?,
      seenBy: json['seen_by'] as List<dynamic>?,
    );

Map<String, dynamic> _$MgsModelToJson(MgsModel instance) => <String, dynamic>{
      'msg': instance.msg,
      'send_by': instance.sendBy,
      'time_stamp': instance.timeStamp,
      'seen_by': instance.seenBy,
    };
