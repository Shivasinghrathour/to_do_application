import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TodoController extends GetxController {
  TextEditingController todo = TextEditingController();

  final auth = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;

  void addto() async {
    try {
      await db
          .collection("users")
          .doc(auth.currentUser!.uid)
          .collection("todo")
          .add(
        {"title": todo.text},
      );
      Get.snackbar(
        "To do Added Successfully",
        "To do Added",
        backgroundColor: Colors.green,
      );
      todo.clear();
    } catch (ex) {
      Get.snackbar(
        "Error",
        ex.toString(),
        backgroundColor: Colors.red,
      );
    }
  }
}
