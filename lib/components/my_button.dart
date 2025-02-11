import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({super.key, required this.onTap, required this.buttonText});
  void Function()? onTap;
  String buttonText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 58,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.tertiary,
            borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontSize: 25,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
