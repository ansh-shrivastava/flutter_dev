import 'package:flutter/material.dart';
import 'package:tutorial/pages/first_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 190, 87, 208),
        body: Center(
          child: Column(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.amber,
                padding: EdgeInsets.all(25),
                child: Center(child: Text("this is the child widget")),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(25),
                child: Center(
                  child: Text(
                    "this is the second container",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.amber,
                padding: EdgeInsets.all(25),
                child: Icon(Icons.favorite, size: 40, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
