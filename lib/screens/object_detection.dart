import 'dart:io';
import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import 'package:flutter/material.dart';

class ObjectDetection extends StatelessWidget {
  ObjectDetection({
    @required this.file,
  });
  final File file;

  void getImageLabels() async {
    print('got here 1');
    final FirebaseVisionImage visionImage = FirebaseVisionImage.fromFile(file);
    final ImageLabeler labeler = FirebaseVision.instance.cloudImageLabeler(
//      ImageLabelerOptions(confidenceThreshold: 0.75),
        );
    final List<ImageLabel> labels = await labeler.processImage(visionImage);

//    for (ImageLabel label in labels) {
////      final String text = label.text;
////      final String entityId = label.entityId;
////      final double confidence = label.confidence;
//
//    }
    print(labels[0].text);
    print(labels[0].entityId);
    print(labels[0].confidence);
    print('got here');
  }

  @override
  Widget build(BuildContext context) {
    print('atleast got here1');
    getImageLabels();
    print('atleast got here3');

    return Container(
        child: file != null
            ? Image.file(
                file,
                fit: BoxFit.contain,
              )
            : Text("Tire a foto"));
  }
}
