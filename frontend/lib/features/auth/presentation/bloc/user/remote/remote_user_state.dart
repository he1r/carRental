import 'package:equatable/equatable.dart';

abstract class RemoteUserState extends Equatable {
  @override
  List<Object> get props => [];
}

class Empty extends RemoteUserState {}

class Loading extends RemoteUserState {}

class Loaded extends RemoteUserState {
  final String access_token;
  final String status;

  Loaded({required this.access_token, required this.status});

  @override
  List<Object> get props => [access_token, status];
}

class Error extends RemoteUserState {
  final String message;

  Error({required this.message});

  @override
  List<Object> get props => [message];
}
