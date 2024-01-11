import 'package:flutter/material.dart';
import 'package:login_page_test/constants/theme.dart';
import 'package:login_page_test/features/home/page/home_page.dart';
import 'package:login_page_test/features/login/page/login_page.dart';
import 'package:login_page_test/features/new_password/page/new_password_page.dart';
import 'package:login_page_test/features/sign_up/page/sign_up_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riit',
      debugShowCheckedModeBanner: false,
      theme: riitThemeData,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/forgot_password': (context) => const ForgotPasswordPage(),
        '/sign_up': (context) => const SignUpPage(),
      },
    );
  }
}
