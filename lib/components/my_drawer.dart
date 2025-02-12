import 'package:flutter/material.dart';
import 'package:food_app/auth/login_or_register.dart';
import 'package:food_app/components/my_drawer_tile.dart';
import 'package:food_app/pages/settings_page.dart';

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
          MyDrawerTile(
              title: "Home",
              icon: Icons.home_filled,
              onTap: () {
                Navigator.pop(context);
              }),

          //Settings
          MyDrawerTile(
              title: "Settings",
              icon: Icons.settings,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SettingsPage();
                }));
              }),
          SizedBox(
            height: 75,
          ),

          //Logout
          MyDrawerTile(
              title: "Logout",
              icon: Icons.logout_sharp,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginOrRegister();
                }));
              }),
        ],
      ),
    );
  }
}
