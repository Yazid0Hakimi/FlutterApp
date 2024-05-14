import 'package:first_app/Contact_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text("Home Page", style: TextStyle(fontSize: 25)),
      )),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: CircleAvatar(
              backgroundImage: AssetImage("download.png"),
            )),
            ListTile(
              title: Text("Home", style: TextStyle(fontSize: 24)),
              onTap: () {},
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text("Contact", style: TextStyle(fontSize: 24)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ContactPage()));
              },
              leading: Icon(Icons.contact_emergency),
            ),
            ListTile(
              title: Text("Meteo", style: TextStyle(fontSize: 24)),
              onTap: () {},
              leading: Icon(Icons.cloud),
            ),
            ListTile(
              title: Text("Chatbot", style: TextStyle(fontSize: 24)),
              onTap: () {},
              leading: Icon(Icons.chat_bubble),
            ),
            ListTile(
              title: Text("Mask Detection", style: TextStyle(fontSize: 24)),
              onTap: () {},
              leading: Icon(Icons.air),
            )
          ],
        ),
      ),
    );
  }
}
