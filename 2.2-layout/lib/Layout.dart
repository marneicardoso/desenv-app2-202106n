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
            DrawerHeader(
                child: new Text("Itens do Menu"),
                decoration: new BoxDecoration(color: Colors.blueAccent)),

            // Item 1
            new ListTile(
                title: new Text("Flutter"),
                subtitle: new Text("Tudo são Widgets"),
                trailing: new Icon(Icons.keyboard_arrow_right),
                leading: new Icon(
                  Icons.flash_on,
                  color: Colors.red.shade400,
                  size: 32,
                ),
                onTap: () {
                  // Aqui vai o código de um método
                  Navigator.pop(context);
                }),

            // Item 2
            new ListTile(
                title: new Text("Dart"),
                subtitle: new Text("É muito forte"),
                trailing: new Icon(Icons.keyboard_arrow_right),
                leading: new Icon(
                  Icons.mood,
                  color: Colors.amber.shade700,
                  size: 32,
                ),
                onTap: () {
                  // Aqui vai o código de um método
                  Navigator.pop(context);
                }),

            // Item 3
            new ListTile(
                title: new Text("Cafessíneo"),
                subtitle: new Text("Quero cafééé"),
                trailing: new Icon(Icons.keyboard_arrow_right),
                leading: new Icon(
                  Icons.coffee,
                  color: Colors.brown,
                  size: 32,
                ),
                onTap: () {
                  // Aqui vai o código de um método
                  Navigator.pop(context);
                }),

            // Item 4
            new ListTile(
                title: new Text("Configurações"),
                subtitle: new Text("Ajustes no Sistema"),
                trailing: new Icon(Icons.keyboard_arrow_right),
                leading: new Icon(
                  Icons.settings,
                  color: Colors.teal,
                  size: 32,
                ),
                onTap: () {
                  // Aqui vai o código de um método
                  Navigator.pop(context);
                })
          ],
        )),

        // Corpo do App
        body: Center(
            child: ElevatedButton(
                child: new Text("Mostrar SnackBar"),
                onPressed: () {
                  final snackBar = SnackBar(
                    content: new Text("Buenas, esta é uma SnackBar"),
                    duration: new Duration(milliseconds: 2500),
                    behavior: SnackBarBehavior.floating,
                    action: SnackBarAction(
                      label: "OK",
                      onPressed: () {
                        // Aqui vai o codigo de alguma ação
                      },
                    ),
                  );

                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                })),

        // Barra de Ícones (inferior)
        bottomNavigationBar: BottomNavigationBar(
          items: [
            // ícone Home
            BottomNavigationBarItem(icon: new Icon(Icons.home), label: "Home"),

            // Ícone Configurações
            BottomNavigationBarItem(
                icon: new Icon(Icons.settings), label: "Configurações"),

            // Ícone Login
            BottomNavigationBarItem(icon: new Icon(Icons.login), label: "Login")
          ],
        ),
      ),
    );
  }
}
