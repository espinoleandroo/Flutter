import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage>{
  final _estiloTexto = TextStyle(fontSize: 25);
  int _contador = 0;
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App 02'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Numero de clicks:",
                style: _estiloTexto,
              ),
              Text(
                "$_contador",
                style: _estiloTexto,
              ),
            ],
          )
      ),
      floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,

      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(child: Icon(Icons.exposure_zero),onPressed: _reset, backgroundColor: Color.fromRGBO(0, 0, 0, 50)),
        Expanded(child: SizedBox(width: 30.0)),
        FloatingActionButton(child: Icon(Icons.remove),onPressed: _substraer),
        SizedBox(width: 30.0),
        FloatingActionButton(child: Icon(Icons.add_circle),onPressed: _agregar)
      ],
    );
  }

  void _agregar(){
    setState(() => _contador++);
  }
  void _substraer(){
    setState(() => _contador--);
  }
  void _reset(){
    setState(() => _contador=0);
  }
}

