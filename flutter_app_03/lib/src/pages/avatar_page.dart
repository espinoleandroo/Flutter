import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[

        CircleAvatar(
          child: Text("SL"),
          backgroundColor: Colors.black26,
        )


          Container(
            margin: EdgeInsets.only(right: 10.0),
            child:CircleAvatar(
              child: Text("LE"),
              backgroundColor: Colors.black26,
            )
          )
        ],
      ),
    );
  }
}
