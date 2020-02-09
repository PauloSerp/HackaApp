
import 'package:flutter/material.dart';
import 'package:app_meetup/widget/columnInit.dart';


class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
        padding: EdgeInsets.only(
            top: 160,
            left: 40,
            right: 40
        ),
            color: Colors.white30,
            child: ListView(
              children: <Widget>[WidgetApp()],
            ),
          ),
    );
  }
}
