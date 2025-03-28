import 'package:flutter/material.dart';
import 'package:food_app/models/food.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key, required this.tabController});

  final TabController tabController;

  List<Tab> _buildCategoryTabs() {
    return FoodCategory.values.map((category) {
      return Tab(text: category.toString().split('.').last);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        labelPadding: EdgeInsets.all(10),
        dividerHeight: 2,
        dividerColor: Theme.of(context).colorScheme.tertiary,
        controller: tabController,
        tabs: _buildCategoryTabs(),
      ),
    );
  }
}
