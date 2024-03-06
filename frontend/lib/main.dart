import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rental/config/theme/app_themes.dart';
import 'package:rental/features/auth/presentation/bloc/user/remote/remote_user_bloc.dart';
import 'package:rental/features/auth/presentation/bloc/user/remote/remote_user_event.dart';
import 'package:rental/injection_container.dart';

import 'features/auth/presentation/pages/login/login.dart';

Future<void> main() async {
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: themeData(),
        home: const Login());
  }
}
