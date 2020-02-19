import 'package:app_meetup/pages/createUser.dart';
import 'package:app_meetup/pages/mainPage.dart';
import 'package:finance_quote/finance_quote.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class WidgetApp extends StatefulWidget {
  @override
  _WidgetAppState createState() => _WidgetAppState();
}

class _WidgetAppState extends State<WidgetApp> {
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return _columnMain(context);
  }
  Column _columnMain(context){
    return Column(
        children: <Widget>[

          SizedBox(
            width: 128,
            height: 128,
            child: Image.asset('assets/intellivest_blue.png'),
          ),

          Text(
            'Aprender com o IntellInvest é viviante e divertido',
            textAlign: TextAlign.center,

            style: TextStyle(
              color: Colors.black38,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 30,
            height: 30,
          ),


          Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
               TextFormField(
                 validator: (input){
                   if(input.isEmpty) {
                     return 'Verifique email';
                    }
                   },
                 onSaved: (input) => _email = input,
                 decoration: InputDecoration(
                   labelText: 'Email',
                 ),

               ),



                TextFormField(
                  validator: (input){
                    if(input.length < 6) {
                      return '6 caracteres';
                    }
                  },
                  onSaved: (input) => _password = input,
                  decoration: InputDecoration(
                    labelText: 'senha',
                  ),
                  obscureText: true,

                ),

              ],
            ),
          ),


          SizedBox(
            width: 30,
            height: 30,
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
                onPressed: ()=>{
                    signIn()
                },
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),

            FlatButton (
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Criar conta',
                      style: TextStyle(
                        color: Color.fromRGBO(43, 70, 154, 100),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                onPressed: ()=>{
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateUser()))
                },
              ),
        ],
    );
  }


  Future<void> signIn() async{
    final formState = _formKey.currentState;
    if(formState.validate()){
      formState.save();
      try {

        AuthResult user = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
            email: _email, password: _password);
            Navigator.popAndPushNamed(context, '/paginaPrincipal');
      }catch(error){

          print(error.message);
      }

    }

  }
}
