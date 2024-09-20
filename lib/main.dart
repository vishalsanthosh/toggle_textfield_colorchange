import 'package:flutter/material.dart';
import 'package:toggle_button/colorchange.dart';
import 'package:toggle_button/textfield.dart';
import 'package:toggle_button/togglebutton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
       
      ),
      home:  ColorChangE (),
    );
  }
}

