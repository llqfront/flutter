import 'package:flutter/material.dart';
import 'package:flutter_study/AnimationPage.dart';
import 'package:flutter_study/ChipPage.dart';
import 'package:flutter_study/ExpansionTilePage.dart';
import 'package:flutter_study/FutureBuilderPage.dart';
import 'package:flutter_study/GridViewPage.dart';
import 'package:flutter_study/ImagePage.dart';
import 'package:flutter_study/KeepAlivePage.dart';
import 'package:flutter_study/MyHomePage.dart';
import 'package:flutter_study/PavlovaPage.dart';
import 'package:flutter_study/RandomWords.dart';
import 'package:flutter_study/Routes.dart';
import 'package:flutter_study/ScreenUtilTest.dart';
import 'package:flutter_study/StateWidgetPage.dart';
import 'package:flutter_study/SwiperPage.dart';
import 'package:flutter_study/ThemePage.dart';
import 'package:flutter_study/Transform3D.dart';
import 'package:flutter_study/WrapPage.dart';
import 'package:flutter_study/backdrop_page.dart';
import 'package:flutter_study/custom_view.dart';
import 'package:flutter_study/draggable_dragtargets.dart';
import 'package:flutter_study/locale/translations_delegate.dart';
import 'package:flutter_study/login_page.dart';
import 'package:flutter_study/rxdart/bloc_provider.dart';
import 'package:flutter_study/share_page.dart';
import 'package:flutter_study/tab_page.dart';
import 'package:flutter_study/textField.dart';
import 'package:flutter_study/theme/app_theme.dart';
import 'package:flutter_study/webview_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(BlocProvider(child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //AppModel appModel = AppModel();
    final themeSelect = BlocProvider.of(context);
    return StreamBuilder(
      builder: _builder,
      stream: themeSelect.value,
      initialData: false,
    );
  }

  Widget _builder(BuildContext context, AsyncSnapshot snapshot) {
    return MaterialApp(
      title: 'Welcome to Flutter_study',
      theme: snapshot.data ? AppTheme().darkTheme : AppTheme().lightTheme,
      localizationsDelegates: [
        const TranslationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [Locale("zh"), Locale("en")],
      home: Routes(),
      routes: <String, WidgetBuilder>{
        //静态路由,无法传参
        'route': (_) => Routes(),
        'randomWords': (_) => RandomWords(),
        'Home': (_) => MyHomePage(),
        'Pavlova': (_) => PavlovaPage(),
        'Image': (_) => ImagePage(),
        'GridView': (_) => GridViewPage(),
        'StateWidget': (_) => StateWidgetPage(),
        'TextField': (_) => TextFieldAndCheckPage(),
        'KeepAlive': (_) => KeepAliveDemo(),
        'Swiper': (_) => SwiperPage(),
        'Wrap': (_) => WrapPage(),
        'Animation': (_) => AnimationPage(),
        'ScreenUtilPage': (_) => ScreenUtilTest(title: 'ScreenUtil测试'),
        'FutureBuilderPage': (_) => FutureBuilderPage(),
        'ThemePage': (_) => ThemePage(),
        'ChipPage': (_) => ChipPage(),
        'ExpansionTilePage': (_) => ExpansionTilePage(),
        'TransformPage': (_) => Transform3D(),
        'LoginPage': (_) => LoginPage(),
        'WebViewPage': (_) => WebViewPage(),
        'CustomViewPage': (_) => CustomViewPage(),
        'TabPae': (_) => TabPage(),
        'backdropPage': (_) => BackdropPage(),
        'Draggable': (_) => DraggableDragtargets(),
        'SharePage': (_) => SharePage(),
      },
    );
  }
}
