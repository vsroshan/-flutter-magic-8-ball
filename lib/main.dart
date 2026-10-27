import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Magic 8 Balls'),
          backgroundColor: Colors.blue,
        ),
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ball1 = 1;
  int ball2 = 1;

  void changeBalls() {
    setState(() {
      ball1 = Random().nextInt(5) + 1;
      ball2 = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: changeBalls,
              child: Image.asset('images/ball$ball1.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: changeBalls,
              child: Image.asset('images/ball$ball2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
