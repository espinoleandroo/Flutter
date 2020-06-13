import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MyApp()
  ));
}

class MyApp extends StatefulWidget{
  @override
  _State createState() => _State();

}

class _State  extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My app'),
      ),
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(28.0),
          child: Column(
            children: <Widget>[
              Text('My Drawer'),
              RaisedButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Return'),
              )
            ],
          ),
        ),
      ),
    );
  }

}