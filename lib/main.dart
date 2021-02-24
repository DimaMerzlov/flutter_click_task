import 'dart:math';

import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';


void main() {
  runApp(MyApp());
}

bool isFirst=true;

class MyApp extends StatelessWidget {

  /*RandomColor _randomColor = RandomColor();

  void changeColor(){
    setSta
  }*/
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Welcome',
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  var _color=Colors.black87;


  void changeColor(){
    setState(() {
    _color=Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
        .withOpacity(1.0); // this is generate random color, u can use your own..
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: changeColor,
        child: Center(
          child: Text(
            'Hello, World!',

            style: TextStyle(
                fontSize:40,
                color:_color
            ),
          ),
        ),
      ),
    );
  }
}
