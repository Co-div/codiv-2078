import 'package:flutter/material.dart';
import 'dart:math';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('something'),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              color: Colors.black,
            ),
            Image(
              image: AssetImage('assets/sf2.gif'),
              height: double.infinity,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: TyperAnimatedTextKit(
                  text: ['Codiv', '2076', '2077', '2078'],
                  textStyle: TextStyle(fontSize: 30.0, fontFamily: "Agne"),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image(
                      image: AssetImage('assets/1.png'),
                      height: 150,
                    ),
                    Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationY(pi),
                        child: Image(
                          image: AssetImage('assets/1.png'),
                          height: 150,
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  radius: 30,
//              backgroundColor: Colors.green,
                  child: Icon(Icons.shopping_cart),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
