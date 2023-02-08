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
          title: const Text('Training Ink Well'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor: Colors.blueGrey),
              child: const Text('First Button'),
            ),
            Material(
              borderRadius: BorderRadius.circular(25),
              elevation: 5,
              child: Container(
                width: 130,
                height: 38,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(colors: [
                      Colors.deepOrangeAccent,
                      Colors.lightBlueAccent
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                child: Material(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(25),
                      splashColor: const Color.fromARGB(185, 59, 255, 255),
                      onTap: () {},
                      child: const Center(
                        child: Text(
                          'Second Button',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),
                    )),
              ),
            )
          ],
        )),
      ),
    );
  }
}
