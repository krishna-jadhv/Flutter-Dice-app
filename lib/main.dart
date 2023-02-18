import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicepageState createState() => _DicepageState();
}


class _DicepageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDice(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    // leftDiceNumber = 5;
    return Center(
      child: Row(
        children: [
          Expanded(
            child:  Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed:(){
                    setState(() {
                      // leftDiceNumber = Random().nextInt(6) + 1;
                      // rightDiceNumber = Random().nextInt(6) + 1;
                      // print('dicenumber = $leftDiceNumber');

                      changeDice();
                    });
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png')
              ),
            ),
          ),
          Expanded(
            child:  Padding(
                padding: const EdgeInsets.all(8.0),
                child : TextButton(
                  onPressed: (){
                    setState(() {
                      // leftDiceNumber = Random().nextInt(6) + 1;
                      // rightDiceNumber = Random().nextInt(6) + 1;

                      changeDice();
                    });
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                )
            ),
          ),
        ],
      ),
    );
  }
  }

