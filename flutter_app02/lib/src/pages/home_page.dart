import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final estiloTexto = TextStyle(fontSize: 25);
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Numero de clicks:",
              style: estiloTexto,
            ),
            Text(
              "$contador",
              style: estiloTexto,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                FloatingActionButton(
                  child: Icon(
                    Icons.add_circle, size: 50,
                  ),
                  onPressed: () {
                    contador--;
                  },
                )
              ],
            )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add_circle,size: 50,
        ),
        onPressed: () {
          contador++;
        },
      ),
    );
  }

}