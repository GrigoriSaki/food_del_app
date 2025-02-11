import 'package:flutter/material.dart';
import 'package:food_app/components/my_button.dart';
import 'package:food_app/components/text_field.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key, required this.onPressed});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmController =
      TextEditingController();
  final void Function()? onPressed;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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

              //Password TextField
              MyTextField(
                  controller: widget.passwordConfirmController,
                  hintText: "Confirm password",
                  obscureText: true),
              SizedBox(
                height: 15,
              ),

              //Register Button
              MyButton(onTap: () {}, buttonText: "Register"),

              //Login or register? switch
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Already register?",
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
                      child: Text("Sign in",
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
