import 'package:amazonwebadminotif_v2/authScreens/login_tab_page.dart';
import 'package:amazonwebadminotif_v2/authScreens/registration_tab_page.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.pinkAccent,
                  Colors.purpleAccent,
                ],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              ),
            ),
          ),
          title: const Text(
            "iShop",
            style: TextStyle(
                fontSize: 30, letterSpacing: 3, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 9,
            indicatorSize: TabBarIndicatorSize.label,
            automaticIndicatorColorAdjustment: false,
            tabs: [
              Tab(
                text: "Login",
                icon: Icon(Icons.lock, color: Colors.white),
              ),
              Tab(
                  text: "Registration",
                  icon: Icon(Icons.person, color: Colors.white)),
            ],
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [
                Colors.purple.shade50,
                Colors.purple.shade300,
              ],
              // begin: FractionalOffset(0.0, 0.0),
              // end: FractionalOffset(1.0, 0.0),
              stops: const [0.0, 1.0],
              tileMode: TileMode.repeated,
            ),
          ),
          child: const TabBarView(
            children: [
              LoginTabPage(),
              RegistrationTabPage(),
            ],
          ),
        ),
      ),
    );
  }
}
