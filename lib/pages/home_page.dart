import 'package:flutter/material.dart';
import 'package:food_app/components/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.tertiary,
        title: Text("Home"),
      ),
      drawer: MyDrawer(),
    );
  }
}
