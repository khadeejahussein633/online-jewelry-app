import 'package:flutter/material.dart';
import 'package:jewelary_sys/utils/Data.dart';

class CartTab extends StatelessWidget {
  const CartTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 234, 234),
      appBar: AppBar(
        title: Text("My Cart"),
        backgroundColor: const Color.fromARGB(255, 235, 234, 234),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: CartList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: CartList[index].color,
                          ),
                          child: Image.asset(
                            CartList[index].image,
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),

                        SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                CartList[index].name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),

                              Text(
                                CartList[index].price,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 38, 88, 40),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                CartList[index].desc,
                                style: const TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 12,
                              backgroundColor: const Color.fromARGB(
                                255,
                                219,
                                219,
                                219,
                              ),

                              child: IconButton(
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                                onPressed: () {},
                                icon: const Icon(Icons.add),
                              ),
                            ),
                            SizedBox(height: 5),
                            CircleAvatar(
                              backgroundColor: const Color.fromARGB(
                                255,
                                224,
                                224,
                                225,
                              ),
                              child: Text(
                                CartList[index].quantity.toString(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: 5),

                            CircleAvatar(
                              radius: 12,
                              backgroundColor: const Color.fromARGB(
                                255,
                                222,
                                222,
                                222,
                              ),
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                                onPressed: () {},
                                icon: const Icon(Icons.remove),
                              ),
                            ),
                            SizedBox(height: 5),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            ListTile(
              leading: Text(
                "Promo/Student Code or Vouchers",
                style: TextStyle(fontSize: 16),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Text("Sub Total", style: TextStyle(fontSize: 16)),
              trailing: Text(
                "258.00",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Text("Shipping", style: TextStyle(fontSize: 16)),
              trailing: Text(
                "25.00",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color.fromARGB(255, 44, 104, 46),
          ),

          child: Text("Make Payment"),
        ),
      ),
    );
  }
}
