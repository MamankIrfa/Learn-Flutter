import 'package:flutter/material.dart';

class MainPageCard extends StatelessWidget {
  const MainPageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Training Custom Card',
            style: TextStyle(
                color: Colors.tealAccent[100],
                fontSize: 23,
                fontFamily: 'Itim',
                fontWeight: FontWeight.w700),
          ),
        ),
        backgroundColor: Colors.indigo[700],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 33, 222, 243),
              Color.fromARGB(255, 3, 64, 170)
            ], begin: Alignment.topCenter, end: Alignment.bottomRight)),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Card(
                elevation: 10,
                child: Stack(
                  children: <Widget>[
                    Opacity(
                      opacity: 0.1,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image: const DecorationImage(
                                image: AssetImage('images/pattern2.png'),
                                repeat: ImageRepeat.repeat)),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4),
                              topRight: Radius.circular(4)),
                          image: DecorationImage(
                              image: AssetImage('images/water.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          20,
                          50 + MediaQuery.of(context).size.height * 0.35,
                          20,
                          20),
                      // ignore: prefer_const_literals_to_create_immutables
                      child: Column(children: <Widget>[
                        const Center(
                          child: Text('Created Custom Card In Flutter',
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "OpenSans",
                                  fontStyle: FontStyle.italic,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900)),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 12, 0, 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Created Since :',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700)),
                              Text(' 8 Feb, 2023',
                                  style: TextStyle(
                                      color: Colors.indigo[700],
                                      fontFamily: "OpenSans",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700)),
                            ],
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Spacer(
                              flex: 10,
                            ),
                            Icon(
                              Icons.thumb_up_alt_outlined,
                              size: 20,
                              color: Colors.grey,
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            Text(
                              "99",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Spacer(flex: 1),
                            Icon(
                              Icons.comment_outlined,
                              size: 20,
                              color: Colors.grey,
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            Text(
                              "888",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Spacer(
                              flex: 10,
                            ),
                          ],
                        )
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
