import 'package:flutter/material.dart';

class MainPageCard extends StatelessWidget {
  const MainPageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Training Custum Card',
          style: TextStyle(
              color: Colors.tealAccent[100],
              fontFamily: 'Iltim',
              fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.indigo[900],
      ),
body: Stack(),
    );
  }
}
