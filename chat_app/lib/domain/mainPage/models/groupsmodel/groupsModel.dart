import 'package:json_annotation/json_annotation.dart';


part 'groupsModel.g.dart';
@JsonSerializable()
class Groups {
  @JsonKey(name: 'group_name')
  String? groupName;
  List<String>? members;
  Chats? chats;

  Groups({this.groupName, this.members, this.chats});

  factory Groups.fromJson(Map<String, dynamic> json) {
    return _$GroupsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GroupsToJson(this);
}
@JsonSerializable()
class Chats {
  @JsonKey(name: 'message_id')
  MessageId? messageId;

  Chats({this.messageId});

  factory Chats.fromJson(Map<String, dynamic> json) => _$ChatsFromJson(json);

  Map<String, dynamic> toJson() => _$ChatsToJson(this);
}
@JsonSerializable()
class MessageId {
  String? message;
  String? sendby;
  String? timeStamp;
  bool? isDeleted;

  MessageId({this.message, this.sendby, this.timeStamp, this.isDeleted});

  factory MessageId.fromJson(Map<String, dynamic> json) {
    return _$MessageIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MessageIdToJson(this);
}
