import 'package:flutter/material.dart';
import 'package:food_app/pages/cart_page.dart';

class MySliverAppbar extends StatelessWidget {
  const MySliverAppbar({super.key, required this.title, required this.child});
  final Widget title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 115,
      floating: false,
      pinned: true,
      centerTitle: true,
      actions: [
        IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CartPage()));
            },
            icon: Icon(Icons.shopping_cart))
      ],
      backgroundColor: Theme.of(context).colorScheme.surface,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text("Sun Hill"),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 40.0),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: EdgeInsets.all(0),
        expandedTitleScale: 1,
      ),
    );
  }
}
