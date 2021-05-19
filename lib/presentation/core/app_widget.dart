import 'package:auto_route/auto_route.dart';
import 'package:firebase_ddd_project_temp/application/auth/auth_bloc.dart';
import 'package:firebase_ddd_project_temp/injection.dart';
import 'package:firebase_ddd_project_temp/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp(
        title: 'Notes',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.green[800],
          accentColor: Colors.blueAccent,
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.blue[900]),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        builder: ExtendedNavigator.builder(
          router: AppRouter(),
        ),
      ),
    );
  }
}
