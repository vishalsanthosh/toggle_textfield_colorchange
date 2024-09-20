import 'package:flutter/material.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({super.key});

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool isOn=false;
  void toggleSwitch(){
    setState((){
      isOn =!isOn;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    title: Text("Toggle Button Example"),
  ),
  body:Center(
    child: Column(
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 100,vertical: 100)),
        Text(isOn?"ON":"OFF",style: TextStyle(fontSize: 20),),
        ElevatedButton(onPressed: (){
          toggleSwitch();
        }, 
        child: 
        Text(isOn?'TURN OFF':"TURN ON",style: TextStyle(fontSize: 20),
        ))
      ],
    ),
  ),
  
  

    );
  }
}