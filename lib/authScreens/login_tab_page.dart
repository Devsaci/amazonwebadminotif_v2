import 'package:flutter/cupertino.dart';

class LoginTabPage extends StatefulWidget {
  const LoginTabPage({Key? key}) : super(key: key);

  @override
  State<LoginTabPage> createState() => _LoginTabPageState();
}

class _LoginTabPageState extends State<LoginTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(
            "images/login.png",
          ),
        ],
      ),
    );
  }
}
