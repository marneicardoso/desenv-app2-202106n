import 'package:flutter/material.dart';

class StackPilha extends StatefulWidget {
  @override
  State createState() => new StackState();
}

class StackState extends State<StackPilha> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // Barra de título
        appBar: AppBar(title: new Text("Stack - Pilha")),

        // Menu lateral
        drawer: new Drawer(
          // ListView (itens do menu)
        ),

        // Corpo do App
        body: new Stack(
          children: [
            // Quarto elemento (acima do terceiro)
            new Container(
              margin: EdgeInsets.only(top: 175),
              padding: EdgeInsets.all(10),
              width: 150,
              height: 250,
              color: Colors.redAccent,
              child: new Text("Quarto elemento")
            ),
            
            // Primeiro elemento (fica abaixo dos demais)
            new Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              width: 300,
              height: 400,
              color: Colors.blueAccent,
              child: new Text(
                "Stack 1",
                style: new TextStyle(fontSize: 32),
              )
            ),

            // Segundo elemento (acima do primeiro)
            new Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              width: 250,
              height: 350,
              color: Colors.green,
              child: new Text("Segundo elemento")
            ),

            // Terceiro elemento (acima do segundo)
            new Container(
              margin: EdgeInsets.all(75),
              padding: EdgeInsets.all(10),
              width: 200,
              height: 300,
              color: Colors.purpleAccent,
              child: new Text("Terceiro elemento")
            ),

            
          ],
        ),

        bottomNavigationBar: BottomNavigationBar(
          items: [
            // Ícone Home
            BottomNavigationBarItem(
              label: "Home",
              icon: new Icon(Icons.home)
            ),

            // Ícone Sair
            BottomNavigationBarItem(
              label: "Sair",
              icon: new Icon(Icons.logout)
            )
          ],
        ),
      )
    );
  }
}
