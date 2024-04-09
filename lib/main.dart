import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_application/pages/homepage.dart';
import 'package:to_do_application/pages/signUpPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:to_do_application/pages/splashPage.dart';
import 'package:to_do_application/pages/welcomePage.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashPage(),
    );
  }
}
