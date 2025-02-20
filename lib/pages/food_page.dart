import 'package:flutter/material.dart';
import 'package:food_app/models/food.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  const FoodPage({super.key, required this.food});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(widget.food.imagePath),
          //name

          SizedBox(
            height: 10,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              widget.food.name,
              style: TextStyle(
                  fontSize: 22,
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.w600),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text("€ " + widget.food.price.toString() + "0",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w600,
                    fontSize: 16)),
          ),

          //description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              widget.food.description,
              style: TextStyle(
                  fontSize: 17, color: Theme.of(context).colorScheme.secondary),
            ),
          ),
          SizedBox(
            height: 10,
          ),

          //addons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              "Add-ons",
              style: TextStyle(
                  fontSize: 19,
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).colorScheme.tertiary)),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  Addon addon = widget.food.addons[index];
                  return CheckboxListTile(
                      title: Text(
                        addon.name,
                        style: TextStyle(
                            fontSize: 17,
                            color: Theme.of(context).colorScheme.secondary,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        "€ " + addon.price.toString() + "0",
                        style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.w500),
                      ),
                      value: false,
                      onChanged: (value) {});
                },
                itemCount: widget.food.addons.length,
              ),
            ),
          )

          //add to cart button
        ],
      ),
    );
  }
}
