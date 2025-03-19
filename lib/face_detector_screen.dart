import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'dart:ui';
import 'dart:ui';

import 'package:face_camera/face_camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_iti_task/services/image_picker.dart';
import 'package:image_picker/image_picker.dart';

class FaceDetectorScreen extends StatelessWidget {
  const FaceDetectorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            child: const Text("TESTs"),
            onTap: () {
              showAdaptiveDialog(
                  context: context,
                  builder: (context) => SmartFaceCamera(onCapture: (file) {
                        print(
                          "file",
                        );
                      }));
            },
          ),
          Center(
            child: InkWell(
              onTap: () {
                final service = ImagePickerService();
                service.checkPermissions(ImageSource.camera);
                service.pickAndProcessImage(
                    source: ImageSource.camera,
                    context: context,
                    requireFaceDetection: true);
              },
              child: Container(
                width: 120,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.amberAccent,
                ),
                child: const Center(child: Text("OPEN CAMERA")),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ImageProcessingService {
  Future<File> processImage(XFile pickedFile) async {
    final data = await pickedFile.readAsBytes();
    final Completer<File> completer = Completer<File>();

    File? processedImage;

    // Resize the image if it's too large

    processedImage = File(pickedFile.path);

    completer.complete(processedImage);

    return completer.future;
  }
}
