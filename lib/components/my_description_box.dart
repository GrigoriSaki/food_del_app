import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var myPrimaryText = TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w500,
        color: Theme.of(context).colorScheme.secondary);

    var mySecondaryText = TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w500,
        color: Theme.of(context).colorScheme.primary);

    return Container(
      margin: EdgeInsets.only(left: 25, right: 25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Theme.of(context).colorScheme.tertiary)),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //delivery fee
            Column(
              children: [
                Text("0.99\$", style: myPrimaryText),
                Text("Delivery fee", style: mySecondaryText)
              ],
            ),
            //delivery time
            Column(
              children: [
                Text(
                  "20-30 min",
                  style: myPrimaryText,
                ),
                Text(
                  "Delivery time",
                  style: mySecondaryText,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
