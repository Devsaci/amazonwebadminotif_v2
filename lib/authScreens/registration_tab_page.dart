import 'package:amazonwebadminotif_v2/widgets/custom_text_field.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RegistrationTabPage extends StatefulWidget {
  const RegistrationTabPage({Key? key}) : super(key: key);

  @override
  State<RegistrationTabPage> createState() => _RegistrationTabPageState();
}

class _RegistrationTabPageState extends State<RegistrationTabPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      child: Column(
        children: [
          const SizedBox(height: 12),
          //get-capture image
          GestureDetector(
            onTap: () {
              if (kDebugMode) {
                print("Add Photo");
              }
            },
            child: CircleAvatar(
              radius: MediaQuery.of(context).size.width * 0.2,
              backgroundColor: Colors.black87,
              child: Icon(
                Icons.add_photo_alternate,
                color: Colors.amber,
                size: MediaQuery.of(context).size.width * 0.2,
              ),
            ),
          ),
          const SizedBox(height: 12),
          //inputs form fields
          Form(
            key: formKey,
            child: Column(
              children: [
                //name
                CustomTextField(
                  textEditingController: nameTextEditingController,
                  iconData: Icons.person,
                  hintText: "Name",
                  isObsecre: false,
                  enabled: true,
                ),
                //email
                CustomTextField(
                  textEditingController: emailTextEditingController,
                  iconData: Icons.email,
                  hintText: "Email",
                  isObsecre: false,
                  enabled: true,
                ),
                //pass
                CustomTextField(
                  textEditingController: passwordTextEditingController,
                  iconData: Icons.lock,
                  hintText: "Password",
                  isObsecre: true,
                  enabled: true,
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
