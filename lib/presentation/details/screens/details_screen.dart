import 'package:flutter/material.dart';
import 'package:jewelary_sys/utils/Data.dart';

class ProductDetails extends StatelessWidget {
  final Product product;
  const ProductDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(child: Image.asset(product.image, fit: BoxFit.cover)),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        product.price,

                        style: TextStyle(
                          color: const Color.fromARGB(255, 56, 128, 58),
                          backgroundColor: const Color.fromARGB(
                            255,
                            216,
                            215,
                            215,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(product.Discription),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 48, 122, 50),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text("add to cart"),
        ),
      ),
    );
  }
}
