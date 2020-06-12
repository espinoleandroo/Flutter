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
  int _valueRB = 0;

  void _hadleRadio(int value){
    setState(() {
      _valueRB = value;
      switch(_valueRB){
        case 1:
          print(('1111'));
          break;
        case 2:
          print(('22222'));
          break;
        case 3:
          print(('33333'));
          break;
      }
    });
  }

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
    if(_value){
      print('value es true');
    }else{
      print('value es false');
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
              Divider(
                height: 5.0,
                color: Colors.red,
              ),
              Text('Checkbox'),
              Checkbox(
                value: _isChecked,
                onChanged: (bool value){onChangedCheckBox(value);},
              ),
              RaisedButton(
                onPressed: getValue,
                child: Text('Click'),
              ),
              Divider(
                height: 5.0,
                color: Colors.red,
              ),
              Text('Switch'),
              Switch(
                value: _value,
                onChanged: (bool value){onChangedSwitch(value);},
                activeColor: Colors.green,
                inactiveTrackColor: Colors.red,
              ),
              RaisedButton(
                onPressed: getValue,
                child: Text('Click'),
              ),
              Divider(
                height: 5.0,
                color: Colors.red,
              ),
              Text('Radio Button'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Radio(
                    value: 1,
                    groupValue: _valueRB,
                    onChanged: _hadleRadio,
                  ),
                  Text('1'),
                  Radio(
                    value: 2,
                    groupValue: _valueRB,
                    onChanged: _hadleRadio,
                  ),
                  Text('2'),
                  Radio(
                    value: 3,
                    groupValue: _valueRB,
                    onChanged: _hadleRadio,
                  ),
                  Text('3'),
                ],
              )


            ],
          )
        ),
      ),
    );
  }

}