import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_application/controller/authController.dart';
import 'package:to_do_application/pages/homepage.dart';
import 'package:to_do_application/pages/login.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
            title: Text('Sign Up'),
            centerTitle: true,
            backgroundColor: Colors.amber,
          ),
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                TextFormField(
                  controller: authController.email,
                  decoration: InputDecoration(hintText: 'Email'),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: authController.pass,
                  decoration: InputDecoration(hintText: 'Password'),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      authController.SignUp();
                      Get.to(LoginPage());
                      authController.email.clear();
                      authController.pass.clear();

                      print("Sign up done");
                    },
                    child: Text('Sign Up'))
              ],
            ),
          )),
    );
  }
}
