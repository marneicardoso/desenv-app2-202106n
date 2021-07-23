import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  State createState() => new CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculadora - Simples"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Texto que mostra o Resultado do cálculo
            new Text(
              "Resultado: $resultado",
              style: new TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple),
            ),

            // Campo de Texto (input do valor 1)
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 1"),
              controller: campoValor1,
            ),

            // Campo de Texto (input do valor 2)
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 2"),
              controller: campoValor2,
            ),

            // Espaçamento depois dos inputs
            new Padding(padding: const EdgeInsets.only(top: 20)),

            // Nova linha (row)
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // Botão Somar
                new MaterialButton(
                  //child: new Text("+"),

                  child: new Text(
                    "+",
                    style: new TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),

                  color: Colors.blueAccent,
                  onPressed: somar,
                ),
              ],
            ),

            /// Espaçamento depois dos Botões
            new Padding(padding: const EdgeInsets.only(top: 20)),

            // Botão Limpar
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                    child: new Text("Limpar"),
                    color: Colors.grey,
                    onPressed: limpar)
              ],
            )
          ],
        ),
      ),
    );
  } // fecha o método build

  // Atributos
  var num1;
  var num2;
  var resultado = 0;

  TextEditingController campoValor1 = new TextEditingController(text: "");
  TextEditingController campoValor2 = new TextEditingController(text: "");

  // Métodos
  void somar() {
    setState(() {
      num1 = int.parse(campoValor1.text);
      num2 = int.parse(campoValor2.text);
      resultado = num1 + num2;
    });
  }

  void limpar() {
    setState(() {
      campoValor1.text = "";
      campoValor2.text = "";
      resultado = 0;
    });
  }
} // fecha a classe CalculadoraState

// NADA deve ser adicionado depois do RETURN, porque não será lido