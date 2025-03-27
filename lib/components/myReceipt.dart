import 'package:flutter/material.dart';
import 'package:food_app/models/restaurant.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  MyReceipt({super.key});

  String formattedTime =
      DateFormat('HH:mm').format(DateTime.now().add(Duration(minutes: 30)));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 50),
      child: Center(
        child: Column(
          children: [
            Text(
              "Thank you for your order",
              style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.tertiary,
                  borderRadius: BorderRadius.circular(8),
                  border:
                      Border.all(color: Theme.of(context).colorScheme.primary)),
              child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Consumer<Restaurant>(
                    builder: (context, restaurant, child) => Text(
                      restaurant.displayCartReceipt(),
                      style: TextStyle(
                          fontSize: 18,
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Estimated delivery time: " + formattedTime.toString(),
              style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
          ],
        ),
      ),
    );
  }
}
