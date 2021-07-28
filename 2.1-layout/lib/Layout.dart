import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  @override
  State createState() => new LayoutState();
}

class LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        // Barra de Título
        appBar: new AppBar(title: new Text("Layout - Flutter")),

        // Menu Lateral (hambúrguer)
        /*drawer: new Drawer(
          child: new ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Text("Header")),

              // Item do Menu
              ListTile(
                title: const Text("Item 1"),
                onTap: () {
                  // Adicionar ações aqui
                  Navigator.pop(context);
                },
              ),

              // Item do Menu
              ListTile(
                title: const Text("Item 2"),
                onTap: () {
                  // Adicionar ações aqui
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),*/

        // Corpo do App
        body: new Center(
          child: new Container(
            child: new Text("Conhecendo o Material App"),
          ),
        ),

        // Barra de Navegação (inferior)
        bottomNavigationBar: new BottomNavigationBar(
          items: [
          // Botão Home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"),

          // Botão Configurações
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Configurações"),

          // Botão Login
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: "Login")
          ]
        ),
      ),
    );
  }
}