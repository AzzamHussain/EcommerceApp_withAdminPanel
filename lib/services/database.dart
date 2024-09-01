import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DatabaseMethod {
  Future addUserDetail(Map<String, dynamic> UserInfoMap, String Id) async {
    return await FirebaseFirestore.instance
        .collection('users')
        .doc(Id)
        .set(UserInfoMap);
  }
}
