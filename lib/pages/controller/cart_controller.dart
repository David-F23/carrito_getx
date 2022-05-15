import 'package:carrito_getx/pages/model/productos_modelo.dart';
import 'package:get/get.dart';
import 'dart:core';

class CartController extends GetxController {
  
  final products = {}.obs;

  void addProduct(Products product){

    if(products.containsKey(product)){
      products[product] += 1;
    }else{
      products[product] = 1;
    }

    Get.snackbar(
      'Producto agregado', 
      'Estas agregando ${product.name} al carrito',
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 1)
    );
  }

  get productss => products;

  void removeProducts(Products product){
    if(products.containsKey(product) && products[product] == 1){
      products.removeWhere((key, value) => key == product);
    }else{
      products[product] -= 1;
    }
  }

  get productSubTotal => products.entries
    .map((product) => product.key.price * product.value);

  get total => products.entries
    .map((product) => product.key.price * product.value)
    .toList()
    .reduce((value, element) => value + element)
    .toStringAsFixed(2);

}