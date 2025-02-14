import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key, required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
          labelPadding: EdgeInsets.all(10),
          dividerHeight: 2,
          dividerColor: Theme.of(context).colorScheme.tertiary,
          controller: tabController,
          tabs: [
            //Tab1
            Icon(
              Icons.home,
            ),

            //Tab2
            Icon(Icons.settings),

            //Tab3
            Icon(Icons.person),
          ]),
    );
  }
}
