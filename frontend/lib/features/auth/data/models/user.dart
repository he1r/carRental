import 'package:rental/features/auth/domain/entities/user.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class UserModel extends UserEntity {
  const UserModel({
    required super.status,
    required super.access_token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      status: json['status'],
      access_token: json['access_token'],
    );
  }
}
