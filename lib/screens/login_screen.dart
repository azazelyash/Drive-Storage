import 'package:firebase_drive/controllers/authentication_controller.dart';
import 'package:firebase_drive/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.white, Color.fromARGB(255, 218, 225, 233)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).viewInsets.top + 53,
              ),
              child: const Image(
                height: 200,
                image: AssetImage('images/filemanager.png'),
                fit: BoxFit.cover,
              ),
            ),
            const Spacer(),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(
                  top: 30, bottom: 35, right: 30, left: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 5,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 35.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Simplify Your Filing",
                      style: textStyle(
                        25,
                        const Color(0xff635c9b),
                        FontWeight.w700,
                      ),
                    ),
                    Text(
                      "System",
                      style: textStyle(
                        25,
                        const Color(0xff635c9b),
                        FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "keep your files",
                      style: textStyle(
                        20,
                        textColor,
                        FontWeight.w600,
                      ),
                    ),
                    Text(
                      "organized more easily",
                      style: textStyle(
                        20,
                        textColor,
                        FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () => Get.find<AuthController>().login(),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.7,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepOrangeAccent.withOpacity(0.8),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.white,
                              spreadRadius: 5,
                            )
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Let's Go",
                            style: textStyle(
                              23,
                              Colors.white,
                              FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
