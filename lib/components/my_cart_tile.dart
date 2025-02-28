import 'package:flutter/material.dart';
import 'package:food_app/models/restaurant.dart';

import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final MyCartTile cartItem;

  const MyCartTile({
    super.key,
    required this.cartItem,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
        builder: (context, restaurant, child) => Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      //image

                      Image.asset(cartItem.food.imagePath),

                      //name and price

                      //increment or decrement button
                    ],
                  )
                ],
              ),
            ));
  }
}
