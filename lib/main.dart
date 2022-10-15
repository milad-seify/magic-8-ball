import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int ballCount = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        title: Text(
          'Magic 8 Ball',
          style: TextStyle(
              fontFamily: 'Pacifico',
              fontWeight: FontWeight.bold,
              letterSpacing: 3.0,
              color: Colors.pink[900]),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
                child: TextButton(
              onPressed: () {
                setState(() {
                  ballCount = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$ballCount.png'),
            )),
          ],
        ),
      ),
    );
  }
}
