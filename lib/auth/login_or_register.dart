import 'package:flutter/material.dart';
import 'package:food_app/pages/login_page.dart';
import 'package:food_app/pages/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool showLogin = true;

  void togglePages() {
    setState(() {
      showLogin = !showLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLogin) {
      return LoginPage(
        onPressed: togglePages,
      );
    } else {
      return RegisterPage(
        onPressed: togglePages,
      );
    }
  }
}
