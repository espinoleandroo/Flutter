import 'dart:ui';

import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget{

  final opciones = ['Uno', 'Dos', 'Tres', 'Cuadro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compnentes Temp'),
      ),
      body: ListView(
        children: _crearItemsCorta()
      ),
    );
  }

  List<Widget> _crearItems(){
    List<Widget> lista = new List<Widget>();

    for(String opt in opciones){
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)
            ..add(Divider());
    }
    return lista;
  }

  List<Widget> _crearItemsCorta(){
    int contador = 1;
    return opciones.map( (item){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            leading: Text(
              "-",
              style: TextStyle(
                fontSize: 35,
                color: Color.fromRGBO(37, 171, 216, 20)
              ),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){}
          ),
          Divider(),
        ],
      );

    }).toList();
  }

}