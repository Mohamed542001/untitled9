import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String title;
  final Color color;
  final double size;
  final TextAlign align;
  final FontWeight fontWeight;
  final TextDecoration decoration;
  CustomText({this.title,this.color,this.size,this.align,this.fontWeight,this.decoration});



  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: align??TextAlign.start,
      textScaleFactor: 1.2,

      style: TextStyle(

          color: color??Colors.black,
          fontSize: size??16,
          fontWeight: fontWeight,
        decoration: decoration??TextDecoration.none,

      ),
    );
  }
}
