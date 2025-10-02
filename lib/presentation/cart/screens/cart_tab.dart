import 'package:flutter/material.dart';
import 'package:jewelary_sys/utils/Data.dart';

class CartTab extends StatelessWidget {
  const CartTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Cart"),),
      body: Expanded(child: ListView.builder(
        itemCount: CartList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.asset(CartList[index].image),
            title: Text(CartList[index].name),
            subtitle: Column(
              children: [
                
              ],
            ),
          );
        },
      ),),
    );
  }
}
