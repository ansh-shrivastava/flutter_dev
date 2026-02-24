import 'package:flutter/material.dart';
import 'package:tutorial/pages/home_page.dart';
import 'package:tutorial/pages/profile_page.dart';
import 'package:tutorial/pages/second_page.dart';
import 'package:tutorial/pages/settings_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int selected_index = 0;

  void navigatebottom(int index) {
    setState(() {
      selected_index = index;
    });
  }

  final List listofpage = [
    //home page
    HomePage(),
    //settings
    settings_page(),
    // profile page
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("this is the first page hellow ")),
      body: listofpage[selected_index],
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            DrawerHeader(child: Icon(Icons.person_2)),
            //home page tiles
            ListTile(
              leading: Icon(Icons.home),
              title: Text("home"),
              onTap: () {
                Navigator.pop(
                  context,
                ); // this is to make the drawer close than switch the page
                Navigator.pushNamed(context, "/home");
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("settings"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/settingspage");
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_emergency),
              title: Text("contact"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected_index,
        onTap: navigatebottom,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.upload), label: "upload"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
        ],
      ),
    );
  }
}
