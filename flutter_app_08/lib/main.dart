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
                Navigator.pop(context, 'YES');
              },
            ),
            SimpleDialogOption(
              child: Text('Cancel'),
              onPressed: (){
                Navigator.pop(context, 'NO');
              },
            )
          ],
        )
      )
    ){}
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
              RaisedButton(
                onPressed: _showSnack,
                child: Text('Click')
              ),
              RaisedButton(
                  onPressed: _event,
                  child: Text('Click')
              )
            ]
          )
        ),
      ),
    );
  }

}