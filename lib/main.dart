import 'package:flutter/material.dart';

import 'splashScreen/my_splash_screen.dart';

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
      home: const MySplashScreen(),
    );
  }
}
