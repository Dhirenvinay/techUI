import 'package:flutter/material.dart';
import 'package:techui/containebuild.dart';
import 'package:techui/graph.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height= MediaQuery.of(context).size.height;
    var width= MediaQuery.of(context).size.width;
    print(height);
    print(width);
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 20,

      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: height-80,
            width: width-10,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.white),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children : [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  IconButton(onPressed: () {}, icon:  const Icon(Icons.apps_rounded)),
                  IconButton(onPressed: () {}, icon: const CircleAvatar(backgroundImage: AssetImage('assets/images/person.jpg'),))
                ],),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  GraphWidget(height: height-638, width: width-335, text: "20%", color: const Color(0xffe6ffee)),
                  GraphWidget(height: height-608, width: width-335, text: "30%", color: const Color(0xffb3ffcb)),
                  GraphWidget(height: height-558, width: width-335, text: "80%", color: const Color(0xffe6ffee)),
                  GraphWidget(height: height-590, width: width-335, text: "40%", color: const Color(0xffb3ffcb)),
                  GraphWidget(height: height-638, width: width-335, text: "20%", color: const Color(0xffe6ffee)),

              ],),
              SizedBox(height: height-718,),
              const Padding(
                padding:  EdgeInsets.fromLTRB(10, 0, 0, 0  ),
                child: Text("Sales & Revenue,",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
                  Row(  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ContainerBuild(height: height-588, width: width-260, icon:  const  Icon(Icons.album_rounded), text1: "230K", text2: "Sales",color: const Color(0xffccffcc)),
                      ContainerBuild(height: height-568, width: width-260, icon: const  Icon(Icons.person),  text1: "8.549K", text2: "Customers",color: const Color(0xffe6ffe6),)

                  ],),
                  Row(  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ContainerBuild(height: height-588, width: width-260, icon: const Icon(Icons.window_rounded), text1: "1.423K", text2: "Product",color: const Color(0xffe6e6ff)),
                      ContainerBuild(height: height-628, width: width - 260, icon:const Icon(Icons.pie_chart_rounded), text1: "8.549K", text2: "Customers",color: const Color(0xffffe6ff)),
                      
                    ],)
            ]),
          ),
        ),
      ),
    );
  }
}
