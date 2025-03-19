import 'package:flutter/material.dart';
import 'package:food_app/components/my_button.dart';
import 'package:food_app/components/my_cart_tile.dart';
import 'package:food_app/pages/payment_page.dart';

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
          // Clear cart button
          actions: [
            IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text("Do you want to clear all the cart?"),
                            actions: [
                              Row(
                                children: [
                                  TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: Text(
                                        "Cancel",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .inversePrimary),
                                      )),
                                  TextButton(
                                    onPressed: () {
                                      restaurant.clearCart();
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "Confirm",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .inversePrimary),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ));
                },
                icon: Icon(
                  Icons.delete,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ))
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  userCart.isEmpty
                      ? Expanded(
                          child: Center(
                              child: Text(
                          "Cart is empty..",
                          style: TextStyle(
                              fontSize: 17,
                              color:
                                  Theme.of(context).colorScheme.inversePrimary),
                        )))
                      : Expanded(
                          child: ListView.builder(
                              itemCount: userCart.length,
                              itemBuilder: (context, index) {
                                final cartItem = userCart[index];
                                return MyCartTile(cartItem: cartItem);
                              }))
                ],
              ),
            ),

            //Go to checkout button
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyButton(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PaymentPage())),
                  buttonText: "Go to checkout"),
            )
          ],
        ),
      );
    });
  }
}
