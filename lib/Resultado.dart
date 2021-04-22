import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {

  String value;
  Resultado(this.value);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    var caminho;
    if(widget.value == "cara"){
      caminho = "imagens/Cara.png";
    }else{
      caminho = "imagens/Coroa.png";
    }

    print(widget.value);
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
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset(
                  caminho,
                width: 250,
                height: 250,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            RaisedButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                  'Voltar', style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),
              ),
            ),

          ],
        ),


      ),
    );
  }
}
