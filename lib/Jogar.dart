import 'dart:math';

import 'package:flutter/material.dart';

import 'Resultado.dart';



class Jogar extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Jogar> {

  void ExibirResultado(){
  var itens = ["cara", "coroa"];
  var number = Random().nextInt(itens.length);
  var resultado = itens[number];
    Navigator.push(context, MaterialPageRoute(builder: (context) => Resultado(resultado)
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        title: Center(
          child: const Text('Cara ou Corôa',
            style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 30,),
          ),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("imagens/Beta.png",),
            SizedBox(
              height: 25,
            ),

            RaisedButton(
              color: Colors.blue,
              onPressed: () {
                ExibirResultado();
              },
                child: Text(
                    'Jogar', style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),),
              ),
          ],
        ),
      ),
    );
  }
}
