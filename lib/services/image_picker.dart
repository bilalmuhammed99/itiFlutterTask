import 'dart:async';
import 'dart:io';

import 'package:face_camera/face_camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iti_task/functions/permissions.dart';
import 'package:image_picker/image_picker.dart';

enum ImageSourceType { camera, gallery }

class ImagePickerService {
  final _imagePicker = ImagePicker();

  Future<bool> checkPermissions(ImageSource source) async {
    // if (!await checkAndRequestMediaPermission()) {
    //   return false;
    // }

    if (source == ImageSource.camera &&
        !await checkAndRequestCameraPermission()) {
      return false;
    }

    return true;
  }

  Future<File?> pickAndProcessImage({
    required ImageSource source,
    required BuildContext context,
    bool requireFaceDetection = false,
  }) async {
    try {
      // Show loading indicator
      // EasyLoading.show(
      //     status: 'loading'.tr(context),
      //     dismissOnTap: false,
      //     maskType: EasyLoadingMaskType.black);

      File? imageFile;

      if (requireFaceDetection && source == ImageSource.camera) {
        // EasyLoading.dismiss();
        imageFile = await _openSmartFaceCamera(context);

        if (imageFile == null) {
          return null;
        }
        // EasyLoading.show(
        //     status: 'processing'.tr(context),
        //     dismissOnTap: false,
        //     maskType: EasyLoadingMaskType.black);
      } else {
        final pickedFile = await _imagePicker.pickImage(source: source);

        if (pickedFile == null) {
          // EasyLoading.dismiss();
          return null;
        }

        imageFile = File(pickedFile.path);
      }

      // Convert File to XFile before processing
      final XFile xFile = XFile(imageFile.path);
      // final processedImage = xFile;

      // EasyLoading.dismiss();
      return imageFile;
    } catch (e) {
      // EasyLoading.dismiss();
      rethrow;
    }
  }

  Future<File?> _openSmartFaceCamera(BuildContext context) async {
    final completer = Completer<File?>();
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Material(
        child: Stack(
          children: [
            SmartFaceCamera(
              captureControlIcon: Container(
                child: const Icon(
                  Icons.camera,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              autoCapture: true,
              defaultCameraLens: CameraLens.front,
              message: 'camera_message',
              onCapture: (File? image) {
                Navigator.pop(context);
                completer.complete(image);
              },
            ),
            Positioned(
              top: 40,
              right: 20,
              child: IconButton(
                icon: const Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.pop(context);
                  completer.complete(null);
                },
              ),
            ),
          ],
        ),
      ),
    );

    return completer.future;
  }
}
