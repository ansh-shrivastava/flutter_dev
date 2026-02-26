import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tutorial/pages/first_page.dart';
import 'package:tutorial/pages/home_page.dart';
import 'package:tutorial/pages/second_page.dart';
import 'package:tutorial/pages/settings_page.dart';
import 'package:tutorial/pages/to_do.dart';

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
      routes: {
        '/home': (context) => HomePage(),
        '/secondpage': (context) => SecondPage(),
        '/settingspage': (context) => settings_page(),
        '/todo': (context) => Todop(),
      },
    );
  }
}
