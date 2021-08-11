import 'package:flutter/material.dart';
import 'package:tudo_saboroso/Detalhe.dart';

class TudoSaboroso extends StatefulWidget {
  @override
  State createState() => new TudoSaborosoState();
}

class TudoSaborosoState extends State<TudoSaboroso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra de título
      appBar: new AppBar(
        title: new Text("Tudo Saboroso"),
        backgroundColor: Colors.orange.shade700,
        leadingWidth: 45,
        leading: Transform.translate(
          offset: new Offset(5, 0),
          child: new Image.asset("img/chef.png")
        )
      ),

      // Menu de opções
      // drawer: ,

      // Corpo do app
      body: new SingleChildScrollView(
        child: new Column(
          children: [
            // Foto
            new Image.asset("img/bolo_milho.jpg"),

            // Informações
            new Detalhe()

            // Ingredientes
          ],
        )
      ),

      // Barra inferior
      // bottomNavigationBar: ,
    );
  }
}
