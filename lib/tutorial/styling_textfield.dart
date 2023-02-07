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
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Training Text Field'),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  fillColor: Colors.lightBlue[50],
                  filled: true,
                  prefixIcon: const Icon(Icons.person),
                  hintText: 'Your Username!',
                  hintStyle: const TextStyle(
                      fontSize: 15, color: Color.fromARGB(158, 148, 148, 148)),
                  labelText: 'Username',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
              // maxLength: 5,
              // obscureText: true,
              onChanged: (value) {
                setState(() {});
              },
              controller: controller,
            ),
            Text(
              controller.text,
              style: const TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 30,
                  fontWeight: FontWeight.w900),
            )
          ],
        ),
      ),
    ));
  }
}
