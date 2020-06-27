import 'package:flutter/material.dart';
import 'dart:math';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
                child: TypewriterAnimatedTextKit(
                  text: ['Codiv 2078'],
                  
                  // totalRepeatCount: 1,
                  speed: Duration(milliseconds: 500),
                  
                  textStyle: TextStyle(fontSize: 30.0, fontFamily: 'Orbitron-bold',),
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
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Container(
                    child: Icon(
                      Icons.shopping_cart,
                      size: 35.0,
                    ),
                    height: 75.0,
                    width: 75.0,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue,
                            blurRadius: 5.0,
                            spreadRadius: 7.0,
                          ),
                        ]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
