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
        backgroundColor: Colors.green,
        body: Container(
          margin: const EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              buildCard(Icons.add_shopping_cart_outlined, 'Add To Cart'),
              buildCard(Icons.remove_shopping_cart_outlined, 'Remove Cart List')
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
        elevation: 5,
        child: Row(
          children: <Widget>[
            Container(margin: const EdgeInsets.all(5), child: Icon(iconData)),
            Text(text)
          ],
        ));
  }
}
