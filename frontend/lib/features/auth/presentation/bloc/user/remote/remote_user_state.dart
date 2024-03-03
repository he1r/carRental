import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:rental/features/auth/domain/entities/user.dart';

abstract class RemoteUserState extends Equatable {
  final UserEntity? userEntity;
  final DioException? dioException;

  const RemoteUserState({this.userEntity, this.dioException});

  @override
  List<Object?> get props => [userEntity, dioException];
}

class RemoteUserLoading extends RemoteUserState {
  const RemoteUserLoading();
}

class RemoteUserDone extends RemoteUserState {
  const RemoteUserDone({required UserEntity userEntity})
      : super(userEntity: userEntity);
}

class RemoteUserError extends RemoteUserState {
  const RemoteUserError({required DioException dioException})
      : super(dioException: dioException);
}
