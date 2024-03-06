import 'package:rental/core/resources/data_state.dart';
import 'package:rental/features/auth/domain/entities/user.dart';

abstract class UserRepository {
  Future<DataState<UserEntity>> getUser(String accountNumber, String password);
}
