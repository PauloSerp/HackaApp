import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_meetup/widget/columnInit.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.white30,
        child: ListView(
          padding: EdgeInsets.all(30),
          children: <Widget>[WidgetApp()],
        ),
      ),
    );
  }
}
