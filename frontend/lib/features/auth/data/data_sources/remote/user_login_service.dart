import 'package:rental/features/auth/data/models/user.dart';
import 'package:retrofit/retrofit.dart';
import 'package:rental/core/constants/constants.dart';
import 'package:dio/dio.dart';

part 'user_login_service.g.dart';

@RestApi(baseUrl: authBaseUrl)
abstract class UserLoginService {
  factory UserLoginService(Dio dio) = _UserLoginService;

  @POST('/signin')
  Future<HttpResponse<UserModel>> login({
    @Field('accountNumber') required String accountNumber,
    @Field('password') required String password,
  });
}
