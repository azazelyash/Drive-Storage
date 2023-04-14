import 'package:firebase_drive/widgets/recent_files.dart';
import 'package:flutter/material.dart';

class FileScreen extends StatelessWidget {
  const FileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [RecentFiles()],
    );
  }
}
