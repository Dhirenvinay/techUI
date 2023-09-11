import 'package:flutter/material.dart';

class GraphWidget extends StatelessWidget {
   GraphWidget({Key? key, required this.height, required this.width, required this.text, required this.color}) : super(key: key);
  var height;
  var width;
  String text;
  Color color;
  @override
  Widget build(BuildContext context) {
    return   Column(children: [
      Text(text),
      const   SizedBox(height: 10,),
      Container(
        height: height,
        width: width,
        decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(5)),
      ),
    ],);
  }
}
