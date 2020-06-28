import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
//import 'package:image_picker/image_picker.dart';
import 'package:codiv_2078/components/side_buttons.dart';
import 'dart:async';
import 'package:path_provider/path_provider.dart';
import 'package:video_player/video_player.dart';
import 'package:camera_camera/camera_camera.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  File val;

  @override
  Widget build(BuildContext context) {
    return Camera(
        mode: CameraMode.fullscreen,
        // initialCamera: CameraSide.front,
        enableCameraChange: false,
         orientationEnablePhoto: CameraOrientation.portrait,
        onChangeCamera: (direction, _) {
          print('--------------');
          print('$direction');
          print('--------------');
        },
        imageMask: SideButtons(
          height: 150,
          leftFunction: () {
            print('left pressed');
          },
          rightFunction: () {
            print('right pressed');
          },
        )
        //   color: Colors.black.withOpacity(0.5),
        // ),
        );
    // return Scaffold(
    //     appBar: AppBar(title: Text("")),
    //     floatingActionButton: FloatingActionButton(
    //         child: Icon(Icons.camera_alt),
    //         onPressed: () async {
    //           val = await showDialog(
    //               context: context,
    //               builder: (context) => Camera(
    //                   mode: CameraMode.fullscreen,
    //                   // initialCamera: CameraSide.front,
    //                   enableCameraChange: false,
    //                   //  orientationEnablePhoto: CameraOrientation.landscape,
    //                   onChangeCamera: (direction, _) {
    //                     print('--------------');
    //                     print('$direction');
    //                     print('--------------');
    //                   },
    //                   imageMask: SideButtons(
    //                     height: 150,
    //                     leftFunction: () {
    //                       print('left pressed');
    //                     },
    //                     rightFunction: () {
    //                       print('right pressed');
    //                     },
    //                   )
    //                   //   color: Colors.black.withOpacity(0.5),
    //                   // ),
    //                   ));
    //           setState(() {});
    //         }),
    //     body: Center(
    //         child: Container(
    //             height: MediaQuery.of(context).size.height * 0.7,
    //             width: MediaQuery.of(context).size.width * 0.8,
    //             child: val != null
    //                 ? Image.file(
    //                     val,
    //                     fit: BoxFit.contain,
    //                   )
    //                 : Text("Tire a foto"))));
  }
}
