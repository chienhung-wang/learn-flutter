import 'package:flutter/material.dart';
import

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({Key key}) : super(key: key);

  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
                width: 120.0,
                height: 50.0,
                child: TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.all(0.0)),
                  onPressed: () {
                    print("qwe");
                  },
                  child: Container(
                    color: Colors.red,
                    width: 120.0,
                    height: 40.0,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
                width: 120.0,
                height: 50.0,
                child: TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.all(0.0)),
                  onPressed: () {
                    print("qwe");
                  },
                  child: Container(
                    color: Colors.orange,
                    width: 120.0,
                    height: 40.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
