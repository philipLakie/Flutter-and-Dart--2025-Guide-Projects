import 'package:flutter/material.dart';
import 'package:roll_dice_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          const Color.fromARGB(255, 190, 116, 110),
          const Color.fromARGB(255, 9, 33, 78)
        ]),
      ),
    ),
  );
}
