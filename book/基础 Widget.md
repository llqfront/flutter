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
### Stack
```dart
Stack({Key key, AlignmentGeometry alignment: AlignmentDirectional.topStart, TextDirection textDirection, StackFit fit: StackFit.loose, Overflow overflow: Overflow.clip, List<Widget> children: const [] })
new Stack(
alignment: new Alignment(0.6, 0.6),
//statck
children: <Widget>[
    new Align(
    alignment: FractionalOffset.center,
//          heightFactor: 40.0,
//          widthFactor: 40.0,
    child: new Image.network(
        //加载网络图片
        'http://h.hiphotos.baidu.com/image/pic/item/21a4462309f790525fe7185100f3d7ca7acbd5e1.jpg',
        height: 300.0,
        width: 300.0,
        repeat: ImageRepeat.repeat, //图片重复方式
    ),
    ),
    new Opacity(
    opacity: 0.5, //不透明度
    child: new Container(
        width: 300.0,
        height: 400.0,
        color: Colors.blue,
    ),
    ),
    new Opacity(
    opacity: 0.3,
    child: new Container(
        width: 200.0,
        height: 200.0,
        color: Colors.red,
    ),
    ),
])
```
### Container
```dart
Container({Key key, AlignmentGeometry alignment, EdgeInsetsGeometry padding, Color color, Decoration decoration, Decoration foregroundDecoration, double width, double height, BoxConstraints constraints, EdgeInsetsGeometry margin, Matrix4 transform, Widget child })
Container(
  constraints: BoxConstraints.expand(
    height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
  ),
  padding: const EdgeInsets.all(8.0),
  color: Colors.teal.shade700,
  alignment: Alignment.center,
  child: Text('Hello World', style: Theme.of(context).textTheme.display1.copyWith(color: Colors.white)),
  foregroundDecoration: BoxDecoration(
    image: DecorationImage(
      image: NetworkImage('https://www.example.com/images/frame.png'),
      centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
    ),
  ),
  transform: Matrix4.rotationZ(0.1),
)
```