import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';
import 'package:google_ml_kit/google_ml_kit.dart';

class FaceDetectionResult {
  final bool success;
  final String? errorMessage;

  FaceDetectionResult({
    required this.success,
    this.errorMessage,
  });
}

class FaceDetectionService {
  late final FaceDetector _faceDetector;

  FaceDetectionService() {
    _faceDetector = GoogleMlKit.vision.faceDetector(
      FaceDetectorOptions(
        enableClassification: true,
        enableTracking: true,
        enableLandmarks: true,
        minFaceSize: 0.15,
        performanceMode: FaceDetectorMode.accurate,
      ),
    );
  }

  void dispose() {
    _faceDetector.close();
  }

  Future<FaceDetectionResult> detectFace(
      File image, BuildContext context) async {
    // final accountBloc = context.read<AccountBloc>();
    try {
      final inputImage = InputImage.fromFile(image);
      final List<Face> faces = await _faceDetector.processImage(inputImage);

      if (faces.isEmpty) {
        const errorMessage = 'no_face_detected';
        // accountBloc.isThereErrorWithFaceDetector = true;
        showDialog(
          context: context,
          builder: (context) => const Text(errorMessage),
        );

        return FaceDetectionResult(
          success: false,
          errorMessage: errorMessage,
        );
      } else if (faces.length > 1) {
        const errorMessage = 'multiple_faces_detected';
        // accountBloc.isThereErrorWithFaceDetector = true;

        showDialog(
          context: context,
          builder: (context) => const Text("TESTS"),
        );

        return FaceDetectionResult(
          success: false,
          errorMessage: errorMessage,
        );
      }
      // accountBloc.isThereErrorWithFaceDetector = false;

      return FaceDetectionResult(success: true);
    } catch (e) {
      log('Face detection error: $e');
      // We return success even on error to allow the process to continue
      return FaceDetectionResult(success: true);
    }
  }
}
