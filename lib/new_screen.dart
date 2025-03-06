import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              // const Text("Hello World"),
              Expanded(
                child: Container(
                  color: Colors.red,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.greenAccent,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
