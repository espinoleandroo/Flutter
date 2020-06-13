import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp07/second.dart';

void main(){
  runApp(MaterialApp(
    home: MyApp(),
    routes: <String, WidgetBuilder>{
      '/a':(BuildContext context) => SecondActivity()
    } ,
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
            UserAccountsDrawerHeader(
              accountName: Text('Leandro Espino'),
              accountEmail: Text('EspinoLeandroo@gmail.com'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Text('LE'),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Text('JE'),
                ),
                CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: Text('HE'),
                )
              ],
            ),
//            DrawerHeader(
//              child: Text('Header'),
//              decoration: BoxDecoration(
//                color: Colors.blue,
//              ),
//            ),
            ListTile(
              title: Text('Opcion 1'),
              trailing: Icon(Icons.add),
              onTap: (){

                Navigator.pop(context);
                Navigator.of(context).pushNamed('/a');
              },
            ),
            ListTile(
              title: Text('Opcion 2'),
              trailing: Icon(Icons.print),
              onTap: (){},
            ),
            ListTile(
              title: Text('Opcion 3'),
              trailing: Icon(Icons.camera),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/a');
              },
            ),
            ListTile(
              title: Text('Cerrar'),
              trailing: Icon(Icons.close),
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