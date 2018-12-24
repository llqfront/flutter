/*
 * Created by 李卓原 on 2018/10/9.
 * email: zhuoyuan93@gmail.com
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/bean/number_attribution.dart';
//import 'package:flutter_app/bean/number_attribution.dart';

class ChipPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ChipState();
}

class ChipState extends State<ChipPage> {
  List<String> list = List.generate(10, (index) => 'index:$index');

  @override
  Widget build(BuildContext context) {
    formatJson();
    return Scaffold(
      appBar: AppBar(
        title: Text('chip'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  list.add('index:${list.length}');
                });
              }),
        ],
      ),
      body: Wrap(
        spacing: 10.0,
        children: list
            .map((i) => Chip(
                  label: Text(i.toString()),
                  onDeleted: () {
                    setState(() {
                      list.remove(i);
                    });
                  },
                  avatar: Icon(
                    Icons.hourglass_full,
                    color: Colors.red,
                  ),
                ))
            .toList(),
      ),
    );
  }

  void formatJson() {
    var jsons = {
      "province": "浙江",
      "city": "杭州",
      "areacode": "0571",
      "zip": "310000",
      "company": "中国移动",
      "card": ""
    };
    NumberAttribution numberAttribution = NumberAttribution.fromJson(jsons);
    var toJ = numberAttribution.toJson();
    print(toJ);
  }
}
