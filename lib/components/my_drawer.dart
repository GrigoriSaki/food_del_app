import 'package:flutter/material.dart';
import 'package:food_app/components/my_drawer_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          //Logo
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Icon(
              Icons.lock_open_outlined,
              size: 85,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.tertiary,
              height: 10,
              thickness: 5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.tertiary,
              thickness: 5,
            ),
          ),

          SizedBox(
            height: 25,
          ),

          //Home
          MyDrawerTile(title: "Home", icon: Icons.home_filled, onTap: () {}),

          //Settings
          MyDrawerTile(title: "Settings", icon: Icons.settings, onTap: () {}),

          //Logout
          MyDrawerTile(title: "Logout", icon: Icons.logout_sharp, onTap: () {}),
        ],
      ),
    );
  }
}
