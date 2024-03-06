import 'dart:io';

import 'package:dio/dio.dart';
import 'package:rental/core/resources/data_state.dart';
import 'package:rental/features/auth/data/data_sources/remote/user_login_service.dart';
import 'package:rental/features/auth/domain/entities/user.dart';
import 'package:rental/features/auth/domain/repository/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  final UserLoginService _userLoginService;
  UserRepositoryImpl(this._userLoginService);

  @override
  Future<DataState<UserEntity>> getUser(
      String accountNumber, String password) async {
    try {
      final httpResponse = await _userLoginService.login(
          accountNumber: accountNumber, password: password);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(DioException(
            error: httpResponse.response.statusMessage!,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions));
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
