import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
              color: Colors.deepOrange,
            ),
              accountName: Text(
                "Wahid Chowdhury",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                "wahidchowdhury@gmail.com",
                style: TextStyle(fontSize: 16),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/avatar.jpg"),
              ),
            ),
          ),

          // List TIle
          ListTile(
            leading: Icon(
              Icons.home_outlined,
              color: Colors.red,
            ),
            title: Text("Home", style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),),
          ),
          // List TIle
          ListTile(
            leading: Icon(
              Icons.person_outlined,
              color: Colors.red,
            ),
            title: Text("My Account", style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),),
          ),
          // List TIle
          ListTile(
            leading: Icon(
              Icons.shopping_cart,
              color: Colors.red,
            ),
            title: Text("My Orders", style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),),
          ),

          // List TIle
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            title: Text("My Wish List", style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),),
          ),
          // List TIle
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.red,
            ),
            title: Text("Settings", style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),),
          ),
          // List TIle
          ListTile(
            leading: Icon(
              Icons.logout_outlined,
              color: Colors.red,
            ),
            title: Text("Log Out", style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),),
          )
        ],
      ),
    );
  }
}
