import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Training Styling Text'),
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              // ignore: prefer_const_constructors
              Text(
                'Styling Font Text',
                style: const TextStyle(
                    fontFamily: "Itim",
                    fontSize: 30,
                    color: Color.fromARGB(135, 27, 123, 175)),
              ),
              // ignore: prefer_const_constructors
              Text(
                'Styling Font Text 2',
                style: const TextStyle(
                    fontFamily: "OpenSans",
                    fontSize: 30,
                    color: Color.fromARGB(134, 175, 150, 27)),
              ),
              // ignore: prefer_const_constructors
              Text(
                'Styling Font Text Italic',
                style: const TextStyle(
                    fontFamily: "OpenSans",
                    fontSize: 30,
                    color: Color.fromARGB(134, 27, 175, 57),
                    fontStyle: FontStyle.italic),
              ),
            ],
          ))),
    );
  }
}
