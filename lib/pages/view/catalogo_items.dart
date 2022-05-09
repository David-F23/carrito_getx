import 'package:carrito_getx/pages/controller/cart_controller.dart';
import 'package:carrito_getx/pages/controller/product_controller.dart';
//import 'package:carrito_getx/pages/model/productos_modelo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatalogoItems extends StatelessWidget {
  CatalogoItems({Key? key}) : super(key: key);

  final productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () =>  Flexible(
        child: ListView.builder(
          itemCount: productController.products.length,
          itemBuilder: (BuildContext context, int index){
            return CatalogoProductosCard(
              index: index,
            );
          },
        ),
      ),
    );
  }
}

class CatalogoProductosCard extends StatelessWidget {

  final cartController = Get.put(CartController());
  final ProductController productController = Get.find();

  final int index;
  CatalogoProductosCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          //border: Border.all(),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(1, 8),
              blurRadius: 4,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(productController.products[index].imgUrl),
              ),
            ),
            Expanded(child: Text(productController.products[index].name)),
            Expanded(child: Text('\$${productController.products[index].price.toString()}')),
            Expanded(
              child: IconButton(
                icon: const Icon(Icons.add),
                onPressed: (){
                  cartController.addProduct(productController.products[index]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}