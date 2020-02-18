
import 'package:app_meetup/pages/mainPage.dart';
import 'package:app_meetup/pages/welcomePage.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: WelcomePage(),
      routes: <String, WidgetBuilder>{
        '/paginaPrincipal': (BuildContext context) => new MainPage(),
        '/login':(BuildContext context) => new WelcomePage(),
      },
    );
  }
}
