import 'package:carrito_getx/pages/model/productos_modelo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreDB {
  
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Stream<List<Products>> getAllProducts(){
    return _firebaseFirestore
        .collection('products')
        .snapshots()
        .map((snapshot){
          return snapshot.docs.map((doc) => Products.fromSnapshot(doc)).toList();
        });
  }
}