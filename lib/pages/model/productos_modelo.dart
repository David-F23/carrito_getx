import 'package:cloud_firestore/cloud_firestore.dart';

class Products {

  final String name;
  final int price;
  final String imgUrl;

  Products({
    required this.name,
    required this.price,
    required this.imgUrl
  });  

  static Products fromSnapshot(DocumentSnapshot snap){
    Products products = Products(
      name: snap['name'],
      price: snap['price'], 
      imgUrl: snap['imgUrl'
    ]);

    return products;
  }

  // static const List<Products> products = [
  //   Products(name: 'Celular', price: 78.00, imgUrl: 'https://img.freepik.com/vector-gratis/maqueta-dispositivo-digital_53876-89354.jpg?t=st=1651851952~exp=1651852552~hmac=013c50899a15330e15de8c75b003989720fc3fa00c1558b07aa2f58e5e5b1e7c&w=740'),
  //   Products(name: 'Camisa', price: 78.00, imgUrl: 'https://img.freepik.com/vector-gratis/plantilla-camiseta-blanca_1132-95.jpg?2&t=st=1651852058~exp=1651852658~hmac=a7e35d7dac6007ab91c2d2f6580296ea5c11889614bbc115ca4553f29c48c8ca&w=740'),
  //   Products(name: 'Pantalón', price: 78.00, imgUrl: 'https://img.freepik.com/psd-gratis/maqueta-pantalones-chandal-hombre_170704-223.jpg?t=st=1651852127~exp=1651852727~hmac=f4aa1f157750c4f8e8d3955b3f874e867da4f883a62741b5022a05c3dd3c73ab&w=360'),
  //   Products(name: 'Gorra', price: 78.00, imgUrl: 'https://img.freepik.com/foto-gratis/gorra-blanca-aislada_125540-1024.jpg?t=st=1651854628~exp=1651855228~hmac=508e745fa25221a74ee07dd52762d969aa863179cf7dad76d6a34d4eaffc936f&w=740'),
  //   Products(name: 'Laptop', price: 78.00, imgUrl: 'https://img.freepik.com/psd-gratis/vista-frontal-maqueta-portatil-decoracion-interiores_23-2148690919.jpg?t=st=1651854718~exp=1651855318~hmac=9e4a6947644cd2c9601b598321e8619f5b240e5d23f6fc3fcfbdb8aed4a51a34&w=826'),
  //   Products(name: 'Balon', price: 78.00, imgUrl: 'https://img.freepik.com/vector-gratis/fondo-balon-futbol-estilo-plano_23-2147789481.jpg?t=st=1651854785~exp=1651855385~hmac=18e8760ce4c863fce1d32c398c79996c612bae9ab2d28285a052f3722f0cddae&w=740'),
  //   Products(name: 'Mouse', price: 78.00, imgUrl: 'https://img.freepik.com/vector-gratis/raton_24908-54360.jpg?t=st=1651854886~exp=1651855486~hmac=7c7e9d28ab534be97b661f75289baeb6826acc9dccc0a663f0bbc9075436cca2&w=360'),
  //   Products(name: 'Keyboard', price: 78.00, imgUrl: 'https://img.freepik.com/foto-gratis/raton-teclado-inalambricos_1260-15.jpg?1&t=st=1651855020~exp=1651855620~hmac=7ea09b3c60f802881f2515f18b6ece804c3ba90657afe795ca48f25b6bf48c77&w=740'),
  // ];
}