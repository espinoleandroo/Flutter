import 'package:flutter/material.dart';
import 'package:flutterapp03/src/pages/alert_page.dart';
import 'package:flutterapp03/src/pages/avatar_page.dart';
import 'package:flutterapp03/src/pages/home_page.dart';

Map<String, WidgetBuilder> getApplicationRouters(){
  return <String, WidgetBuilder>{
  '/'       : (BuildContext context) => HomePage(),
  'alert'   : (BuildContext context) => AlertPage(),
  'avatar'  : (BuildContext context) => AvatarPage(),
  };
}