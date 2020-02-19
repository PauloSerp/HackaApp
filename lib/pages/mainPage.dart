import 'package:app_meetup/pages/carteiraPage.dart';
import 'package:app_meetup/pages/corretoraPage.dart';
import 'package:app_meetup/pages/homePage.dart';
import 'package:app_meetup/pages/learnPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
 // const MainPage({Key key, @required this.user}) : super(key: key);
  //final AuthResult user;


  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;



  @override
  Widget build(BuildContext context) {
    final _TabPages = <Widget>[
      Center(
    //"${widget.user.user.displayName}"
        child: HomePage("Paulo"),
      ),
      Center(
        child: LearnPage(),
      ),
      Center(
        child: CarteiraPage(),
      ),
      Center(
        child: CorretoraPage(),
      ),
    ];
    final _BottonNavBar = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Image.asset("assets/iconCasaDesabilitada.png"),
        activeIcon: Image.asset('assets/iconCasa.png'),
        title: Text('Home'),
      ),
      BottomNavigationBarItem(
        icon: Image.asset("assets/iconLearnDesabilitado.png"),
        activeIcon: Image.asset('assets/iconLearn.png'),
        title: Text('Aprender'),
      ),
      BottomNavigationBarItem(
        icon: Image.asset('assets/iconCarteiraDesabilitada.png'),
        activeIcon: Image.asset('assets/iconCarteira.png'),
        title: Text('Carteira'),
      ),
      BottomNavigationBarItem(
        icon: Image.asset('assets/iconLojaDesabilitada.png'),
        activeIcon: Image.asset('assets/iconLoja.png'),
        title: Text('Corretora'),
      ),
    ];
    assert(_TabPages.length == _BottonNavBar.length);
    final bottonNavBar = BottomNavigationBar(
      items: _BottonNavBar,
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );

    return Scaffold(
      body: _TabPages[_currentIndex],
      bottomNavigationBar: bottonNavBar,
      appBar: AppBar(
        actions: <Widget>[
          Row(
            children: <Widget>[

              Container(
                padding: EdgeInsets.only(right: 20),
                child: Row(
                  children: <Widget>[
                    Image.asset('assets/iconMedalha.png'),
                    SizedBox(
                      width: 10,
                    ),
                    Text('1230'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );

  }
}

