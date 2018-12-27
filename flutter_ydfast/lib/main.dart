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
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.all(
                        const Radius.circular(4.0),
                      ),
                      border: new Border.all(
                        width: 0.0,
                      ),
                    ),
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
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.all(
                              const Radius.circular(4.0),
                            ),
                            border: new Border.all(
                              width: 0.0,
                            ),
                          ),
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
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.all(
                              const Radius.circular(4.0),
                            ),
                            border: new Border.all(
                              width: 0.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
