import 'package:flutter/material.dart';



class WidgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _columnMain();
  }

  Column _columnMain(){
    return Column(
        children: <Widget>[
          Text('Bem Vindo ao'),
          SizedBox(
            width: 30,
            height: 30,
          ),
          SizedBox(
            width: 128,
            height: 128,
            child: Image.asset('assets/intellivest_blue.png'),
          ),
          Container(
            height: 60,
            width: 250,
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              color: Color.fromRGBO(43, 70, 154, 100),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: SizedBox.expand(
              child: FlatButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'APRENDER A INVESTIR',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                onPressed: ()=>{},
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 60,
            width: 250,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Color.fromRGBO(130, 222, 163, 100),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: SizedBox.expand(
              child: FlatButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'COMEÇAR INVESTINDO',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                onPressed: ()=>{},
              ),
            ),
          ),
        ],
    );
  }
}
