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
            title: const Text('Training Column & Row'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text('Text 1'),
              const Text('Text 2'),
              const Text('Text 3'),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  const Text('Text 4'),
                  const Text('Text 5'),
                  const Text('Text 6')
                ],
              )
            ],
          )),
    );
  }
}
