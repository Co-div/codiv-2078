import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
//import 'package:image_picker/image_picker.dart';
import 'package:codiv_2078/components/side_buttons.dart';
import 'dart:async';
import 'package:path_provider/path_provider.dart';
import 'package:video_player/video_player.dart';
import 'package:camera_camera/camera_camera.dart';

class ObjectDetection extends StatefulWidget {
  @override
  _ObjectDetectionState createState() => _ObjectDetectionState();
}

class _ObjectDetectionState extends State<ObjectDetection> {
  File val;
  void openCamera() async {
    val = await showDialog(
        context: context,
        builder: (context) => Camera(
              mode: CameraMode.fullscreen,
              // initialCamera: CameraSide.front,
              enableCameraChange: false,
              //  orientationEnablePhoto: CameraOrientation.landscape,
              onChangeCamera: (direction, _) {
                print('--------------');
                print('$direction');
                print('--------------');
              },

              // imageMask: CameraFocus.square(
              //   color: Colors.black.withOpacity(0.5),
              // ),
            ));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    openCamera();
    return Scaffold(
      body: Stack(
        children: <Widget>[
          
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SideButtons(
                height: 150,
                leftFunction: () {
                  print('left pressed');
                },
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
                    print('capture pressed');
                  },
                  child: Container(
                    child: Icon(
                      Icons.add_a_photo,
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

////////////////////////////////////////////////////////////

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   File val;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text("")),
//         floatingActionButton: FloatingActionButton(
//             child: Icon(Icons.camera_alt),
//             onPressed: () async {
//               val = await showDialog(
//                   context: context,
//                   builder: (context) => Camera(
//                         mode: CameraMode.fullscreen,
//                         // initialCamera: CameraSide.front,
//                         enableCameraChange: false,
//                         //  orientationEnablePhoto: CameraOrientation.landscape,
//                         onChangeCamera: (direction, _) {
//                           print('--------------');
//                           print('$direction');
//                           print('--------------');
//                         },

//                         // imageMask: CameraFocus.square(
//                         //   color: Colors.black.withOpacity(0.5),
//                         // ),
//                       ));
//               setState(() {});
//             }),
//         body: Center(
//             child: Container(
//                 height: MediaQuery.of(context).size.height * 0.7,
//                 width: MediaQuery.of(context).size.width * 0.8,
//                 child: val != null
//                     ? Image.file(
//                         val,
//                         fit: BoxFit.contain,
//                       )
//                     : Text("Tire a foto"))));
//   }
// }
