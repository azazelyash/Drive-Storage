import 'package:firebase_drive/widgets/storage_container.dart';
import 'package:firebase_drive/widgets/upload_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class StorageScreen extends StatelessWidget {
  const StorageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          StorageContainer(),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0),
            child: UploadOptions(),
          ),
        ],
      ),
    );
  }
}
