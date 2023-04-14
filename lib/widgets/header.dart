import 'package:firebase_drive/controllers/navigation_controller.dart';
import 'package:firebase_drive/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class Header extends StatelessWidget {
  Header({super.key});

  NavigationController navigationController = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(
            "Flutter Drive",
            style: textStyle(28, textColor, FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 60,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 247, 245, 245),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.03),
                  offset: const Offset(10, -3),
                  blurRadius: 10,
                ),
                BoxShadow(
                  color: Colors.black.withOpacity(0.03),
                  offset: const Offset(-10, 10),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Obx(
              () => Row(
                children: [
                  InkWell(
                    onTap: () => navigationController.changeTab("Storage"),
                    child: tabCell("Storage",
                        navigationController.tab.value == "Storage", context),
                  ),
                  InkWell(
                    onTap: () => navigationController.changeTab("Files"),
                    child: tabCell("Files",
                        navigationController.tab.value == "Files", context),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget tabCell(String text, bool selected, BuildContext context) {
    return selected
        ? Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.45 - 5,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.deepOrangeAccent,
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepOrangeAccent.withOpacity(0.25),
                    offset: const Offset(0, -3),
                    blurRadius: 10,
                  ),
                  BoxShadow(
                    color: Colors.deepOrangeAccent.withOpacity(0.25),
                    offset: const Offset(0, 7),
                    blurRadius: 10,
                  )
                ],
              ),
              child: Center(
                child: Text(
                  text,
                  style: textStyle(20, Colors.white, FontWeight.bold),
                ),
              ),
            ),
          )
        : Container(
            color: Colors.transparent,
            height: 60,
            width: MediaQuery.of(context).size.width * 0.45 - 10,
            child: Center(
              child: Text(
                text,
                style: textStyle(20, textColor, FontWeight.bold),
              ),
            ),
          );
  }
}
