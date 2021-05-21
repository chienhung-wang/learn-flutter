import 'package:flutter/material.dart';
import 'dart:math';
import 'package:shake/shake.dart';
import 'package:sensors/sensors.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue.shade400,
          appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            title: Text('Ask Me Anything'),
          ),
          body: magicBall(),
        ),
      ),
    );

class magicBall extends StatefulWidget {
  const magicBall({Key key}) : super(key: key);

  @override
  _magicBallState createState() => _magicBallState();
}

class _magicBallState extends State<magicBall> {
  int ballNum = 1;

  Null changeBall() {
    setState(() {
      ballNum = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    ShakeDetector detector =
        ShakeDetector.waitForStart(onPhoneShake: changeBall);
    detector.startListening();
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: Image.asset('images/ball$ballNum.png'),
      ),
    );
  }
}
