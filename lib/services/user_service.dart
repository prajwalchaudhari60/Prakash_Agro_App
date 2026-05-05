import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserService {

  static Future<void> saveUser() async {
    var user = FirebaseAuth.instance.currentUser;

    if (user == null) return;

    await FirebaseFirestore.instance
        .collection("users")
        .doc(user.uid)
        .set({
      "uid": user.uid,
      "phone": user.phoneNumber,
      "email": user.email,
      "createdAt": DateTime.now(),
    });
  }
}