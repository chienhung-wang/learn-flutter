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
              cardTemplate(Icons.phone, '+886 931 272 491'),
              cardTemplate(Icons.email_outlined, 'wideheart123@gmail.com'),
              // Container(
              //   color: Colors.white,
              //   margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              //   padding: EdgeInsets.all(10.0),
              //   child: Row(
              //     children: [
              //       Icon(
              //         Icons.phone,
              //         color: Colors.teal,
              //       ),
              //       SizedBox(
              //         width: 10.0,
              //       ),
              //       Text(
              //         '+886 931 272 491',
              //         style: TextStyle(
              //           fontFamily: 'SourceSansPro',
              //           color: Colors.teal,
              //           fontSize: 20.0,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

Container cardTemplate(icon, info) {
  return Container(
    color: Colors.white,
    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
    padding: EdgeInsets.all(10.0),
    child: Row(
      children: [
        Icon(
          icon,
          color: Colors.teal,
        ),
        SizedBox(
          width: 10.0,
        ),
        Text(
          info,
          style: TextStyle(
            fontFamily: 'SourceSansPro',
            color: Colors.teal,
            fontSize: 20.0,
          ),
        ),
      ],
    ),
  );
}
