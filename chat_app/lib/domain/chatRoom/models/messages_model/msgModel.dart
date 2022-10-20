import 'package:json_annotation/json_annotation.dart';

part 'msgModel.g.dart';

@JsonSerializable()
class MgsModel {
  String? msg;
  @JsonKey(name: 'send_by')
  String? sendBy;
  @JsonKey(name: 'time_stamp')
  String? timeStamp;
  @JsonKey(name: 'seen_by')
  List<dynamic>? seenBy;

  MgsModel({this.msg, this.sendBy, this.timeStamp, this.seenBy});

  factory MgsModel.fromJson(Map<String, dynamic> json) =>
      _$MgsModelFromJson(json);

  Map<String, dynamic> toJson() => _$MgsModelToJson(this);
}
