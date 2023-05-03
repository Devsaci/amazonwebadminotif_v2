import 'package:flutter/cupertino.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({Key? key}) : super(key: key);

  TextEditingController? textEditingController;
  IconData? iconData;
  String? hintText;
  bool? isObsecre = true;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
