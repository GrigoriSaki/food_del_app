import 'package:flutter/material.dart';
import 'package:food_app/components/myReceipt.dart';

class DeliveryPorgressPage extends StatelessWidget {
  const DeliveryPorgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Delivery in progress.."),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [MyReceipt(), navigationBottomBar(context)],
        ),
      ),
    );
  }

  //Bottom Navigation Bar

  Widget navigationBottomBar(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Theme.of(context).colorScheme.tertiary),
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.surface),
            child: Icon(Icons.person,
                color: Theme.of(context).colorScheme.primary),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Mitch Koko",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              Text(
                "Driver",
                style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.inversePrimary),
              )
            ],
          ),
          Spacer(),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.surface),
            child: Icon(Icons.message,
                color: Theme.of(context).colorScheme.primary),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.surface),
            child: Icon(Icons.call, color: Colors.green),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
