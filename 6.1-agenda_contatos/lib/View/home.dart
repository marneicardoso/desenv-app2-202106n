import 'package:agenda_contatos/View/recursos/barraSuperior.dart';
import 'package:agenda_contatos/View/recursos/menu.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State createState() => new HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Título do App
      appBar: new BarraSuperior(),

      // Menu
      drawer: new MenuDrawer(),

      // Corpo do App
      body: SingleChildScrollView(
        child: Column(
          children: [
            // new SizedBox(height: 25), // Espaçamento

            new Container(
              // CONTINUA...
            )
          ],
        )
      )
    );
  }
}
