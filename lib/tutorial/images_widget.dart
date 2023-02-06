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
            title: const Text('Training Images Widget'),
          ),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 300,
                  padding: const EdgeInsets.all(5),
                  color: Colors.black,
                  child: const Image(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1538481199705-c710c4e965fc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1265&q=80'),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: 300,
                  height: 300,
                  padding: const EdgeInsets.only(bottom: 5, left: 5, right: 5),
                  color: Colors.black,
                  child: const Image(
                    image: AssetImage('images/tank.png'),
                    fit: BoxFit.fitHeight,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
