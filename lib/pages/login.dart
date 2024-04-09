import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_application/controller/authController.dart';
import 'package:to_do_application/pages/homepage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.arrow_back),
              ),
            ],
            title: Text('Login'),
            centerTitle: true,
            backgroundColor: Colors.amber,
          ),
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                TextFormField(
                  controller: authController.email,
                  decoration: const InputDecoration(
                    hintText: 'Email',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: authController.pass,
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    authController.login();
                    Get.to(HomePage());
                    print("login done");
                  },
                  child: Text('Login'),
                ),
              ],
            ),
          )),
    );
  }
}
