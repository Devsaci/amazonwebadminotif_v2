import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          transform: const GradientRotation(5.0),
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
      child: Drawer(
        backgroundColor: Colors.yellowAccent.withOpacity(0.5),
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
            Container(
              padding: const EdgeInsets.only(top: 1),
              child: Column(
                children: [
                  const Divider(
                    color: Colors.grey,
                    height: 10,
                    thickness: 2,
                  ),
                  //home
                  ListTile(
                    leading: const Icon(Icons.home, color: Colors.grey),
                    title:
                        const Text("Home", style: TextStyle(color: Colors.grey)),
                    onTap: () {},
                  ),
                  const Divider(color: Colors.grey, height: 10, thickness: 2),
                  //my orders
                  ListTile(
                    leading: const Icon(Icons.reorder, color: Colors.grey),
                    title: const Text("My Orders",
                        style: TextStyle(color: Colors.grey)),
                    onTap: () {},
                  ),
                  const Divider(height: 10, color: Colors.grey, thickness: 2),
                  //not yet received orders
                  ListTile(
                      leading: const Icon(Icons.picture_in_picture_alt_rounded,
                          color: Colors.grey),
                      title: const Text("Not Yet Received Orders",
                          style: TextStyle(color: Colors.grey)),
                      onTap: () {}),
                  const Divider(height: 10, color: Colors.grey, thickness: 2),
                  //history
                  ListTile(
                      leading: const Icon(Icons.access_time, color: Colors.grey),
                      title: const Text("History",
                          style: TextStyle(color: Colors.grey)),
                      onTap: () {}),
                  const Divider(height: 10, color: Colors.grey, thickness: 2),
                  //history
                  ListTile(
                      leading: const Icon(Icons.access_time, color: Colors.grey),
                      title: const Text("History",
                          style: TextStyle(color: Colors.grey)),
                      onTap: () {}),
                  const Divider(height: 10, color: Colors.grey, thickness: 2),
                  //search
                  ListTile(
                      leading: const Icon(Icons.search, color: Colors.grey),
                      title: const Text(
                        "Search",
                        style: TextStyle(color: Colors.grey),
                      ),
                      onTap: () {}),
                  const Divider(height: 10, color: Colors.grey, thickness: 2),
                  //logout
                  ListTile(
                      leading: const Icon(Icons.exit_to_app, color: Colors.grey),
                      title: const Text(
                        "Sign Out",
                        style: TextStyle(color: Colors.grey),
                      ),
                      onTap: () {
                        if (kDebugMode) {
                          print("Sign Out");
                        }
                      }),
                  const Divider(height: 10, color: Colors.grey, thickness: 2),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
