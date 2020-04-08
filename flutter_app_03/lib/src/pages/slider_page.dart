import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valor = 10.0;
  bool _lock = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen()
            )
          ],
        ),
      ),
    );
  }

  Widget _crearSlider(){
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tama;o de la imagen',
      divisions: 100,
      min:10.0,
      max: 400.0,
      value: _valor,
      onChanged: (_lock) ? null : (valor){
        setState(() {
          _valor=valor;
        });
      },
    );
  }

  Widget _crearCheckBox(){
    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _lock,
      onChanged: (valor){
        setState(() {
          _lock = valor;
        });
      },
    );
    //    return Checkbox(
//      value: _lock,
//      onChanged: (valor){
//        setState(() {
//          _lock = valor;
//        });
//      },
//    );
  }
  Widget _crearSwitch(){
    return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _lock,
      onChanged: (valor){
        setState(() {
          _lock = valor;
        });
      },
    );
    //    return Checkbox(
//      value: _lock,
//      onChanged: (valor){
//        setState(() {
//          _lock = valor;
//        });
//      },
//    );
  }

  Widget _crearImagen(){
    return Image(
      image: NetworkImage('https://scontent.fmex29-1.fna.fbcdn.net/v/t1.0-9/10622858_1517463568484256_2579124142085908081_n.jpg?_nc_cat=104&_nc_sid=19026a&_nc_oc=AQl3tsa2mYBU0mG06QwAEMby8nPsLbp1To5pqcZWHVr9HBMkHloDtYrzaapEvJTYf5Y&_nc_ht=scontent.fmex29-1.fna&oh=c865491340804d48b5b7bdc07b6e9e71&oe=5EB24F94'),
      width: _valor,
      fit: BoxFit.contain,
    );
  }
}
