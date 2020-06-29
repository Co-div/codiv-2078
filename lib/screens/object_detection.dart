import 'dart:io';
// import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import 'package:flutter/material.dart';
import 'package:codiv_2078/constants.dart';

class ObjectDetection extends StatelessWidget {
  ObjectDetection({
    @required this.file,
  });
  final File file;

  // void getImageLabels() async {
  //   print('got here 1');
  //   final FirebaseVisionImage visionImage = FirebaseVisionImage.fromFile(file);
  //   final ImageLabeler labeler = FirebaseVision.instance.cloudImageLabeler(
  //       );
  //   final List<ImageLabel> labels = await labeler.processImage(visionImage);
  //   print(labels[0].text);
  //   print(labels[0].entityId);
  //   print(labels[0].confidence);
  //   print('got here');
  // }

  @override
  Widget build(BuildContext context) {
    print('atleast got here1');
    // getImageLabels();
    print('atleast got here3');

    return Container(
      child: file != null
          ? SafeArea(
              child: Scaffold(
                backgroundColor: Colors.black,
                body: ListView(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.file(
                        file,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Text('Detected a Smartphone',
                            style: kImageTextStyle),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFFF2A6D),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(30)),
                          // color: Colors.blue,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          'Holocube uses state-of-the-art technology. Now you can carry your workstation everywhere using this tiny powerhouse combining extreme computing capabilities and a holographic system.',
                          style: kImageTextStyle,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFFF2A6D),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(30)),
                          // color: Colors.blue,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                          'You Got',
                          style: kImageTextStyle,
                        ),
                        SizedBox(width: 15),
                            Image(
                              image: AssetImage('assets/Currency.jpg'),
                              height: 20,
                            ),
                            SizedBox(width: 10),
                            Text(
                              '2500',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: "Orbitron-bold",
                                  fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFFF2A6D),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(30)),
                          // color: Colors.blue,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.all(8),
                        child: Image(
                          image: AssetImage('assets/clippy.png'),
                          height: 70.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          : Text("Take a picture."),
    );
  }
}
