import 'package:flutter/material.dart';

class TextFieldE extends StatefulWidget {
  const TextFieldE({super.key});

  @override
  State<TextFieldE> createState() => _TextFieldStateE();
}

class _TextFieldStateE extends State<TextFieldE> {
  String text = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  text = value;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter Text"
              ),
            ),
            SizedBox(height: 15,),
            Text("You Typed: $text",style: TextStyle(fontSize: 20),)
          ],
        ),
      ),
    );
  }
}