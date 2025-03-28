import 'package:flutter/material.dart';
import 'package:food_app/components/my_button.dart';
import 'package:food_app/components/text_field.dart';
import 'package:food_app/pages/home_page.dart';
import 'package:food_app/services/auth/auth_service.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onPressed;
  LoginPage({super.key, required this.onPressed});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  void login(context) async {
    AuthService authService = AuthService();

    try {
      await authService.signInWithEmailAndPassword(
          emailController.text, passwordController.text);
    } catch (e) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text("Error"),
                content: Text(e.toString()),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("OK"),
                  )
                ],
              ));
    }
  }

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Logo with description
              Icon(Icons.lock_open,
                  size: 100,
                  color: Theme.of(context).colorScheme.inversePrimary),
              SizedBox(
                height: 15,
              ),
              Text(
                "Food Delivery App",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              SizedBox(
                height: 15,
              ),

              //Email TextField
              MyTextField(
                controller: widget.emailController,
                hintText: "Email",
                obscureText: false,
              ),
              SizedBox(
                height: 15,
              ),

              //Password TextField
              MyTextField(
                  controller: widget.passwordController,
                  hintText: "Password",
                  obscureText: true),
              SizedBox(
                height: 15,
              ),

              //Login Button
              MyButton(
                  onTap: () {
                    return widget.login(context);
                  },
                  buttonText: "Log In"),

              //Login or register? switch
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Not a member?",
                    style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                  TextButton(
                      style: ButtonStyle(
                          overlayColor:
                              // ignore: deprecated_member_use
                              MaterialStateProperty.resolveWith<Color?>(
                                  (states) => null)),
                      onPressed: widget.onPressed,
                      child: Text("Register now",
                          style: TextStyle(
                              fontSize: 18,
                              color: Theme.of(context)
                                  .colorScheme
                                  .inversePrimary)))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
