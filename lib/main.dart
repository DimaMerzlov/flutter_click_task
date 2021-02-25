import 'dart:math';

import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

bool isFirst=true;

class MyApp extends StatelessWidget {


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
  var _color=Colors.white;


  void changeColor(){
    setState(() {
    _color=Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
        .withOpacity(1.0);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:_color,
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
                fontSize:40

            ),
          ),
        ),
      ),
    );
  }
}
