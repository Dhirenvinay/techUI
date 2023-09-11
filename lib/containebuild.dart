import 'package:flutter/material.dart';
class ContainerBuild extends StatelessWidget {
   ContainerBuild({Key? key,required this.color,required this.height,required this.width, required this.icon, required this.text1,required this.text2 }) : super(key: key);
var height;
var width;
Icon icon;
String text1;
String text2;
Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          Text(text1,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          Text(text2,style: TextStyle(color: Colors.grey,),)
        ],),
    );
  }
}
