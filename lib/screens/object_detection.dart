import 'dart:io';
import 'package:camera/camera.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:codiv_2078/components/side_buttons.dart';

class ObjectDetection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    main();
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CameraApp(),
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

List<CameraDescription> cameras;

Future<void> main() async {
  cameras = await availableCameras();
//  runApp(CameraApp());
}

class CameraApp extends StatefulWidget {
  @override
  _CameraAppState createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  CameraController controller;

  @override
  void initState() {
    super.initState();
    controller = CameraController(cameras[0], ResolutionPreset.medium);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return AspectRatio(
        aspectRatio: controller.value.aspectRatio,
        child: CameraPreview(controller));
  }
}
