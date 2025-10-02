import 'package:flutter/material.dart';
import 'package:jewelary_sys/utils/Data.dart';

class CategoriesTab extends StatelessWidget {
  const CategoriesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Categories"))),

      body: Expanded(
        
        child: ListView.builder(
          padding: EdgeInsets.only(top: 10),
          scrollDirection: Axis.vertical,
          itemCount: categoriesList.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: categoriesList[index].color,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      categoriesList[index].name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ClipRRect(
                    child: Image.asset(
                      categoriesList[index].image,
                      fit: BoxFit.cover,

                      height: 150, // adjust height as needed
                      width: 150,
                    ),
                  ),
                ],
              ),
            );
            
          },
        ),
      ),
    );
  }
}
