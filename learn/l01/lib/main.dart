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
                child: Text(
              'hello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello world',
              textAlign: TextAlign.left,
              overflow: TextOverflow.fade,
              maxLines: 2,
              style: TextStyle(
                  fontSize: 25.0,
                  color: Color.fromARGB(255, 255, 150, 150),
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed,
            ))));
  }
}
