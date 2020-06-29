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
  // _ObjectDetectionState({this.file});
  
  String _model = yolo;
  File file;

  double _imageWidth;
  double _imageHeight;
  bool _busy = false;

  List _recognitions;

  @override
  void initState() {
    super.initState();
    
    _busy = true;

    loadModel().then((val) {
      setState(() {
        _busy = false;
      });
    });
  }

  loadModel() async {
    Tflite.close();
    try {
      String res;
      if (_model == yolo) {
        res = await Tflite.loadModel(
          model: "assets/tflite/yolov2_tiny.tflite",
          labels: "assets/tflite/yolov2_tiny.txt",
        );
      } else {
        res = await Tflite.loadModel(
          model: "assets/tflite/ssd_mobilenet.tflite",
          labels: "assets/tflite/ssd_mobilenet.txt",
        );
      }
      print(res);
    } catch (e) {
      print("Failed to load the model");
    }
  }

  selectFromImagePicker(File file) async {
    var image = file;

    if (image == null) return;
    if(image!= null) print('image picker');
    setState(() {
      _busy = true;
    });
    predictImage(image);
  }
  

  predictImage(File image) async {
    if (image == null) return;
    if(image!= null) print('predict image');

    if (_model == yolo) {
      await yolov2Tiny(image);
    } else {
      await ssdMobileNet(image);
    }

    FileImage(image)
        .resolve(ImageConfiguration())
        .addListener((ImageStreamListener((ImageInfo info, bool _) {
          setState(() {
            _imageWidth = info.image.width.toDouble();
            _imageHeight = info.image.height.toDouble();
          });
        })));

    setState(() {
      file = image;
      _busy = false;
    });
  }

  yolov2Tiny(File image) async {
    var recognitions = await Tflite.detectObjectOnImage(
        path: image.path,
        model: "YOLO",
        threshold: 0.3,
        imageMean: 0.0,
        imageStd: 255.0,
        numResultsPerClass: 1);

    setState(() {
      _recognitions = recognitions;
    });
  }

  ssdMobileNet(File image) async {
    var recognitions = await Tflite.detectObjectOnImage(
        path: image.path, numResultsPerClass: 1);

    setState(() {
      _recognitions = recognitions;
    });
  }

  List<Widget> renderBoxes(Size screen) {
    if (_recognitions == null) return [];
    if (_imageWidth == null || _imageHeight == null) return [];

    double factorX = screen.width;
    double factorY = _imageHeight / _imageHeight * screen.width;

    Color blue = Colors.red;

    return _recognitions.map((re) {
      return Positioned(
        left: re["rect"]["x"] * factorX,
        top: re["rect"]["y"] * factorY,
        width: re["rect"]["w"] * factorX,
        height: re["rect"]["h"] * factorY,
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
            color: blue,
            width: 3,
          )),
          child: Text(
            "${re["detectedClass"]} ${(re["confidenceInClass"] * 100).toStringAsFixed(0)}%",
            style: TextStyle(
              background: Paint()..color = blue,
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    selectFromImagePicker(widget.file);

    Size size = MediaQuery.of(context).size;

    List<Widget> stackChildren = [];

    stackChildren.add(Positioned(
      top: 0.0,
      left: 0.0,
      width: size.width,
      child: file == null ? Text("No Image Selected") : Image.file(file),
    ));

    stackChildren.addAll(renderBoxes(size));

    if (_busy) {
      stackChildren.add(Center(
        child: CircularProgressIndicator(),
      ));
    }

  return Stack(
    children: stackChildren,
  );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text("TFLite Demo"),
    //   ),
    //   floatingActionButton: FloatingActionButton(
    //     child: Icon(Icons.image),
    //     tooltip: "Pick Image from gallery",
    //     onPressed: selectFromImagePicker,
    //   ),
    //   body: Stack(
    //     children: stackChildren,
    //   ),
    // );
  }
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

  // void getImageLabels() async {}
  

  // @override
//   Widget build(BuildContext context) {
//     print('atleast got here1');
// //    getImageLabels();
//     print('atleast got here3');

//     return Container(
//         child: widget.file != null
//             ? Image.file(
//                 widget.file,
//                 fit: BoxFit.contain,
//               )
//             : Text("Tire a foto"));
//   }
}
