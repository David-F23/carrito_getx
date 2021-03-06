import 'package:carrito_getx/pages/controller/cart_controller.dart';
import 'package:carrito_getx/pages/model/productos_modelo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartProductsItems extends StatelessWidget {
  CartProductsItems({Key? key}) : super(key: key);

  final CartController controller = Get.find(); 

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: 500,
        child: ListView.builder(
          itemCount: controller.products.length,
          itemBuilder: (BuildContext context, int index){
            return CartProductCard(
              controller: controller,
              product: controller.products.keys.toList()[index],
              quantity: controller.products.values.toList()[index],
              index: index,
            );
          },
        ),
      ),
    );
  }
}

class CartProductCard extends StatelessWidget {

  final CartController controller;
  final Products product;
  final int quantity;
  final int index;

  CartProductCard({
    Key? key, 
    required this.controller, 
    required this.index, 
    required this.product, 
    required this.quantity
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(product.imgUrl.toString()),
          ),
          const SizedBox(width: 20,),
          Expanded(child: Text(product.name.toString())),
          IconButton(
            onPressed: (){
              controller.removeProducts(product);
            }, 
            icon: const Icon(Icons.remove_circle)),
          Text('$quantity'),
          IconButton(
            onPressed: (){
              controller.addProduct(product);
            }, 
            icon: const Icon(Icons.add_circle))
        ],
      ),
    );
  }
}