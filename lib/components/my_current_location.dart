import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Deliver now"),
        Row(
          children: [
            //adress
            Text("Breveneseberg 7 , 3012 Bern"),

            //dropDown menu
            Icon(Icons.arrow_drop_down)
          ],
        )
      ],
    );
  }
}
