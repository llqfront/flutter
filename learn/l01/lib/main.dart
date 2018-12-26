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
        body: new ListView(
          children: <Widget>[
            new ListTile(
              leading: new Icon(Icons.access_time),
              title: new Text('access_time'),
            ),
            new ListTile(
              leading: new Icon(Icons.access_time),
              title: new Text('access_time'),
            ),
            new ListTile(
              leading: new Icon(Icons.access_time),
              title: new Text('access_time'),
            ),
            new ListTile(
              leading: new Icon(Icons.access_time),
              title: new Text('access_time'),
            ),
            new Image.network(
              'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=330275530,1504313412&fm=27&gp=0.jpg',
              width: 100.0,
              height: 100.0,
            ),
          ],
        ),
      ),
    );
  }
}
