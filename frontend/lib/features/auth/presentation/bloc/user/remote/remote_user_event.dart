import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class RemoteUserEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetUser extends RemoteUserEvent {
  final String accountNumber;
  final String password;

  GetUser(this.accountNumber, this.password);

  @override
  List<Object> get props => [accountNumber, password];
}
