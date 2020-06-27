import 'package:flutter/material.dart';
import 'dart:math';

class SideButtons extends StatelessWidget {
  SideButtons({
    @required this.height,
    @required this.leftFunction,
    @required this.rightFunction,
  });
  final double height;
  final Function leftFunction;
  final Function rightFunction;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          onTap: leftFunction,
          child: Image(
            image: AssetImage('assets/1.png'),
            height: height,
          ),
        ),
        GestureDetector(
          onTap: rightFunction,
          child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(pi),
              child: Image(
                image: AssetImage('assets/1.png'),
                height: height,
              )),
        )
      ],
    );
  }
}
