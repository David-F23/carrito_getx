import 'package:carrito_getx/pages/view/cart_products_items.dart';
import 'package:carrito_getx/pages/view/cart_total.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi carrito'),
      ),
      body: Column(
        children: [
          CartProductsItems(),
          CartTotal(),
        ],
      ),
    );
  }
}