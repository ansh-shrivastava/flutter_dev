import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tutorial/pages/first_page.dart';
import 'package:tutorial/pages/second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
      debugShowCheckedModeBanner: false,
      routes: {'/secondpage': (context) => SecondPage()},
    );
  }
}
