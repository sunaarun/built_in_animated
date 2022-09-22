import 'dart:math';

import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({Key? key}) : super(key: key);

  @override
  _MyAnimatedContainerState createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  bool isClicked = false;
  Color color = Colors.red;
  List<Color> list = [
    Colors.black, Colors.brown,Colors.teal,
    Colors.green, Colors.blue, Colors.pink,
    Colors.purple,Colors.orange, Colors.amber,
  ];
  var random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated Container Example"),),
      body:  Center(
        child: GestureDetector(
            onTap: (){
              setState(() {
                isClicked= !isClicked;
                color =  list[random.nextInt(list.length)];
              });
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 2),
              curve: Curves.easeInCubic,
              alignment :isClicked?  Alignment.center : AlignmentDirectional.topCenter,
              width: isClicked?150:300,
              height: isClicked?300:150,
              color: color,
              //child: FlutterLogo(),
            )
        ),
      ),
    );
  }
}
