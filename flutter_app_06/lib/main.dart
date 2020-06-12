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
  bool _value = false;
  
  void onChangedCheckBox(bool Value){
    setState(() {
      _isChecked = Value;
    });
  }
  void onChangedSwitch(bool Value){
    setState(() {
      _value = Value;
    });
  }

  void getValue(){
    if(_isChecked){
      print('check es true');
    }else{
      print('check es false');
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Controls'),
      ),
      body: Container(
        padding: EdgeInsets.all(28.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Checkbox'),
              Checkbox(
                value: _isChecked,
                onChanged: (bool value){onChangedCheckBox(value);},
              ),
              RaisedButton(
                onPressed: getValue,
                child: Text('Click'),
              ),
              Text('switch'),
              Switch(
                value: _value,
                onChanged: (bool value){onChangedSwitch(value);},
              )
            ],
          )
        ),
      ),
    );
  }

}