import 'package:json_annotation/json_annotation.dart';

part 'userModel.g.dart';

@JsonSerializable()
class UserModel {
  String? name;
  @JsonKey(name: 'profile_photo')
  String? profilePhoto;
  @JsonKey(name: 'user_id')
  String userId;
  List<String>? groups;
  @JsonKey(name: 'is_online')
  bool isOnline;

  UserModel(
      {this.name,
      this.profilePhoto,
      this.groups,
      required this.userId,
      required this.isOnline});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return _$UserModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
