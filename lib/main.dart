import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftdice = 1;
  int rightdice = 2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[200],
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Center(child: Text('DICE WAR')),
        ),
        body: SafeArea(
          child: Center(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: TextButton(
                  onPressed: () {
                    setState(() {
                      leftdice = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$leftdice.png'),
                )),
                Expanded(
                    child: TextButton(
                  onPressed: () {
                    setState(() {
                      rightdice = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$rightdice.png'),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
