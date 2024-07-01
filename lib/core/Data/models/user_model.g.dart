// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      email: json['email'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      userProfileImage: json['userProfileImage'] as String?,
      userCoverImage: json['userCoverImage'] as String?,
      userBio: json['userBio'] as String?,
      userName: json['userName'] as String?,
      userGender: json['userGender'] as String?,
      userBirthDate: json['userBirthDate'] as String?,
      userCountry: json['userCountry'] as String?,
      accountCreationTime: json['accountCreationTime'] as String?,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'phone': instance.phone,
      'address': instance.address,
      'userProfileImage': instance.userProfileImage,
      'userCoverImage': instance.userCoverImage,
      'userBio': instance.userBio,
      'userName': instance.userName,
      'userGender': instance.userGender,
      'userBirthDate': instance.userBirthDate,
      'userCountry': instance.userCountry,
      'accountCreationTime': instance.accountCreationTime,
    };
