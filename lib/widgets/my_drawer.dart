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
            padding: const EdgeInsets.only(top: 26, bottom: 12),
            child: Column(
              children: [
                //user profile image
                Container(
                  height: 130,
                  width: 130,
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1446707052533-0e1d48e08aa9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dHJlc3N8ZW58MHx8MHx8&w=1000&q=80"),
                  ),
                ),
                const SizedBox(height: 12),
                //user name
                const Text(
                  "user Name",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),
          //body
        ],
      ),
    );
  }
}
