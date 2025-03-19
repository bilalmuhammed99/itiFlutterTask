import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iti_task/auth_screen.dart';
import 'package:flutter_iti_task/face_detector_screen.dart';
import 'package:flutter_iti_task/firebase_options.dart';
import 'package:flutter_iti_task/new_screen.dart';
import 'package:flutter_iti_task/vlidation_form_screen.dart';

import 'messanger_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase with your existing project configuration
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AuthScreen(),
    );
  }
}
