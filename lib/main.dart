import 'package:flutter/material.dart';
import 'package:flutter_iti_task/new_screen.dart';
import 'package:flutter_iti_task/vlidation_form_screen.dart';

import 'messanger_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MessengerScreen(),
    );
  }
}
