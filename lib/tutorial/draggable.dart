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
  Color color1 = Colors.blueAccent;
  Color color2 = Colors.greenAccent;
  Color targetColor = Colors.redAccent;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Training Draggable'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Draggable<Color>(
                    data: color2,
                    childWhenDragging: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color1,
                        shape: const StadiumBorder(),
                      ),
                    ),
                    feedback: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color2.withOpacity(0.2),
                        shape: const StadiumBorder(),
                        elevation: 5,
                      ),
                    ),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color2.withOpacity(0.8),
                        shape: const StadiumBorder(),
                        elevation: 5,
                      ),
                    ),
                  ),
                  Draggable<Color>(
                    data: color1,
                    childWhenDragging: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color2,
                        shape: const StadiumBorder(),
                      ),
                    ),
                    feedback: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color1.withOpacity(0.2),
                        shape: const StadiumBorder(),
                        elevation: 5,
                      ),
                    ),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color1.withOpacity(0.8),
                        shape: const StadiumBorder(),
                        elevation: 5,
                      ),
                    ),
                  ),
                ],
              ),
              DragTarget<Color>(
                  onWillAccept: (value) => true,
                  onAccept: (value) {
                    isAccepted = true;
                    targetColor = value;
                  },
                  builder: (context, candidates, rejected) {
                    return (isAccepted)
                        ? SizedBox(
                            width: 100,
                            height: 100,
                            child: Material(
                              color: targetColor,
                              shape: const StadiumBorder(),
                              elevation: 5,
                            ))
                        : const SizedBox(
                            width: 100,
                            height: 100,
                            child: Material(
                              color: Colors.black45,
                              shape: StadiumBorder(),
                              elevation: 5,
                            ));
                  }),
            ]),
      ),
    );
  }
}
