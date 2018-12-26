import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'fisrt Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('fisrt Flutter'),
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
            // color: Colors.lightBlue,
            alignment: Alignment.centerLeft,
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
