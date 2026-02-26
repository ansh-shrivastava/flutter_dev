import 'package:flutter/material.dart';

class Todop extends StatefulWidget {
  Todop({super.key});

  @override
  State<Todop> createState() => _TodopState();
}

class _TodopState extends State<Todop> {
  @override
  // to acces the text written by the user we will need a text editing controller
  TextEditingController myController = TextEditingController();

  String greetstring = "";

  void greetuser() {
    setState(() {
      greetstring = "hello , " + myController.text;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Text(greetstring),
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "please enter your name... ",
                ),
              ),

              ElevatedButton(onPressed: greetuser, child: Text("next")),
            ],
          ),
        ),
      ),
    );
  }
}
