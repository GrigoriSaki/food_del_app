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
      body: Column(
        children: [MyReceipt()],
      ),
    );
  }
}
