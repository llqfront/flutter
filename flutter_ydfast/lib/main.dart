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
        //   elevation: 20.0,
        //   backgroundColor: Colors.red,
        //   brightness: Brightness.light,
        // ),
        body: new ListView(
          padding: new EdgeInsets.only(top: 0.0),
          // scrollDirection: Axis.horizontal,
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
              height: 599.0,
              child: new CustomScrollView(
                slivers: <Widget>[
                  const SliverAppBar(
                    pinned: true,
                    expandedHeight: 250.0,
                    flexibleSpace: FlexibleSpaceBar(
                      title: Text('Demo'),
                    ),
                  ),
                  SliverGrid(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200.0,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      childAspectRatio: 4.0,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          alignment: Alignment.center,
                          color: Colors.teal[100 * (index % 9)],
                          child: Text('grid item $index'),
                        );
                      },
                      childCount: 20,
                    ),
                  ),
                  SliverFixedExtentList(
                    itemExtent: 50.0,
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          alignment: Alignment.center,
                          color: Colors.lightBlue[100 * (index % 9)],
                          child: Text('list item $index'),
                        );
                      },
                    ),
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
