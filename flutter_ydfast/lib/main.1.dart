import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:url_launcher/url_launcher.dart';

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

class SwiperList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemBuilder: _swiperBuilder,
      itemCount: 3,
      pagination: new SwiperPagination(
        builder: DotSwiperPaginationBuilder(
          color: Colors.black54,
          activeColor: Colors.white,
        ),
      ),
      // control: new SwiperControl(),
      scrollDirection: Axis.horizontal,
      autoplay: true,
      onTap: _goOtherApp,
    );
  }
}

Widget _swiperBuilder(BuildContext context, int index) {
  return (Image.network(
    "http://via.placeholder.com/350x150",
    fit: BoxFit.fill,
  ));
}

void _goOtherApp(int index) async {
  const url = 'flutter://li.zhuoyuan'; //这个url就是由scheme和host组成的 ：scheme://host
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
