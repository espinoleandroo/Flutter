import 'package:flutter/cupertino.dart';
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
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Opcion 1'),
              onTap: (){},
            ),
            ListTile(
              title: Text('Opcion 2'),
              onTap: (){},
            ),
            ListTile(
              title: Text('Opcion 3'),
              onTap: (){},
            ),
            ListTile(
              title: Text('Cerrar'),
              onTap: (){
                Navigator.pop(context);
              },
            )
          ],
        )
      ),
    );
  }

}