
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class LearnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Principa(),
    );
  }
}


class Principa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.only(top: 20, left: 10, right: 10),
        children: <Widget>[
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: <Widget>[
             Column(
             children: <Widget>[
               CircleAvatar(
                 maxRadius: 40,
                 backgroundColor: Colors.yellow,
                 child: CircleAvatar(
                   maxRadius: 35,
                   backgroundColor: Colors.yellowAccent,
                    child: Image.asset('assets/percentual.png'),
                 ),
               ),
               Text('Introdução', style: TextStyle(
                 fontSize: 15,
                 fontWeight: FontWeight.bold
               ),
               ),
             ],
             ),

           ],
         ),

          SizedBox(
            height: 20,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  CircleAvatar(
                    maxRadius: 40,
                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      maxRadius: 35,
                      backgroundColor: Colors.black12,
                      child: Image.asset('assets/percentual.png'),
                    ),
                  ),
                  Text('Básico 1', style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                ],
              ),

              SizedBox(
                width: 10,
              ),

              Column(
                children: <Widget>[
                  CircleAvatar(
                    maxRadius: 40,
                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      maxRadius: 35,
                      backgroundColor: Colors.black12,
                      child: Image.asset('assets/percentual.png'),
                    ),
                  ),
                  Text('Básico 2', style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                ],
              ),

            ],
          ),

          SizedBox(
            height: 20,
          ),



          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  CircleAvatar(
                    maxRadius: 40,
                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      maxRadius: 35,
                      backgroundColor: Colors.black12,
                      child: Image.asset('assets/percentual.png'),
                    ),
                  ),
                  Text('Consumo', style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                ],
              ),

              SizedBox(
                width: 10,
              ),

              Column(
                children: <Widget>[
                  CircleAvatar(
                    maxRadius: 40,
                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      maxRadius: 35,
                      backgroundColor: Colors.black12,
                      child: Image.asset('assets/percentual.png'),
                    ),
                  ),
                  Text('Investimento', style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                ],
              ),


              SizedBox(
                width: 10,
              ),

              Column(
                children: <Widget>[
                  CircleAvatar(
                    maxRadius: 40,
                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      maxRadius: 35,
                      backgroundColor: Colors.black12,
                      child: Image.asset('assets/percentual.png'),
                    ),
                  ),
                  Text('Poupança', style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                ],
              ),



            ],
          ),










          Divider(
            color: Colors.yellowAccent,
            height: 30,
            thickness: 1,
          ),














          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  CircleAvatar(
                    maxRadius: 40,
                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      maxRadius: 35,
                      backgroundColor: Colors.black12,
                      child: Image.asset('assets/percentual.png'),
                    ),
                  ),
                  Text('CDB', style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                ],
              ),

              SizedBox(
                width: 10,
              ),

              Column(
                children: <Widget>[
                  CircleAvatar(
                    maxRadius: 40,
                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      maxRadius: 35,
                      backgroundColor: Colors.black12,
                      child: Image.asset('assets/percentual.png'),
                    ),
                  ),
                  Text('LCA', style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                ],
              ),

            ],
          ),

          SizedBox(
            height: 20,
          ),



          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  CircleAvatar(
                    maxRadius: 40,
                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      maxRadius: 35,
                      backgroundColor: Colors.black12,
                      child: Image.asset('assets/percentual.png'),
                    ),
                  ),
                  Text('Consumo', style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                ],
              ),

              SizedBox(
                width: 10,
              ),

              Column(
                children: <Widget>[
                  CircleAvatar(
                    maxRadius: 40,
                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      maxRadius: 35,
                      backgroundColor: Colors.black12,
                      child: Image.asset('assets/percentual.png'),
                    ),
                  ),
                  Text('Investimento', style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                ],
              ),


              SizedBox(
                width: 10,
              ),

              Column(
                children: <Widget>[
                  CircleAvatar(
                    maxRadius: 40,
                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      maxRadius: 35,
                      backgroundColor: Colors.black12,
                      child: Image.asset('assets/percentual.png'),
                    ),
                  ),
                  Text('Poupança', style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                ],
              ),



            ],
          ),




        ],
      ),
    );


  }
}





