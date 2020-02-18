import 'package:app_meetup/models/Hero.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class CorretoraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Text('Nome'),
        Text('Nome'),
        Text('Nome'),
        Text('Nome'),
        Text('Nome'),
        FlatButton(
          textColor: Colors.purple,
          child: Text('Teste'),
          onPressed: () =>{
            jsonRestApiDio()
          },
        )

      ],


    );
  }
}

jsonRestApiDio() async{

}
