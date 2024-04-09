import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_application/controller/splashController.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    SplashController splashController = Get.put(SplashController());
    return Scaffold(
      body: Center(
        child: Text(
          "My To Do App",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
