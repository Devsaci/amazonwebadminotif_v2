import 'package:flutter/cupertino.dart';

class CustomTextField extends StatefulWidget {
  // CustomTextField({Key? key}) : super(key: key);

  TextEditingController? textEditingController;
  IconData? iconData;
  String? hintText;
  bool? isObsecre = true;
  bool? enabled = true;

  CustomTextField({
    super.key,
    this.textEditingController,
    this.iconData,
    this.hintText,
    this.isObsecre,
    this.enabled,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
