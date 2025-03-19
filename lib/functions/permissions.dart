import 'package:permission_handler/permission_handler.dart';

Future<bool> checkAndRequestCameraPermission() async {
  bool isGranted = false;
  //
  await Permission.camera
      .onGrantedCallback(() {
        isGranted = true;
      })
      .onPermanentlyDeniedCallback(() {})
      .request();
  return isGranted;
}
