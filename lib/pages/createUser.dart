import 'package:app_meetup/pages/welcomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateUser extends StatefulWidget {
  @override
  _CreateUserState createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(),
    );
  }
}

class Builder extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email, _senha, _nome;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20),

        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 80,
                width: 80,
                child: Image.asset('assets/intellivest_blue.png'),
              ),
              TextFormField(
                validator: (input) {
                  if (input.isEmpty) {
                    return 'verifique o nome';
                  }
                },
                onSaved: (input) { _nome = input;},
                decoration: InputDecoration(labelText: 'Nome'),
              ),



              TextFormField(
                validator: (input) {
                  if (input.isEmpty) {
                    return 'verifique o email';
                  }
                },
                onSaved: (input) {_email = input;},
                decoration: InputDecoration(labelText: 'Email'),
              ),
              TextFormField(
                validator: (input) {
                  if (input.isEmpty) {
                    return 'verifique o senha';
                  }
                },
                onSaved: (input) {_senha = input;},
                obscureText: true,
                decoration: InputDecoration(labelText: 'Senha'),
              ),

              SizedBox(
                height: 20,
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
                          'Registrar-se',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () => {register(context)},
                  ),
                ),
              ),

              FlatButton(
                child: Text(
                  'Teste'
                ),
                onPressed: () => {
                  print('$_email, $_senha'),
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> register(context) async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    final formState = _formKey.currentState;
    if (formState.validate()) {
      formState.save();
      try {
        final FirebaseUser userRegister = (await _auth.createUserWithEmailAndPassword(email: _email, password: _senha)).user;

        UserUpdateInfo userUpdateInfo = UserUpdateInfo();
        userUpdateInfo.displayName = _nome;

        userRegister.updateProfile(userUpdateInfo);

        Navigator.push(
            context, MaterialPageRoute(builder: (context) => WelcomePage()));
      } catch (error) {
        print('Page Erro: $error email: $_email $_senha');
      }
    }
  }
}
