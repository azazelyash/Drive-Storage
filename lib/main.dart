import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_drive/controllers/authentication_controller.dart';
import 'package:firebase_drive/screens/login_screen.dart';
import 'package:firebase_drive/screens/nav_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Root(),
    );
  }
}

class Root extends StatelessWidget {
  AuthController authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return authController.user.value == null
          ? const LoginPage()
          : const NavigationPage();
    });
    ;
  }
}
