import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('First Flutter'),
        ),
        body: new Row(
          children: <Widget>[
            Expanded(
              child: new RaisedButton(
                onPressed: () {},
                color: Colors.lightGreen,
                child: new Text('红色按钮'),
              ),
            ),
            Expanded(
              child: new RaisedButton(
                onPressed: () {},
                color: Colors.lightGreen,
                child: new Text('红色按钮'),
              ),
            ),
            Expanded(
              child: new RaisedButton(
                onPressed: () {},
                color: Colors.lightGreen,
                child: new Text('红色按钮'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
