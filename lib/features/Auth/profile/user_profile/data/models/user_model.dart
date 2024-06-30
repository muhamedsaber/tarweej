import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';
@JsonSerializable()
class UserModel {
  final String? email;
  final String? name;
  final String? phone;
  final String? address;
  final String? userProfileImage;
  final String? userCoverImage;
  final String? userBio;
  final String? userName;
  final String? userGender;
  final String? userBirthDate;
  final String? userCountry;

  UserModel({
    this.email,
    this.name,
    this.phone,
    this.address,
    this.userProfileImage,
    this.userCoverImage,
    this.userBio,
    this.userName,
    this.userGender,
    this.userBirthDate,
    this.userCountry,
  });
 
  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
  

}
