import 'package:flutter/material.dart';
import 'package:flutterapp02/src/pages/contador_page.dart';
import 'package:flutterapp02/src/pages/home_page.dart';


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Center(
          child: ContadorPage(),
        )

    );
  }
}