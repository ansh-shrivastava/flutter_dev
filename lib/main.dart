import 'package:flutter/material.dart';
import 'package:tutorial/pages/first_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  // functions
  void greet() {
    print("hellow ansh ");
  }

  void greet_(String name) {
    print("hello" + name);
  }

  void displayData(List a) {
    int i = 0;
    for (i = 0; i < a.length; i++) {
      print(a[i]);
    }
  }

  // data structure
  // Lists -> ordred collection of elements
  List<int> numbers = [1, 2, 3];
  List<String> names = ["ansh", "yash", "saksham"];

  // sets -> unordered collection of unique elements
  Set<String> unique = {"ansh", "yash"};

  // map -> stores the key value pair
  Map user = {'name': 'ansh'};
  Map<String, int> info = {'age': 5};

  // this builds the widigets
  @override
  Widget build(BuildContext context) {
    //function call
    greet();
    greet_(" yash");
    displayData(numbers);
    displayData(names);
    return MaterialApp(debugShowCheckedModeBanner: false, home: FirstPage());
  }
}
