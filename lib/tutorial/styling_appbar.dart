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
        // ignore: prefer_const_constructors
        leading: Icon(
          Icons.adb,
          color: Colors.white,
        ),
        title: const Text(
          'Styling AppBar',
          style:
              TextStyle(color: Colors.white, fontFamily: 'Itim', fontSize: 25),
        ),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.exit_to_app))
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 133, 243, 60),
                    Color.fromARGB(255, 54, 255, 255)
                  ],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight),
              image: DecorationImage(
                  image: AssetImage('images/pattern.png'),
                  fit: BoxFit.none,
                  repeat: ImageRepeat.repeat)),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 176, 226, 251),
          Color.fromARGB(255, 167, 223, 145)
        ], begin: FractionalOffset.bottomRight, end: FractionalOffset.topLeft)),
        child: Container(
          margin: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: const Color.fromARGB(255, 68, 177, 255),
          ),
        ),
      ),
    ));
  }
}
