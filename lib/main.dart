import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ddd_project_temp/injection.dart';
import 'package:firebase_ddd_project_temp/presentation/core/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await Firebase.initializeApp();
  runApp(AppWidget());
}