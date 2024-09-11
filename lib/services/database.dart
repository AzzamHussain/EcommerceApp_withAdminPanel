import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DatabaseMethod {
  Future addUserDetail(Map<String, dynamic> UserInfoMap, String Id) async {
    return await FirebaseFirestore.instance
        .collection('users')
        .doc(Id)
        .set(UserInfoMap);
  }

  UpdateUserwallet(String id, String amount) async {
    return await FirebaseFirestore.instance
        .collection("users")
        .doc(id)
        .update({"Wallet": amount});
  }

  Future addFoodItem(Map<String, dynamic> userInfoMap, String name) async {
    return await FirebaseFirestore.instance.collection(name).add(userInfoMap);
  }

  Future<Stream<QuerySnapshot>> getFoodItem(String name) async {
    return await FirebaseFirestore.instance.collection(name).snapshots();
  }
  
  Future<Stream<QuerySnapshot>> getFoodCart(String name) async {
    return await FirebaseFirestore.instance.collection(name).snapshots();
  }
   Future addFoodToCart(Map<String, dynamic> UserInfoMap, String Id) async {
    return await FirebaseFirestore.instance
        .collection('users')
        .doc(Id).collection("Cart")
        .add(UserInfoMap);
  }

}
