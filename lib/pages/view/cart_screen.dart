import 'dart:ui';

import 'package:carrito_getx/pages/controller/cart_controller.dart';
import 'package:carrito_getx/pages/view/cart_products_items.dart';
import 'package:carrito_getx/pages/view/cart_total.dart';
import 'package:carrito_getx/pages/view/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key, }) : super(key: key);

  final CartController controller = Get.find();

  //double total1 = CartController(controller.total) ;

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
          GestureDetector(
            onTap: (){
              Get.to(const PaymentScreen());
            },
            child: Container(
              width: 300,
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Center(
                child: Text(
                  'Pagar'.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                )
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          Text('${controller.total}')
        ],
      ),
    );
  }
}