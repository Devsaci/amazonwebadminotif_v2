import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black54,
      child: ListView(
        children: [
          //header
          Container(
            child: Column(
              children: [
                //user profile image
                Container(
                  height: 130,
                  width: 130,
                  child: CircleAvatar(),
                )
              ],
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
