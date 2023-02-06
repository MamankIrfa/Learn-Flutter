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
            title: const Text('Training Flexible Widget'),
          ),
          body: Column(
            children: <Widget>[
              Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.only(
                                bottom: 5, left: 5, top: 5),
                            color: Colors.greenAccent,
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.only(
                                bottom: 5, right: 5, left: 5, top: 5),
                            color: Colors.indigoAccent,
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.only(
                                bottom: 5, right: 5, top: 5),
                            color: Colors.redAccent,
                          ))
                    ],
                  )),
              Flexible(
                  flex: 3,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 5, left: 5, right: 5),
                    color: Colors.yellowAccent,
                  )),
              Flexible(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 5, left: 5, right: 5),
                    color: Colors.blueAccent,
                  ))
            ],
          )),
    );
  }
}
