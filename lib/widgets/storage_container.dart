import 'package:firebase_drive/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class StorageContainer extends StatelessWidget {
  const StorageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 247, 245, 245),
        borderRadius: BorderRadius.circular(10),
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
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 25, bottom: 35),
        child: Column(
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "20",
                        style: textStyle(
                          50,
                          const Color(0xff635c9b),
                          FontWeight.bold,
                        ),
                      ),
                      Text(
                        "%",
                        style: textStyle(
                          17,
                          const Color(0xff635c9b),
                          FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Used",
                    style: textStyle(
                      20,
                      textColor.withOpacity(0.7),
                      FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Container(
                      height: 18,
                      width: 18,
                      decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Used",
                          style: textStyle(
                            18,
                            textColor.withOpacity(0.7),
                            FontWeight.w600,
                          ),
                        ),
                        Text(
                          "50 GB",
                          style: textStyle(
                            20,
                            const Color(0xff635c9b),
                            FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 18,
                      width: 18,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.25),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Left",
                          style: textStyle(
                            18,
                            textColor.withOpacity(0.7),
                            FontWeight.w600,
                          ),
                        ),
                        Text(
                          "14 GB",
                          style: textStyle(
                            20,
                            const Color(0xff635c9b),
                            FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
