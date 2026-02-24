import 'package:flutter/material.dart';
import 'package:tutorial/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("this is the first page hellow ")),
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
