import 'package:flutter/cupertino.dart';

class RegistrationTabPage extends StatefulWidget {
  const RegistrationTabPage({Key? key}) : super(key: key);

  @override
  State<RegistrationTabPage> createState() => _RegistrationTabPageState();
}

class _RegistrationTabPageState extends State<RegistrationTabPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      child: Column(
        children: [
          const SizedBox(height: 12),
          //get-capture image
          GestureDetector(
            onTap: () {},
          )
        ],
      ),
    ));
  }
}
