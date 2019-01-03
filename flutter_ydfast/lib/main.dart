// import 'dart:async' show Future, Timer;

import 'package:flutter/material.dart';
import 'package:flutter_ydfast/swiper_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List list = new List(); //列表要展示的数据
  ScrollController _scrollController = ScrollController(); //listview的控制器
  int _page = 1; //加载的页数
  bool isLoading = false; //是否正在加载数据

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        print('滑动到了最底部');
        _getMore();
      }
    });
  }

  /*
   * 初始化list数据 加延时模仿网络请求
   */
  Future getData() async {
    await Future.delayed(Duration(seconds: 2), () {
      setState(() {
        list = List.generate(15, (i) => '哈喽,我是原始数据 $i');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
      ),
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        displacement: 40.0,
        child: new ListView(
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
              height: 555.0,
              child: ListView.builder(
                itemBuilder: _renderRow,
                itemCount: list.length + 1, //这里!这里!这里!
                controller: _scrollController,
              ),
            )
            // new Container(
            //   height: 599.0,
            //   child: new CustomScrollView(
            //     slivers: <Widget>[
            //       const SliverAppBar(
            //         pinned: true,
            //         expandedHeight: 250.0,
            //         flexibleSpace: FlexibleSpaceBar(
            //           title: Text('Demo'),
            //         ),
            //       ),
            //       SliverGrid(
            //         gridDelegate:
            //             SliverGridDelegateWithMaxCrossAxisExtent(
            //           maxCrossAxisExtent: 200.0,
            //           mainAxisSpacing: 10.0,
            //           crossAxisSpacing: 10.0,
            //           childAspectRatio: 4.0,
            //         ),
            //         delegate: SliverChildBuilderDelegate(
            //           (BuildContext context, int index) {
            //             return Container(
            //               alignment: Alignment.center,
            //               color: Colors.teal[100 * (index % 9)],
            //               child: Text('grid item $index'),
            //             );
            //           },
            //           childCount: 20,
            //         ),
            //       ),
            //       SliverFixedExtentList(
            //         itemExtent: 50.0,
            //         delegate: SliverChildBuilderDelegate(
            //           (BuildContext context, int index) {
            //             return Container(
            //               alignment: Alignment.center,
            //               color: Colors.lightBlue[100 * (index % 9)],
            //               child: Text('list item $index'),
            //             );
            //           },
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _renderRow(BuildContext context, int index) {
    if (index < list.length) {
      return ListTile(
        title: Text(list[index]),
      );
    }
    return _getMoreWidget();
  }

  /*
   * 下拉刷新方法,为list重新赋值
   */
  Future<Null> _onRefresh() async {
    await Future.delayed(Duration(seconds: 3), () {
      print('refresh');
      setState(() {
        list = List.generate(20, (i) => '哈喽,我是新刷新的 $i');
      });
    });
  }

  /*
   * 上拉加载更多
   */
  Future _getMore() async {
    if (!isLoading) {
      setState(() {
        isLoading = true;
      });
      await Future.delayed(Duration(seconds: 1), () {
        print('加载更多');
        setState(() {
          list.addAll(List.generate(5, (i) => '第$_page次上拉来的数据'));
          _page++;
          isLoading = false;
        });
      });
    }
  }

  /*
   * 加载更多时显示的组件,给用户提示
   */
  Widget _getMoreWidget() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              '加载中...',
              style: TextStyle(fontSize: 16.0),
            ),
            CircularProgressIndicator(
              strokeWidth: 1.0,
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }
}
