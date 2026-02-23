import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
        appBar: AppBar(backgroundColor: Colors.grey),

        body: Center(
          child: GestureDetector(
            onTap: () {
              print("tap detected");
            },
            child: Container(
              height: 100,
              width: 100,
              color: Colors.amber,
              child: Text("tap me "),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
