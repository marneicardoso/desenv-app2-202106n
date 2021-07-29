import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  @override
  State createState() => new LayoutState();
}

class LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // Barra de Título
        appBar: new AppBar(title: new Text("Layout - Flutter")),

        // Menu Lateral (hambúrguer)
        drawer: new Drawer(
          child: new ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              // Cabeçalho do Menu
              new DrawerHeader(
                //decoration: BoxDecoration(color: Colors.blue),
                child: new Text("Itens do Menu")
              ),

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

        // Corpo do App
        body: new Center(
          child: ElevatedButton(
            onPressed: () {
              SnackBar snackBar = new SnackBar(
                content: new Text("Buenas, esta é uma Snackbar"),
                duration: new Duration(milliseconds: 2500), // 1 segundo == 1000
                behavior: SnackBarBehavior.floating,
                action: SnackBarAction(
                  label: "OK",
                  onPressed: () {
                    // Aqui vai o código de alguma ação...
                  }
                ),
              );

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },

            // Texto do Botão SnackBar
            child: Text("Mostrar SnackBar"),
          )
        ),

        // Barra de Ícones (inferior)
        bottomNavigationBar: new BottomNavigationBar(
          items: [
            // Ícone Home
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              label: "Home"
            ),

            // Ícone Configurações
            BottomNavigationBarItem(
              icon: new Icon(Icons.settings),
              label: "Configurações"
            ),

            // Ícone Login
            BottomNavigationBarItem(
              icon: new Icon(Icons.login),
              label: "Login"
            )
          ],
        ),
      )
    );
  }
}