import 'package:auto_route/auto_route_annotations.dart';
import 'package:firebase_ddd_project_temp/presentation/notes/note_form/note_form_page.dart';
import 'package:firebase_ddd_project_temp/presentation/notes/notes_overview/notes_overview_page.dart';
import 'package:firebase_ddd_project_temp/presentation/sign_in/sign_in_page.dart';
import 'package:firebase_ddd_project_temp/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: NoteOverviewPage),
    MaterialRoute(page: NoteFormPage, fullscreenDialog: true),
  ],
)
class $AppRouter {}
