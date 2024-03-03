import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:rental/features/auth/data/data_sources/remote/user_login_service.dart';
import 'package:rental/features/auth/data/repository/user_repository_impl.dart';
import 'package:rental/features/auth/domain/repository/user_repository.dart';
import 'package:rental/features/auth/domain/usecases/get_user.dart';
import 'package:rental/features/auth/presentation/bloc/user/remote/remote_user_bloc.dart';

GetIt sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<Dio>(Dio());
  sl.registerSingleton<UserLoginService>(UserLoginService(sl<Dio>()));
  sl.registerSingleton<UserRepository>(
      UserRepositoryImpl(sl<UserLoginService>()));
  sl.registerSingleton<GetUserUseCase>(GetUserUseCase(sl<UserRepository>()));
  sl.registerFactory<RemoteUserBlock>(
      () => RemoteUserBlock(sl<GetUserUseCase>()));
}
