import 'package:flutter/material.dart';
import 'package:tutorial/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("this is the first page hellow ")),
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
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.upload), label: "upload"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            /*Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
            );*/
            Navigator.pushNamed(context, '/secondpage');
          },
          child: Text("next page"),
        ),
      ),
    );
  }
}
