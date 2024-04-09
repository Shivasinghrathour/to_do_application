import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:to_do_application/pages/homepage.dart';
import 'package:to_do_application/pages/welcomePage.dart';

class SplashController extends GetxController {
  final auth = FirebaseAuth.instance;
  @override
  void onInit() {
    splash();
    super.onInit();
  }

  void splash() async {
    await Future.delayed(
      Duration(seconds: 3),
    );
    if (auth.currentUser == null) {
      Get.offAll(WelcomePage());
    } else {
      Get.offAll(HomePage());
    }
  }
}
