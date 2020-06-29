import 'dart:io';

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:codiv_2078/components/side_buttons.dart';
import 'object_detection.dart';
import 'package:camera_camera/camera_camera.dart';

File val;

import 'store_page.dart';

class LandingScreen extends StatelessWidget {
  static const String id = 'landing-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Welcome User',
            style: TextStyle(
                fontSize: 30.0,
                fontFamily: "Orbitron-bold",
                fontStyle: FontStyle.italic),
          ),
        ),
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

                textStyle: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Orbitron-bold',
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SideButtons(
                height: 150,
                leftFunction: () async {
                  val = await showDialog(
                      context: context,
                      builder: (context) => Camera(
                            mode: CameraMode.fullscreen,
                            //initialCamera: CameraSide.front,
                            enableCameraChange: false,
                            orientationEnablePhoto: CameraOrientation.portrait,
                            //  orientationEnablePhoto: CameraOrientation.landscape,
                            onChangeCamera: (direction, _) {
                              print('--------------');
                              print('$direction');
                              print('--------------');
                            },

                            imageMask: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Image(
                                  image: AssetImage('assets/hud2.png'),
                                ),
                                Image(
                                  image: AssetImage('assets/hud1.png'),
                                  height: 250,
                                ),
//                                SideButtons(
//                                  height: 150,
//                                  leftFunction: () {
//                                    print('left pressed');
//                                  },
//                                  rightFunction: () {
//                                    print('right pressed');
//                                  },
//                                ),
//                                SizedBox(
//                                  height: 15,
//                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 20.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      print('shopping cart pressed');
                                    },
                                    child: Container(
//                                      child: Icon(
//                                        Icons.shopping_cart,
//                                        size: 35.0,
//                                      ),
                                      height: 50.0,
                                      width: 50.0,
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
                                ),
                              ],
                            ),
                          ));
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ObjectDetection(
                                file: val,
                              )));
                },
//                leftFunction: () {
//                  print('left pressed');
//                  Navigator.push(
//                      context,
//                      MaterialPageRoute(
//                          builder: (context) => HomeScreen()));
//                },
                rightFunction: () {
                  print('right pressed');
                },
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: GestureDetector(
                  onTap: () {
                    print('shopping cart pressed');
                    Navigator.pushNamed(context, StorePage.id);
                  },
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
