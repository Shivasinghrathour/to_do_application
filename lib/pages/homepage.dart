import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_application/config/primarybutton.dart';
import 'package:to_do_application/config/todoTask.dart';
import 'package:to_do_application/controller/authController.dart';
import 'package:to_do_application/controller/todoController.dart';
import 'package:to_do_application/pages/welcomePage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TodoController todoController = Get.put(TodoController());
    AuthController authController = Get.put(AuthController());
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                authController.logout();
                Get.offAll(WelcomePage());
                print('User Logout');
              },
              icon: Icon(Icons.logout))
        ],
        title: const Text("My to do "),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    "Add Your Task",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // add to do form
              ],
            ),
            TextFormField(
              controller: todoController.todo,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Add Todo",
                suffixIcon: Icon(Icons.pending_actions_sharp),
              ),
            ),
            PrimaryButton(
              btnName: "Add Todo",
              onTap: () {
                todoController.addto();
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Text(
                    "Your Todo",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            TodoItem(
              todoName: 'Dart is awesome',
              onTap: () {},
            ),
            TodoItem(
              todoName: 'I am Learing Flutter',
              onTap: () {},
            ),
            TodoItem(
              todoName: 'Learing Application',
              onTap: () {
                authController.userDetails();
              },
            ),
          ],
        ),
      ),
    );
  }
}
