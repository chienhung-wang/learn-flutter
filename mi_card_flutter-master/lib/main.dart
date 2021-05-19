import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(
                    'https://cdn2.iconfinder.com/data/icons/super-hero/154/spider-man-spiderman-comics-hero-avatar-512.png'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Daniel Wang',
                style: TextStyle(
                  fontFamily: 'Pattaya',
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'SOFTWARE ENGINEER',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.teal.shade100,
                  fontSize: 25.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30.0,
                width: 200.0,
                child: Divider(
                  thickness: 3.0,
                  color: Colors.teal.shade100,
                ),
              ),
              cardTemplate(Icons.phone, '+886 931 272 491'),
              cardTemplate(Icons.email_outlined, 'wideheart123@gmail.com'),
            ],
          ),
        ),
      ),
    );
  }
}

Card cardTemplate(icon, info) {
  return Card(
    color: Colors.white,
    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
    child: Padding(
      padding: EdgeInsets.all(10.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.teal.shade400,
          size: 30.0,
        ),
        title: Text(
          info,
          style: TextStyle(
            fontFamily: 'SourceSansPro',
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
            color: Colors.teal.shade400,
          ),
        ),
      ),
    ),
  );
}
