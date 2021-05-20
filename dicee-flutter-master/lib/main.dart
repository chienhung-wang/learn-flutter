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
  const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  Random randomGen = new Random();
  int leftDiceNum = 1;
  int rightDiceNum = 1;

  void rollTwoDice() {
    // setState ---> Call the build() again
    setState(() {
      leftDiceNum = Random().nextInt(6) + 1;
      rightDiceNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: rollTwoDice,
                child: Image.asset('images/dice$leftDiceNum.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: rollTwoDice,
                child: Image.asset('images/dice$rightDiceNum.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
