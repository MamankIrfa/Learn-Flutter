import 'package:flutter/material.dart';

class MainPageMedia extends StatelessWidget {
  const MainPageMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Training Media Query'),
      ),
      body: (MediaQuery.of(context).orientation == Orientation.portrait)
          ? Column(
              children: generateContainers,
            )
          : Row(
              children: generateContainers,
            ),
    );
  }

  List<Widget> get generateContainers {
    return <Widget>[
      Container(color: Colors.redAccent, width: 100, height: 100),
      Container(color: Colors.greenAccent, width: 100, height: 100),
      Container(color: Colors.blueAccent, width: 100, height: 100),
    ];
  }
}
