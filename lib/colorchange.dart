import 'dart:math';

import 'package:flutter/material.dart';

class ColorChangE extends StatefulWidget {
  const ColorChangE({super.key});

  @override
  State<ColorChangE> createState() => _ColorChangEState();
}

class _ColorChangEState extends State<ColorChangE> {
  Color _bgColor =Colors.white;
  void _changeColor(){
   setState(() {
     _bgColor=Color(Random().nextInt(0xffffffff));
   });

  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColor,
      child: Scaffold(
        backgroundColor: _bgColor,
        appBar: AppBar(
          title: Text("Color Change Example"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("Tap To Change Color",style: TextStyle(fontSize: 20),))
          ],
        ),
      ),
    );
  }
}