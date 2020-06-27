import 'package:flutter/material.dart';
import 'dart:math';

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
            Image.asset('asset/sf.gif'),
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
