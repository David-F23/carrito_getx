import 'package:carrito_getx/pages/view/cart_screen.dart';
import 'package:carrito_getx/pages/view/catalogo_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatalogoProductos extends StatelessWidget {
  const CatalogoProductos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('productos'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            CatalogoItems(),
            ElevatedButton(
              onPressed: () => Get.to(CartScreen()),
              child: const Text('ir al carrito'),
            )
          ],
        ),
      ),
    );
  }
}