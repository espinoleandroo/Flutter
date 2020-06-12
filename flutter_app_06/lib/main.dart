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
  bool _isChecked = false;
  
  void onChanged(bool Value){
    setState(() {
      _isChecked = Value;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My app'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Opcion'),
              Checkbox(
                value: _isChecked,
                onChanged: (bool value){onChanged(value);},
              )
            ],
          )
        ),
      ),
    );
  }

}