import 'package:amazonwebadminotif_v2/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'amazonwebadminotif',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home:  CustomTextField(),
    );
  }
}
