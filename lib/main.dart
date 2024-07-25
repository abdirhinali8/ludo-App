import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          centerTitle: true, // Center the title
          backgroundColor: Colors.red,
          elevation: 0, // Remove default AppBar shadow
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(1.0),
            child: Container(
              color: Colors.red, // Match the AppBar color
              child: Divider(
                color: Colors.brown, // Color of the line
                thickness: 2.0, // Thickness of the line
                height: 1.0, // Height of the divider widget
              ),
            ),
          ),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDciceNumber = 1;

  void changeDiceFace(){
  setState(() {
                     leftDiceNumber = Random().nextInt(6) +1;
                     rightDciceNumber = Random().nextInt(6) +1;

                });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
               
                changeDiceFace();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
               changeDiceFace();

              },
              child: Image.asset('images/dice$rightDciceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}


