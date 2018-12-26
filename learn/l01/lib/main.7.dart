import 'package:flutter/material.dart';

void main() => runApp(MyApp(
      items: new List<String>.generate(1000, (i) => 'Item $i'),
    ));

class MyApp extends StatelessWidget {
  final List<String> items;
  // final 写死了最后的结果值
  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('First Flutter'),
        ),
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return new ListTile(
              title: new Text('${items[index]}'),
            );
          },
        ),
      ),
    );
  }
}
