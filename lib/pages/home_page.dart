import 'package:flutter/material.dart';
import 'package:food_app/components/my_current_location.dart';
import 'package:food_app/components/my_description_box.dart';
import 'package:food_app/components/my_drawer.dart';
import 'package:food_app/components/my_sliver_app_bar.dart';
import 'package:food_app/components/my_tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            MySliverAppbar(
                title: MyTabBar(tabController: _tabController),
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
                    MyDescriptionBox(),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ))
          ],
          body: TabBarView(controller: _tabController, children: [
            //Tab1

            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Text("First List"),
            ),

            //Tab2
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Text("second List"),
            ),

            //Tab3
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Text("third List"),
            ),
          ]),
        ));
  }
}
