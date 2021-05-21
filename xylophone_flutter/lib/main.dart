import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({Key key}) : super(key: key);

  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  int zoomed = 0;
  int fullScreenMode = 0;

  void playNote({int note}) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded SingleKey({Color fillColor, int note}) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
        width: double.infinity,
        height: 50.0,
        child: TextButton(
          style: TextButton.styleFrom(
              padding: EdgeInsets.all(0.0), backgroundColor: fillColor),
          onPressed: () => playNote(note: note),
          child: Container(width: double.infinity, height: double.infinity),
        ),
      ),
    );
  }

  SafeArea SmallScreen() {
    return SafeArea(
      child: Column(
        children: [
          SingleKey(fillColor: Colors.red, note: 1),
          SingleKey(fillColor: Colors.orange, note: 2),
          SingleKey(fillColor: Colors.yellow, note: 3),
          SingleKey(fillColor: Colors.green, note: 4),
          SingleKey(fillColor: Colors.lightBlue, note: 5),
          SingleKey(fillColor: Colors.blue.shade800, note: 6),
          SingleKey(fillColor: Colors.purple.shade800, note: 7)
        ],
      ),
    );
  }

  Column FullScreen() {
    return Column(
      children: [
        SingleKey(fillColor: Colors.red, note: 1),
        SingleKey(fillColor: Colors.orange, note: 2),
        SingleKey(fillColor: Colors.yellow, note: 3),
        SingleKey(fillColor: Colors.green, note: 4),
        SingleKey(fillColor: Colors.lightBlue, note: 5),
        SingleKey(fillColor: Colors.blue.shade800, note: 6),
        SingleKey(fillColor: Colors.purple.shade800, note: 7)
      ],
    );
  }

  Widget viewingArea() {
    print("qweqwe");
    if (fullScreenMode == 0) {
      return SmallScreen();
    } else {
      return FullScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: GestureDetector(
          onScaleStart: (ScaleStartDetails details) {
            print(details);
          },
          onScaleUpdate: (ScaleUpdateDetails details) {
            // print(details.scale);
            print(zoomed);
            if (details.scale < 0.8 && zoomed == 0) {
              print('pinched');

              setState(() {
                fullScreenMode = 0;
              });
              zoomed = 1;
            } else if (details.scale > 1.2 && zoomed == 0) {
              print('pinched');
              setState(() {
                fullScreenMode = 1;
              });
              zoomed = 1;
            }
          },
          onScaleEnd: (ScaleEndDetails details) {
            print(details);
            zoomed = 0;
          },
          child: viewingArea(),
        ),
      ),
    );
  }
}
