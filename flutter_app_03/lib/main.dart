import 'package:flutter/material.dart';
import 'package:flutterapp03/src/pages/alert_page.dart';
import 'package:flutterapp03/src/routes/routes.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
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