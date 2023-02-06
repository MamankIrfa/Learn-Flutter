import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;

  void clickButton() {
    setState(() {
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Training Statefull Widget"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                number.toString(),
                style: TextStyle(fontSize: 25 + number.toDouble()),
              ),
              ElevatedButton(onPressed: clickButton, child: const Text("Click Me")),
              ElevatedButton(
                  //Anonymous Method
                  onPressed: () {
                    setState(() {
                      number = 0;
                    });
                  },
                  child: const Text("Reset"))
            ]),
      ),
    ));
  }
}
