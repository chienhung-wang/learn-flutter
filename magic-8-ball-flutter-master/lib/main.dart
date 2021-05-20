import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            title: Text('Ask Me Anything'),
          ),
        ),
      ),
    );

class magicBall extends StatefulWidget {
  const magicBall({Key key}) : super(key: key);

  @override
  _magicBallState createState() => _magicBallState();
}

class _magicBallState extends State<magicBall> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
