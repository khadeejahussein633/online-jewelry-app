import 'package:flutter/material.dart';

class Product {
  final String image;
  final String price;
  final String name;
  final String Discription;
  Product({
    required this.image,
    required this.name,
    required this.price,
    required this.Discription,
  });
}

List<Product> ProductList = [
  Product(
    image: 'assets/necklace.png',
    name: 'Natural Precious Emerald Necklace',
    price: '274.00',
    Discription:
        "US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank US President Donald Trump has said he ",
  ),
  Product(
    image: 'assets/engagement-ring.png',
    name: 'Lotus Ring',
    price: '255.00',
    Discription:
        "US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank",
  ),
  Product(
    image: 'assets/aquamarine-diamond-earing.png',
    name: 'Diamond Earing',
    price: '255.00',
    Discription:
        "US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank",
  ),
  Product(
    image: 'assets/Gold-bangles.png',
    name: 'Gold Bangles',
    price: '1000.00',
    Discription:
        "US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank",
  ),
  Product(
    image: 'assets/CrystalFlowerBrooch.png',
    name: 'Crystal Flower Brooch',
    price: '150.00',
    Discription:
        "US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank",
  ),
  Product(
    image: 'assets/men-bracelet.png',
    name: 'men bracelet',
    price: '50.00',
    Discription:
        "US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank",
  ),
  Product(
    image: 'assets/Crystal-Bridal Bracelet.jpg',
    name: 'Crystal Bridal Bracelet',
    price: '100.00',
    Discription:
        "US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank",
  ),

  Product(
    image: 'assets/watch.png',
    name: 'Rolex Day Date 36',
    price: '30,000.00',
    Discription:
        "US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank",
  ),

  Product(
    image: 'assets/emerald-earing.png',
    name: 'Emerald Earing',
    price: '55.00',
    Discription:
        "US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank",
  ),
  Product(
    image: 'assets/gold-set.png',
    name: 'Gold Set',
    price: '2550.00',
    Discription:
        "US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank US President Donald Trump has said he will not allow Benjamin Netanyahu to annex the Israeli-occupied West Bank",
  ),
];

class Categories {
  final String image;
  final String name;
  final Color color; // new field

  Categories({required this.image, required this.name, required this.color});
}

List<Categories> categoriesList = [
  Categories(
    image: 'assets/diamondRing1.jpg',
    name: 'Rings',
    color: const Color.fromARGB(255, 66, 114, 76),
  ),
  Categories(
    image: 'assets/necklace.jpg',
    name: 'Necklace',
    color: const Color.fromARGB(255, 87, 83, 83),
  ),
  Categories(
    image: 'assets/bracelet.jpg',
    name: 'Bracelet',
    color: const Color.fromARGB(255, 168, 158, 169),
  ),
  Categories(
    image: 'assets/earing.jpg',
    name: 'Earings',
    color: const Color.fromARGB(255, 176, 176, 176),
  ),
  Categories(
    image: 'assets/watch.jpg',
    name: 'Watches',
    color: const Color.fromARGB(255, 83, 83, 83),
  ),
  Categories(
    image: 'assets/bracelet.jpg',
    name: 'Bracelet',
    color: const Color.fromARGB(222, 58, 75, 120),
  ),
  Categories(
    image: 'assets/earing.jpg',
    name: 'Earings',
    color: const Color.fromARGB(255, 66, 114, 76),
  ),
];

class Cart {
  final String image;
  final String name;
  final Color color; // new field
  final int quantity;
  final String price;
  final String desc;

  Cart({
    required this.image,
    required this.name,
    required this.color,
    required this.quantity,
    required this.price,
    required this.desc,
  });
}

List<Cart> CartList = [
  Cart(
    image: 'assets/diamondRing.png',
    name: 'Rings',
    color: const Color.fromARGB(255, 234, 234, 234),
    quantity: 1,
    price: '250.00',
    desc: 'ring , Diamond',
  ),
  Cart(
    image: 'assets/CrystalFlowerBrooch.png',
    name: 'Brooch',
    color: const Color.fromARGB(255, 234, 234, 234),
    quantity: 1,
    price: '100.00',
    desc: 'Brooch, blue',
  ),
  Cart(
    image: 'assets/emerald-earing.png',
    name: 'Earing',
    color: const Color.fromARGB(255, 234, 234, 234),
    quantity: 1,
    price: '50.00',
    desc: 'Earing, Emerald Earing',
  ),
];
