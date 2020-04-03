import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi primer app',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App 01'),
        ),
        body: const Center(
          child: const Text('Hola Mundo'),
        ),
      ),
    );
  }
}