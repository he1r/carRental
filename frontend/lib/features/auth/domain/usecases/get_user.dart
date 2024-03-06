import 'package:equatable/equatable.dart';
import 'package:rental/core/resources/data_state.dart';
import 'package:rental/core/usecases/usecase.dart';
import 'package:rental/features/auth/domain/entities/user.dart';
import 'package:rental/features/auth/domain/repository/user_repository.dart';

class GetUserUseCase implements UseCase<DataState<UserEntity>, Params> {
  final UserRepository _userRepository;
  GetUserUseCase(this._userRepository);

  @override
  Future<DataState<UserEntity>> call(Params params) {
    return _userRepository.getUser(params.accountNumber, params.password);
  }
}

class Params extends Equatable {
  final String accountNumber;
  final String password;

  const Params({required this.accountNumber, required this.password});

  @override
  List<Object?> get props => [accountNumber, password];
}
