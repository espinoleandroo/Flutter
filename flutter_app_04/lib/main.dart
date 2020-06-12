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

  String _dato = 'hola mundo';

  void _myClick(String dato){
    setState(() {
      _dato = dato;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My app'),
      ),
      body: Container(
        padding:  EdgeInsets.all(28.0),
        child: Column(
          children: <Widget>[
            Text(_dato),
            RaisedButton(
              onPressed: () => _myClick('Raised'),
              child: Text('Change texts'),
            ),
            FlatButton(
              onPressed: () => _myClick('Flat'),
              child: Text('Flat button'),
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () => _myClick('Icon')
            ),
            Tooltip(
              message: 'esto es un tooltip',
              child: Text('Presioname'),
            )
          ],
        ),
      ),
    );
  }

}