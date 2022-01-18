import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[200],
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(child: Text('DICE WAR')),
        ),
        body: SafeArea(
          child: Center(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('images/dice1.png'),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('images/dice2.png'),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
