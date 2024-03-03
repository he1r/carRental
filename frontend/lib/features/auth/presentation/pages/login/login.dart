import 'package:flutter/material.dart';
import 'package:rental/features/auth/presentation/bloc/user/remote/remote_user_bloc.dart';
import 'package:rental/features/auth/presentation/bloc/user/remote/remote_user_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _buildAppBar(), body: _buildBody());
  }

  _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      title: const Text('Login', style: TextStyle(color: Colors.white)),
    );
  }

  _buildBody() {
    return BlocBuilder<RemoteUserBlock, RemoteUserState>(
      builder: (_, state) {
        if (state is RemoteUserLoading) {
          return const CircularProgressIndicator();
        }
        if (state is RemoteUserDone) {
          return const Center(child: Icon(Icons.refresh));
        }
        if (state is RemoteUserError) {
          return const Text('There was an error with the endpoint');
        }
        return Container();
      },
    );
  }
}
