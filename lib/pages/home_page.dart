import 'package:flutter/material.dart';
import 'package:food_app/components/my_current_location.dart';
import 'package:food_app/components/my_description_box.dart';
import 'package:food_app/components/my_drawer.dart';
import 'package:food_app/components/my_sliver_app_bar.dart';
import 'package:food_app/components/my_tab_bar.dart';
import 'package:food_app/models/food.dart';
import 'package:food_app/models/restaurant.dart';
import 'package:provider/provider.dart';

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
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  //sort out and return the list of food that belong to selected category
  List<Food> filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  //return list of food in given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = filterMenuByCategory(category, fullMenu);
      return ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              categoryMenu[index].name,
            ),
          );
        },
        itemCount: categoryMenu.length,
        physics: NeverScrollableScrollPhysics(),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.tertiary,
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
          body: Consumer<Restaurant>(
              builder: (context, restaurant, child) => TabBarView(
                  controller: _tabController,
                  children: getFoodInThisCategory(restaurant.menu))),
        ));
  }
}
