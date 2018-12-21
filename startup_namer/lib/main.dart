import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _ipAddress = 'Unknown';

  _getIPAddress() async {
    var url = 'https://httpbin.org/ip';
    var httpClient = new HttpClient();

    String result;
    try {
      var request = await httpClient.getUrl(Uri.parse(url));
      var response = await request.close();
      if (response.statusCode == HttpStatus.OK) {
        var res = await response.transform(utf8.decoder).join();
        var data = json.decode(res);
        result = data['origin'];
      } else {
        result =
            'Error getting IP address:\nHttp status ${response.statusCode}';
      }
    } catch (exception) {
      result = 'Failed getting IP address';
    }

    // If the widget was removed from the tree while the message was in flight,
    // we want to discard the reply rather than calling setState to update our
    // non-existent appearance.
    if (!mounted) return;

    setState(() {
      _ipAddress = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    var spacer = new SizedBox(height: 32.0);

    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('Your1 current IP address is:'),
            new Text('$_ipAddress.'),
            new Text(
              'Hello, $_ipAddress! How are you?',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            new Text.rich(
              TextSpan(
                text: 'Hello', // default text style
                children: <TextSpan>[
                  TextSpan(
                      text: ' beautiful ',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: 'world',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            spacer,
            new RaisedButton(
              onPressed: _getIPAddress,
              child: new Text('Get IP address'),
            ),
            new Center(
              child: Container(
                margin: const EdgeInsets.all(10.0),
                color: const Color(0xFF00FF00),
                width: 48.0,
                height: 48.0,
              ),
            ),
            new Container(
              constraints: BoxConstraints.expand(
                height:
                    Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
              ),
              padding: const EdgeInsets.all(8.0),
              color: Colors.teal.shade700,
              alignment: Alignment.center,
              child: Text('Hello World',
                  style: Theme.of(context)
                      .textTheme
                      .display1
                      .copyWith(color: Colors.white)),
              foregroundDecoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('//www.example.com/images/frame.png'),
                  centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                ),
              ),
              transform: Matrix4.rotationZ(0.1),
            )
          ],
        ),
      ),
    );
  }
}
