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
  List<Widget> widgets = [];
  int counter = 1;

  void addData() {
    setState(() {
      widgets.add(Text(
        'Data Ke $counter',
        style: const TextStyle(
            fontFamily: 'Itim',
            fontSize: 20,
            color: Color.fromARGB(255, 0, 132, 255)),
      ));
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Training List View'),
          ),
          body: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: addData, child: const Text('Add Data')),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          widgets.removeLast();
                          counter--;
                        });
                      },
                      child: const Text('Remove Data')),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          widgets = [];
                          counter = 0;
                        });
                      },
                      child: const Text('Remove All'))
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: unnecessary_null_comparison
                children: widgets,
              )
            ],
          )),
    );
  }
}
