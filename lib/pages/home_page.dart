import 'package:flutter/material.dart';
import 'package:food_app/components/my_current_location.dart';
import 'package:food_app/components/my_drawer.dart';
import 'package:food_app/components/my_sliver_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                MySliverAppbar(
                    title: Text("Title"),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Divider(
                          endIndent: 25,
                          indent: 25,
                          color: Theme.of(context).colorScheme.tertiary,
                          thickness: 2,
                        ),
                        //my Current Location
                        MyCurrentLocation(),

                        //Description box
                      ],
                    ))
              ],
          body: Container(
            color: Colors.greenAccent,
          )),
    );
  }
}
