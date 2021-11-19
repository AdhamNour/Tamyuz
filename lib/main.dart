import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tamuz_application/Authentication/Authentication.dart';
import 'package:tamuz_application/Authentication/ForgotPasswordScreen.dart';
import 'package:tamuz_application/Authentication/ResetPassword.dart';
import 'package:tamuz_application/Welcome/WelcomeScreen.dart';
import 'package:tamuz_application/shared/Screens/MessageScreen.dart';

import 'Courses/CoursesScreen.dart';
import 'Courses/SingleCourseScreen/SingleCourseScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: const MaterialColor(
            0xFFFFFFFF,
            <int, Color>{
              50: Color(0xFFFFFFFF),
              100: Color(0xFFFFFFFF),
              200: Color(0xFFFFFFFF),
              300: Color(0xFFFFFFFF),
              400: Color(0xFFFFFFFF),
              500: Color(0xFFFFFFFF),
              600: Color(0xFFFFFFFF),
              700: Color(0xFFFFFFFF),
              800: Color(0xFFFFFFFF),
              900: Color(0xFFFFFFFF),
            }, //FIXME: change this to be a variable
          ),
        ),
        home: const WelcomeScreen(),
        routes: {
          AuthenticationScreen.routeName: (ctx) => const AuthenticationScreen(),
          ForgotPasswordScreen.routeName: (ctx) => const ForgotPasswordScreen(),
          ResetPasswordScreen.routeName: (ctx) => const ResetPasswordScreen(),
          MessageScreen.routeName: (ctx) => const MessageScreen(),
          CoursesScreen.routeName: (ctx) => const CoursesScreen(),
          SingleCourseScreen.routeName: (ctx) => const SingleCourseScreen(),
        },
        localizationsDelegates: const [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales
        ],
        locale: const Locale("ar", "AE"));
  }
}
