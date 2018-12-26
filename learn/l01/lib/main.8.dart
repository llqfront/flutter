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
        body: GridView(
          // body:GridView.count(
          padding: const EdgeInsets.all(20.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10.0,
            crossAxisCount: 3,
            mainAxisSpacing: 2.0,
            childAspectRatio: 0.7,
          ),
          children: <Widget>[
            const Text('adsfasdf'),
            const Text('adsfasdf'),
            const Text('adsfasdf'),
            const Text('adsfasdf'),
            const Text('adsfasdf'),
            const Text('adsfasdf'),
            new Image.network(
              'http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',
              fit: BoxFit.cover,
            ),
            new Image.network(
              'http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg',
              fit: BoxFit.cover,
            ),
            new Image.network(
              'http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',
              fit: BoxFit.cover,
            ),
            new Image.network(
              'http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg',
              fit: BoxFit.cover,
            ),
            new Image.network(
              'http://img5.mtime.cn/mt/2018/11/21/090246.16772408_135X190X4.jpg',
              fit: BoxFit.cover,
            ),
            new Image.network(
              'http://img5.mtime.cn/mt/2018/11/17/162028.94879602_135X190X4.jpg',
              fit: BoxFit.cover,
            ),
            new Image.network(
              'http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',
              fit: BoxFit.cover,
            ),
            new Image.network(
              'http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',
              fit: BoxFit.cover,
            ),
            new Image.network(
              'http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg',
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
