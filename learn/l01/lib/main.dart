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
            child: new Image.network(
              'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=330275530,1504313412&fm=27&gp=0.jpg',
              // scale: 6.0,
              fit: BoxFit.contain,
              color: Colors.greenAccent,
              colorBlendMode: BlendMode.darken,
              repeat: ImageRepeat.repeat,
            ),
            width: 300.0,
            height: 300.0,
            color: Colors.lightBlue,
            // margin: const EdgeInsets.all(10.0),
          ),
        ),
      ),
    );
  }
}
