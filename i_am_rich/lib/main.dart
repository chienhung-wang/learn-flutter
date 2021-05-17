import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('I Am Rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
            image: AssetImage(
                'images/se-image-c4a9cdcf0a58353aa5323d397bde7f34.jpeg'),
          ),
        ),
      ),
    ),
  );
}
