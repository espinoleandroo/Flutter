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
enum Options {YES, NO}

class _State  extends State<MyApp>{
  final GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();
  String _value = '';

  void _setValue(String value){
    setState(() {
      _value = value;
    });
  }
  Future _event() async{
    switch(
      await showDialog(
        context: context,
        child: SimpleDialog(
          title: Text('esto es un dialog'),
          children: <Widget>[
            SimpleDialogOption(
              child: Text('ok'),
              onPressed: (){
                Navigator.pop(context, Options.YES);
              },
            ),
            SimpleDialogOption(
              child: Text('Cancel'),
              onPressed: (){
                Navigator.pop(context, Options.NO);
              },
            )
          ],
        )
      )
    ){
      case Options.YES:
        _setValue('Yes');
        break;
      case Options.NO:
        _setValue('No');
        break;

    }
  }
  Future _showAlert(BuildContext context, String msg) async{
    return showDialog(context: context, child: AlertDialog(
      title: Text(msg),
      actions: <Widget>[
        FlatButton(
          onPressed: () => Navigator.pop(context), child: Text('ok'),
        )
      ]
    ));
  }
  void _showSnack(){
    _scaffold.currentState.showSnackBar(SnackBar(content: Text('Esto es un Snack'),));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
      appBar: AppBar(
        title: Text('My app'),
      ),
      body: Container(
        padding: EdgeInsets.all(28.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('SnakBar'),
              Divider(
                height: 5.0
              ),
              RaisedButton(
                onPressed: _showSnack,
                child: Text('Click')
              ),
              Text('SimpleDialog'),
              Divider(
                  height: 5.0
              ),
              RaisedButton(
                  onPressed: _event,
                  child: Text('Click')
              ),
              Text('AlrtDialog'),
              Divider(
                  height: 5.0
              ),
              RaisedButton(
                  onPressed: () => _showAlert(context, 'lo que sea'),
                  child: Text('Click')
              ),

            ]
          )
        ),
      ),
    );
  }

}