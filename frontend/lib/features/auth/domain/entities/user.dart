import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String status;
  final String access_token;

  const UserEntity({
    required this.status,
    required this.access_token,
  });

  @override
  List<Object?> get props => [status, access_token];
}
