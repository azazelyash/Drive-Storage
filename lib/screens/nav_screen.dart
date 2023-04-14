import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_drive/controllers/navigation_controller.dart';
import 'package:firebase_drive/screens/file_screen.dart';
import 'package:firebase_drive/screens/storage_screen.dart';
import 'package:firebase_drive/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(25),
        child: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xffF5F5F5),
        ),
      ),
      body: Column(
        children: [
          Header(),
          Obx(
            () => Get.find<NavigationController>().tab.value == "Storage"
                ? const StorageScreen()
                : const FileScreen(),
          ),
        ],
      ),
    );
  }
}
