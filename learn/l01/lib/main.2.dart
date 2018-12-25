import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'first Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('first11 Flutter'),
        ),
        body: Center(
          child: Container(
            child: new Text(
              'test',
              style: TextStyle(fontSize: 40),
            ),
            alignment: Alignment.topLeft,
            width: 500.0,
            height: 400.0,
            // color: Colors.lightBlue,
            // padding: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 0.0),
            margin: const EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 0.0),
            decoration: new BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.lightBlue, Colors.greenAccent, Colors.purple],
              ),
              border: Border.all(width: 2.0, color: Colors.red),
            ),
            // margin: const EdgeInsets.all(10.0),
          ),
        ),
      ),
    );
  }
}
