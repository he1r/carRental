import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:rental/features/auth/domain/usecases/get_user.dart';
import 'package:rental/features/auth/presentation/bloc/user/remote/remote_user_event.dart';
import 'package:rental/features/auth/presentation/bloc/user/remote/remote_user_state.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String CACHE_FAILURE_MESSAGE = 'Cache Failure';

class RemoteUserBloc extends Bloc<RemoteUserEvent, RemoteUserState> {
  final GetUser userLogin;

  RemoteUserBloc(
    RemoteUserState initialState, {
    required GetUser getUser,
  })  : userLogin = getUser,
        super(initialState);

  RemoteUserState get initialState => Empty();

  Stream<RemoteUserState> mapEventToState(
    RemoteUserEvent event,
  ) async* {
    yield Loading();
  }
}
