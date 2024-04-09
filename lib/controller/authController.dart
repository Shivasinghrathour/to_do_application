import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final auth = FirebaseAuth.instance;

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  void SignUp() async {
    await auth.createUserWithEmailAndPassword(
      email: email.text,
      password: pass.text,
    );
  }

  void login() async {
    await auth.signInWithEmailAndPassword(
      email: email.text,
      password: pass.text,
    );
  }

  void logout() async {
    await auth.signOut();
  }

  void userDetails() {
    print(auth.currentUser!.email);
    print(auth.currentUser!.uid);
  }
}
