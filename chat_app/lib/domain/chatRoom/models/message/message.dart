import 'package:json_annotation/json_annotation.dart';

part 'message.g.dart';

@JsonSerializable()
class Message {
  @JsonKey(name: 'is_deleted')
  bool? isDeleted;
  String? message;
  @JsonKey(name: 'time_stamp')
  String? timeStamp;
  @JsonKey(name: 'send_by')
  String? sendBy;
  @JsonKey(name: 'seen_by')
  List<dynamic>? seenBy;

  Message({
    this.isDeleted,
    this.message,
    this.timeStamp,
    this.sendBy,
    this.seenBy,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return _$MessageFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MessageToJson(this);
}
