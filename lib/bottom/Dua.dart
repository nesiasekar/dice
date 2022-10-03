import 'dart:developer' as dev;
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dua extends StatefulWidget {

  @override
  _SatuState createState() => _SatuState();
}

class _SatuState extends State<Dua> {
  int LeftDice=6;
  int RightDice =4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 190, 226, 255),
      body: Center(
        child:Row(
        children: <Widget> [
          Expanded(
            child: TextButton(
              onPressed: () { 
                dev.log("Left Dice Clicked");
                final Random rand = Random();
                setState(() {
                  LeftDice = rand.nextInt(6) + 1; //0-5
                });
               },
              child:Image.asset("images/dice$LeftDice.png"),
            )
            ),
             Expanded(
            child: TextButton(
              onPressed: () { 
                dev.log("Right Dice Clicked");
                final Random rand = Random();
                setState(() {
                  RightDice = rand.nextInt(6) + 1; //0-5
                });
               },
              child:Image.asset("images/dice$RightDice.png"),
            )
            ),
        ]),
      )
    );
  }
}