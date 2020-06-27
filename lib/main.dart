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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Transform.rotate(
                  angle: -30 * pi / 180,
                  child: FlatButton(
                    onPressed: () {},
                    color: Colors.green,
                  ),
                ),
                Transform.rotate(
                  angle: 30 * pi / 180,
                  child: FlatButton(
                    onPressed: () {},
                    color: Colors.green,
                  ),
                )
              ],
            ),
            CircleAvatar(
              radius: 30,
//              backgroundColor: Colors.green,
              child: Icon(Icons.shopping_cart),
            )
          ],
        ),
      ),
    );
  }
}
