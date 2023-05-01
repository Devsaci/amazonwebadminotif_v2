
import 'dart:async';

import 'package:flutter/material.dart';

import '../mainScreens/home_screen.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {

  splashScreenTimer()
  {
    Timer(const Duration(seconds: 3), ()
    {
      Navigator.push(context, MaterialPageRoute(builder: (c)=> const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            transform: const GradientRotation(60),
            center: Alignment.bottomCenter,
            colors: [
              Colors.teal.shade300,
              Colors.yellowAccent.shade100,
            ],
            // begin: const FractionalOffset(0.0, 0.0),
            // end: const FractionalOffset(1.0, 0.0),
            stops: const [0.0, 1.0],
            tileMode: TileMode.repeated,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset("images/welcome.png"),
              ),
              const SizedBox(height: 10),
              const Text(
                'iShop Users App',
                style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 3,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
