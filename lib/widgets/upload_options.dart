import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class UploadOptions extends StatelessWidget {
  const UploadOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        coloredContainer(
          Colors.lightBlue.withOpacity(0.2),
          const Icon(
            Icons.image,
            color: Colors.cyan,
            size: 30,
          ),
          "image",
          "Image",
        ),
        coloredContainer(
          Colors.pink.withOpacity(0.3),
          Icon(
            Icons.play_arrow_rounded,
            color: Colors.pink.withOpacity(0.5),
            size: 30,
          ),
          "video",
          "Videos",
        ),
        coloredContainer(
          Colors.blue.withOpacity(0.4),
          Icon(
            EvaIcons.fileText,
            color: Colors.indigoAccent.withOpacity(0.5),
            size: 30,
          ),
          "applicatons",
          "Documents",
        ),
        coloredContainer(
          Colors.purple.withOpacity(0.2),
          Icon(
            Icons.music_note,
            color: Colors.pink.withOpacity(0.3),
            size: 30,
          ),
          "music",
          "Music",
        ),
      ],
    );
  }

  Widget coloredContainer(
    Color bgColor,
    Icon icon,
    String option,
    String title,
  ) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: bgColor,
      ),
      child: Center(
        child: icon,
      ),
    );
  }
}
