import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/Routes.dart';
import 'package:flutter_learn/pages/MyHomePage.dart';
import 'package:flutter_learn/rxdart/bloc_provider.dart';
import 'package:flutter_learn/locale/translations_delegate.dart';
import 'package:flutter_learn/theme/app_theme.dart';
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
      title: 'Welcome to Flutter_learn',
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
        'Home': (_) => MyHomePage()
      },
    );
  }
}
