/*
 * Created by 李卓原 on 2018/9/7.
 * email: zhuoyuan93@gmail.com
 *
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldAndCheckPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TextFieldAndCheckPageState();
}

class TextFieldAndCheckPageState extends State<TextFieldAndCheckPage> {
  //手机号的控制器
  TextEditingController phoneController = TextEditingController();

  //密码的控制器
  TextEditingController passController = TextEditingController();

  TextEditingController _textController = TextEditingController();

  String value;

  FocusNode secondTextFieldNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _textController.addListener(() {
      print(_textController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('输入和选择'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            /* onChanged: (text) {
          value = text;
          print(value);
        },*/
            autofocus: false, //是否自动获取焦点
            controller: _textController,
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.chevron_right), //输入框内右侧图标
              icon: Icon(Icons.person), //输入框左侧图标
              prefixIcon: Icon(Icons.skip_previous), //输入框内左侧图标
              labelText: 'labelText',
              hintText: 'hintText',
              helperText: 'helperText',
            ),
            onEditingComplete: () =>
                FocusScope.of(context).requestFocus(secondTextFieldNode),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              focusNode: secondTextFieldNode,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20.0),
                border: OutlineInputBorder(),
              ),
              textCapitalization: TextCapitalization.characters,
              maxLength: 5,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.print),
        onPressed: () {
          //print(value);
        },
      ),
    );
  }

  void _login() {
    print({'phone': phoneController.text, 'password': passController.text});
    if (phoneController.text.length != 11) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('手机号码格式不对'),
              ));
    } else if (passController.text.length == 0) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('请填写密码'),
              ));
    } else {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('登录成功'),
              ));
      onTextClear();
    }
  }

  void onTextClear() {
    setState(() {
      phoneController.clear();
      passController.clear();
    });
  }

  Widget _form() {
    return (Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          TextField(
            controller: phoneController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10.0),
              icon: Icon(Icons.phone),
              labelText: '请输入你的用户名)',
              helperText: '请输入注册的手机号',
            ),
            autofocus: false,
          ),
          TextField(
              controller: passController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10.0),
                icon: Icon(Icons.lock),
                labelText: '请输入密码)',
              ),
              obscureText: true),
          RaisedButton(
            onPressed: _login,
            child: Text('登录'),
          ),
        ],
      ),
    ));
  }
}
