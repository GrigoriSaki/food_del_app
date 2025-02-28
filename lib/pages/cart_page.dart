import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../models/restaurant.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context, restaurant, child) {
      final userCart = restaurant.cart;
      //Scaffold UI

      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Cart"),
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: userCart.length,
                    itemBuilder: (context, index) {
                      final cartItem = userCart[index];
                      return ListTile(
                        title: Text(cartItem.food.name),
                      );
                    }))
          ],
        ),
      );
    });
  }
}
