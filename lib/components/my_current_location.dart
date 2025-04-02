import 'package:flutter/material.dart';
import 'package:food_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCurrentLocation extends StatelessWidget {
  MyCurrentLocation({super.key});
  final TextEditingController textController = TextEditingController();

  void choseYourLocation(context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Your location"),
              content: TextField(
                decoration: InputDecoration(hintText: "Enter adress..."),
                controller: textController,
              ),
              actions: [
                //cancel button
                MaterialButton(
                  onPressed: () {
                    textController.clear();
                    Navigator.pop(context);
                  },
                  child: Text("Cancel"),
                ),

                //save button
                MaterialButton(
                  onPressed: () {
                    String newAdress = textController.text;
                    context.read<Restaurant>().updateDeliveryAddress(newAdress);
                    textController.clear();
                    Navigator.pop(context);
                  },
                  child: Text("Save"),
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 25,
          ),
          Text(
            "Deliver now",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => choseYourLocation(context),
            child: Row(
              children: [
                //adress
                Consumer<Restaurant>(
                  builder: (context, restaurant, child) => Flexible(
                    child: Text(
                      restaurant.deliveryAddress,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                  ),
                ),

                //dropDown menu
                Icon(Icons.arrow_drop_down)
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
