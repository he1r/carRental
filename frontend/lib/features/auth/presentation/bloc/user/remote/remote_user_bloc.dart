import 'package:bloc/bloc.dart';
import 'package:rental/core/resources/data_state.dart';
import 'package:rental/features/auth/domain/usecases/get_user.dart';
import 'package:rental/features/auth/presentation/bloc/user/remote/remote_user_event.dart';
import 'package:rental/features/auth/presentation/bloc/user/remote/remote_user_state.dart';

class RemoteUserBlock extends Bloc<RemoteUserEvent, RemoteUserState> {
  final GetUserUseCase _getUserUseCase;
  RemoteUserBlock(this._getUserUseCase) : super(const RemoteUserLoading()) {
    on<GetUser>(onGetUser);
  }

  Future<void> onGetUser(
      GetUser event, Emitter<RemoteUserState> emitter) async {
    final dataState = await _getUserUseCase(null);

    if (dataState is DataSuccess && dataState.data != null) {
      emitter(RemoteUserDone(userEntity: dataState.data!));
    } else if (dataState is DataFailed) {
      emitter(RemoteUserError(dioException: dataState.error!));
    }
  }
}
