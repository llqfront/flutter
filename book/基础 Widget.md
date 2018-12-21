# 基础 Widget
### Text：该 widget 可让创建一个带格式的文本。
``` dart
Text(String data, { Key key, TextStyle style, TextAlign textAlign, TextDirection textDirection, Locale locale, bool softWrap, TextOverflow overflow, double textScaleFactor, int maxLines, String semanticsLabel })
Text(
  'Hello, $_name! How are you?',
  textAlign: TextAlign.center,
  overflow: TextOverflow.ellipsis,
  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
)
使用方法
new Text('$_ipAddress.'),
new Text(
    'Hello, $_ipAddress! How are you?',
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
),
```
```dart
Text.rich(TextSpan textSpan, { Key key, TextStyle style, TextAlign textAlign, TextDirection textDirection, Locale locale, bool softWrap, TextOverflow overflow, double textScaleFactor, int maxLines, String semanticsLabel })
const Text.rich(
  TextSpan(
    text: 'Hello', // default text style
    children: <TextSpan>[
      TextSpan(text: ' beautiful ', style: TextStyle(fontStyle: FontStyle.italic)),
      TextSpan(text: 'world', style: TextStyle(fontWeight: FontWeight.bold)),
    ],
  ),
)

```
[text](https://blog.csdn.net/poorkick/article/details/80426578)
# Row、 Column： 这些具有弹性空间的布局类Widget可让您在水平（Row）和垂直（Column）方向上创建灵活的布局。其设计是基于web开发中的Flexbox布局模型。
```dart
Row({Key key, MainAxisAlignment mainAxisAlignment: MainAxisAlignment.start, MainAxisSize mainAxisSize: MainAxisSize.max, CrossAxisAlignment crossAxisAlignment: CrossAxisAlignment.center, TextDirection textDirection, VerticalDirection verticalDirection: VerticalDirection.down, TextBaseline textBaseline, List<Widget> children: const [] })
new Row(
    children: <Widget>[
    Expanded(
        child: Text('Deliver features faster',
            textAlign: TextAlign.center),
    ),
    Expanded(
        child:
            Text('Craft beautiful UIs', textAlign: TextAlign.center),
    ),
    Expanded(
        child: FittedBox(
        fit: BoxFit.contain, // otherwise the logo will be tiny
        child: const FlutterLogo(),
        ),
    ),
    ],
    ),
    new Row(
    children: <Widget>[
    const FlutterLogo(),
    const Text(
        'Flutter\'s hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android.',
    ),
    const Icon(Icons.sentiment_very_satisfied),
    ],
    ),
    Row(
    children: <Widget>[
    const FlutterLogo(),
    const Expanded(
        child: Text(
            'Flutter\'s hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android.'),
    ),
    const Icon(Icons.sentiment_very_satisfied),
    ],
    ),
    Column({Key key, MainAxisAlignment mainAxisAlignment: MainAxisAlignment.start, MainAxisSize mainAxisSize: MainAxisSize.max, CrossAxisAlignment crossAxisAlignment: CrossAxisAlignment.center, TextDirection textDirection, VerticalDirection verticalDirection: VerticalDirection.down, TextBaseline textBaseline, List<Widget> children: const [] })
    Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[
    Text('We move under cover and we move as one'),
    Text('Through the night, we have one shot to live another day'),
    Text('We cannot let a stray gunshot give us away'),
    Text('We will fight up close, seize the moment and stay in it'),
    Text('It’s either that or meet the business end of a bayonet'),
    Text('The code word is ‘Rochambeau,’ dig me?'),
    Text('Rochambeau!', style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0)),
  ],
)
```
