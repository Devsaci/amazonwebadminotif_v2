import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_text_field.dart';

class LoginTabPage extends StatefulWidget {
  const LoginTabPage({Key? key}) : super(key: key);

  @override
  State<LoginTabPage> createState() => _LoginTabPageState();
}

class _LoginTabPageState extends State<LoginTabPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "images/login.png",
            height: MediaQuery.of(context).size.width * 0.4,
          ),
        ),
        Form(
          key: formKey,
          child: Column(
            children: [
              //email
              CustomTextField(
                textEditingController: emailTextEditingController,
                iconData: Icons.email,
                hintText: "Email",
                isObsecre: false,
                enabled: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
