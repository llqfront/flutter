import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:url_launcher/url_launcher.dart';

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
    "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2097124721,3074829049&fm=27&gp=0.jpg",
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
