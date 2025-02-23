import 'package:flutter/material.dart';
import 'package:food_app/components/my_button.dart';
import 'package:food_app/models/food.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};
  FoodPage({super.key, required this.food}) {
    //initialize the selected addons map to false
    for (Addon addon in food.addons) {
      selectedAddons[addon] = false;
    }
  }
  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(widget.food.imagePath),
              //name

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),

                    Text(
                      widget.food.name,
                      style: TextStyle(
                          fontSize: 22,
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.w600),
                    ),

                    Text("€ " + widget.food.price.toStringAsFixed(2),
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),

                    //description

                    Text(
                      widget.food.description,
                      style: TextStyle(
                          fontSize: 17,
                          color: Theme.of(context).colorScheme.secondary),
                    ),

                    Divider(
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    //addons
                    Text(
                      "Add-ons",
                      style: TextStyle(
                          fontSize: 19,
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.w500),
                    ),

                    Container(
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
                              side: BorderSide(
                                  width: 2,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary),
                              title: Text(
                                addon.name,
                                style: TextStyle(
                                    fontSize: 17,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontWeight: FontWeight.w500),
                              ),
                              subtitle: Text(
                                "€ " + addon.price.toStringAsFixed(2),
                                style: TextStyle(
                                    fontSize: 16,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontWeight: FontWeight.w500),
                              ),
                              value: widget.selectedAddons[addon],
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectedAddons[addon] = value!;
                                });
                              });
                        },
                        itemCount: widget.food.addons.length,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    //add to cart button
                    MyButton(onTap: () {}, buttonText: "Add to cart"),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      //Back button
      Opacity(
        opacity: 0.6,
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                shape: BoxShape.circle),
            child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.arrow_back_ios_new)),
          ),
        ),
      )
    ]);
  }
}
