import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://scontent.fmex29-1.fna.fbcdn.net/v/t1.0-9/39594227_2224259521137987_692582090868260864_o.jpg?_nc_cat=110&_nc_sid=174925&_nc_oc=AQkgT-c_LJp4OUC66DPyp6I4q88c10jbUTO5Xf48CELj1JSWoz5mc-HrMV80YfVC9XE&_nc_ht=scontent.fmex29-1.fna&oh=0d940ce59d3ac6d56e1b3f6211105b8f&oe=5EB374C6'),
              radius: 25.0,
            )
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child:CircleAvatar(
              child: Text("LE"),
              backgroundColor: Colors.black26,
            )
          )
        ],
      ),
      body:Center(
        child:FadeInImage(
          image: NetworkImage('https://scontent.fmex29-1.fna.fbcdn.net/v/t1.0-9/86386247_2623246884572580_3686487906102280192_o.jpg?_nc_cat=110&_nc_sid=174925&_nc_oc=AQkM1C_hWii8djWmCu6kgHeTalW1XZiWy3xSQzChDoEySDnCSitQOQJbHgsqbqc1Yuo&_nc_ht=scontent.fmex29-1.fna&oh=baf157d7477228863493214902807d5f&oe=5EB1761A'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        )
      )
    );
  }
}
