import 'package:flutter/material.dart';
import 'package:jewelary_sys/presentation/cart/screens/cart_tab.dart';
import 'package:jewelary_sys/presentation/account/screens/Profile_tab.dart';
// import 'package:jewelary_sys/categories_tab.dart';
import 'package:jewelary_sys/presentation/wishlist/screens/favorite_tab.dart';
import 'package:jewelary_sys/presentation/home/screens/home_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> screens = [HomeTab(), FaviriteTab(), CartTab(), ProfileTab(), 
  
  // CategoriesTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: [
          buildNavItem(Icons.home, 0),
          buildNavItem(Icons.favorite, 1),
          buildNavItem(Icons.shopping_cart, 2),
          buildNavItem(Icons.person, 3),
          // buildNavItem(Icons.category_outlined, 4),
        ],
      ),
    );
  }

  BottomNavigationBarItem buildNavItem(IconData icon, int index) {
    return BottomNavigationBarItem(
      label: "",
      icon: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color:
              selectedIndex == index
                  ? const Color.fromARGB(255, 20, 83, 21)
                  : const Color.fromARGB(255, 228, 226, 226),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(
          icon,
          color:
              selectedIndex == index
                  ? Colors.white
                  : const Color.fromARGB(255, 74, 74, 74),
        ),
      ),
    );
  }
}
