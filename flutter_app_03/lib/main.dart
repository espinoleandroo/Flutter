import 'package:flutter/material.dart';
import 'package:flutterapp03/src/pages/alert_page.dart';
import 'package:flutterapp03/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'), // English
        const Locale('es'), // Espa;ol
        const Locale.fromSubtags(languageCode: 'zh'), // Chinese *See Advanced Locales below*
      ],
      // ...
      initialRoute: '/',
      routes:getApplicationRouters(),
      onGenerateRoute: ( RouteSettings settings){
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage()
        );

      },
    );
  }

}