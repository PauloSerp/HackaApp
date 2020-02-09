
import 'package:flutter/material.dart';

class LoginPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    /**Scaffold --> você pode criar um appBar ou body pelo Scaffold*/
    return Scaffold(

      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.network('http://www.salaooval.com.br/wp-content/uploads/2016/05/pe_caruaru_wolves-1-128x128.png'),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'E-mail',
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),

            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Text(
                  'Recuperar senha',
                  textAlign: TextAlign.right,
                ),
                onPressed: (){},
              ),
            ),
           SizedBox(
               height: 40
           ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color(0xFFF58524),
                    Color(0xFFF92B7F),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              /** SizedBox.expand --> serve para espandir o SizedBox em todo Container. */
              child: SizedBox.expand(
                  child: FlatButton(
                    child: Row(
                      /**mainAxisAligment --> faz a função de alinhamento dos itens dentro do Row*/
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        Container(
                          child: SizedBox(
                            child: Image.network('http://www.salaooval.com.br/wp-content/uploads/2018/12/mt_cuiaba_arsenal_alt.png'),
                            height: 35,
                            width: 35,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () => {},
                  ),
              ),
            ),

            /**Button facebook*/
            SizedBox(
              height: 10,
            ),Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.indigo,

                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              /** SizedBox.expand --> serve para espandir o SizedBox em todo Container. */
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    /**mainAxisAligment --> faz a função de alinhamento dos itens dentro do Row*/
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Login com facebook',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () => {},
                ),
              ),
            ),
            Container(
              height: 40,
              child: FlatButton(
                child: Text(
                  "Cadastre-se",
                      textAlign: TextAlign.center,
                ),
                onPressed: () =>{},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
