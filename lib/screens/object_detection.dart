import 'dart:io';
//import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';

const String ssd = "SSD MobileNet";
const String yolo = "Tiny YOLOv2";

class ObjectDetection extends StatefulWidget {
  ObjectDetection({
    @required this.file,
  });
  final File file;

  @override
  _ObjectDetectionState createState() => _ObjectDetectionState();
}

class _ObjectDetectionState extends State<ObjectDetection> {
  String _model = ssd;

  File _image = widget.file;

  double _imageWidth;

  double _imageHeight;

  bool _busy = false;

  List _recognitions;

////      ImageLabelerOptions(confidenceThreshold: 0.75),
//        );
//    final List<ImageLabel> labels = await labeler.processImage(visionImage);
//
////    for (ImageLabel label in labels) {
//////      final String text = label.text;
//////      final String entityId = label.entityId;
//////      final double confidence = label.confidence;
////
////    }
//    print(labels[0].text);
//    print(labels[0].entityId);
//    print(labels[0].confidence);
//    print('got here');
//  }

  void getImageLabels() async {}

  @override
  Widget build(BuildContext context) {
    print('atleast got here1');
//    getImageLabels();
    print('atleast got here3');

    return Container(
        child: widget.file != null
            ? Image.file(
                widget.file,
                fit: BoxFit.contain,
              )
            : Text("Tire a foto"));
  }
}
