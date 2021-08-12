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
      endDrawer: new Drawer(
        child: new ListView(
          padding: EdgeInsets.zero,
          children: [
            // Item 1
            new ListTile(
              title: new Text("Flutter"),
              subtitle: new Text("Tudo são Widgets"),
              leading: new Icon(
                Icons.flash_on,
                color: Colors.red.shade400,
                size: 32,
              ),
              trailing: new Icon(Icons.keyboard_arrow_right),
              onTap: () {
                // Aqui vai o código do método...
                Navigator.pop(context);
              },
            ),

            // Item 2
            ListTile(
              title: new Text("Dart"),
              subtitle: new Text("É muito forte"),
              leading: new Icon(
                Icons.mood,
                color: Colors.amber.shade700,
                size: 32,
              ),
              trailing: new Icon(Icons.keyboard_arrow_right),
              onTap: () {
                // Aqui vai o código do método...
                Navigator.pop(context);
              },
            ),

            // Item 3
            ListTile(
              title: new Text("Cafessíneo"),
              subtitle: new Text("Quero cafééé"),
              leading: new Icon(
                Icons.coffee,
                color: Colors.brown,
                size: 32,
              ),
              trailing: new Icon(Icons.keyboard_arrow_right),
              onTap: () {
                // Aqui vai o código do método...
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),

      // Corpo do app
      body: new SingleChildScrollView(
        child: new Detalhe() // Informações
      ),

      // Barra inferior
      // bottomNavigationBar: ,
    );
  }
}
