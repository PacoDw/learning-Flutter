import 'package:flutter/material.dart';
import 'shoppingList.dart';
import 'Product.dart';

void main() => runApp(ShoppingListApp());

class ShoppingListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      home: ShoppingList(
        products: <Product>[
          Product(name: 'Eggs'),
          Product(name: 'Flour'),
          Product(name: 'Chocolate chips'),
        ],
      ),
    );
  }
}
