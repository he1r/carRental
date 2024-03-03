import 'package:rental/core/resources/data_state.dart';
import 'package:rental/core/usecases/usecase.dart';
import 'package:rental/features/auth/domain/entities/user.dart';
import 'package:rental/features/auth/domain/repository/user_repository.dart';

class GetUserUseCase implements UseCase<DataState<UserEntity>, void> {
  final UserRepository _userRepository;
  GetUserUseCase(this._userRepository);

  @override
  Future<DataState<UserEntity>> call(void params) {
    return _userRepository.getUser();
  }
}
