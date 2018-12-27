import 'package:flutter/material.dart';
import 'package:flutter_ydfast/swiper_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Flutter App',
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('First Flutter App'),
        // ),
        body: Container(
          child: new Container(
            child: SwiperList(),
            height: 145.0,
          ),
        ),
      ),
    );
  }
}
