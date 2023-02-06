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
  int counter = 0;

  void addButton() {
    setState(() {
      widgets.add(Text(
        'Ini adalah berupa data ke-$counter',
        style: const TextStyle(
            color: Color.fromARGB(255, 91, 249, 18),
            fontFamily: 'Itim',
            fontStyle: FontStyle.italic,
            fontSize: 27),
      ));
      counter++;
    });
  }

  void removeButton() {
    setState(() {
      widgets.removeLast();
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Training Stack Align',
          ),
        ),
        body: Stack(children: <Widget>[
          Column(
            children: <Widget>[
              Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                          child: Container(
                        color: Colors.white,
                      )),
                      Flexible(
                          child: Container(
                        color: Colors.cyan,
                      )),
                    ],
                  )),
              Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                          child: Container(
                        color: Colors.cyan,
                      )),
                      Flexible(
                          child: Container(
                        color: Colors.white,
                      )),
                    ],
                  )),
            ],
          ),
          ListView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: widgets,
              )
            ],
          ),
          Align(
              alignment: const AlignmentDirectional(-0.9, 1),
              child: ElevatedButton(
                  onPressed: addButton, child: const Text('Add Data'))),
          // ignore: prefer_const_constructors
          Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                  onPressed: removeButton, child: const Text('Remove Data'))),
          Align(
              alignment: const AlignmentDirectional(0.9, 1),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widgets = [];
                      counter = 0;
                    });
                  },
                  child: const Text('Remove All'))),
        ]),
      ),
    );
  }
}
