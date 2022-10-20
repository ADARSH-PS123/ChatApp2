import 'package:json_annotation/json_annotation.dart';

part 'group_model.g.dart';

@JsonSerializable()
class GroupModel {
  @JsonKey(name: 'group_name')
  String? groupName;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'created_by')
  String? createdBy;
  @JsonKey(name: 'group_id')
  String? groupId;
  bool? private;
  @JsonKey(name: 'recent_msg')
  String? recentMsg;
  List members;

  GroupModel({
    this.groupName,
    required this.members,
    this.createdAt,
    this.createdBy,
    this.groupId,
    this.private,
    this.recentMsg,
  });

  factory GroupModel.fromJson(Map<String, dynamic> json) {
    return _$GroupModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GroupModelToJson(this);
}
