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
        body: new Column(
          children: <Widget>[
            new Container(
              child: SwiperList(),
              height: 145.0,
            ),
            new Container(
              margin: const EdgeInsets.all(10.0),
              height: 160.0,
              child: new Row(
                children: <Widget>[
                  new Container(
                    child: new Image.network(
                      'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3795146784,3587545844&fm=26&gp=0.jpg',
                      // scale: 6.0,
                      fit: BoxFit.cover,
                    ),
                    width: 170.0,
                    height: 160.0,
                  ),
                  new Container(
                    padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          child: new Image.network(
                            'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3795146784,3587545844&fm=26&gp=0.jpg',
                            // scale: 6.0,
                            fit: BoxFit.cover,
                          ),
                          width: 177.0,
                          height: 76.0,
                        ),
                        new Container(
                          margin: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
                          child: new Image.network(
                            'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3795146784,3587545844&fm=26&gp=0.jpg',
                            // scale: 6.0,
                            fit: BoxFit.cover,
                          ),
                          width: 177.0,
                          height: 76.0,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              margin: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
              height: 120.0,
              child: new Row(
                children: <Widget>[
                  new Container(
                    child: new Image.network(
                      'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3795146784,3587545844&fm=26&gp=0.jpg',
                      // scale: 6.0,
                      fit: BoxFit.cover,
                    ),
                    width: 113.0,
                    height: 120.0,
                  ),
                  new Container(
                    child: new Image.network(
                      'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3795146784,3587545844&fm=26&gp=0.jpg',
                      // scale: 6.0,
                      fit: BoxFit.cover,
                    ),
                    width: 113.0,
                    height: 120.0,
                    margin: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                  ),
                  new Container(
                    child: new Image.network(
                      'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3795146784,3587545844&fm=26&gp=0.jpg',
                      // scale: 6.0,
                      fit: BoxFit.cover,
                    ),
                    width: 113.0,
                    height: 120.0,
                  ),
                ],
              ),
            ),
            new Container(
              height: 44.0,
              color: Colors.white,
              margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
              child: new Row(
                children: <Widget>[
                  Expanded(
                    child: new Container(
                      child: new Text(
                        '交易量',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: new Container(
                      child: new Text(
                        '人气',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: new Container(
                      child: new Text(
                        '活跃',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: new Container(
                      child: new Text(
                        '距离',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              height: 1000.0,
              child: GridView(
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
          ],
        ),
      ),
    );
  }
}
