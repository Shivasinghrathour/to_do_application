import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_application/pages/login.dart';
import 'package:to_do_application/pages/signUpPage.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Welcome Page"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(LoginPage());
                  },
                  child: Text("Login"),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(
                      const SignUpPage(),
                    );
                  },
                  child: Text("Sign Up"),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
