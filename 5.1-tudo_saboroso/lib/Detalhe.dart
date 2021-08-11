import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Detalhe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange.shade700,
      padding: new EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      child: new Column(
        children: [
          // Título da receita
          new Text(
            "BOLO DE MILHO CREMOSO",
            style: new TextStyle(
              fontSize: 24,
              color: Colors.white
            ),
          ),

          // Espaçamento
          new SizedBox(height: 20), // Caixa(altura, largura)

          // Ícones
          new Row(
            // Distribui os elementos (colunas)
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Preparo
              new Column(
                children: [
                  new FaIcon(
                    FontAwesomeIcons.solidClock,
                    color: Colors.white,
                    size: 32,
                  ),

                  new SizedBox(height: 10),

                  new Text(
                    "PREPARO",
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),

                  new SizedBox(height: 10),

                  new Text(
                    "40 Minutos",
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 16
                    ),
                  )
                ],
              ),

              // Rendimento

              // Favoritos

              // Comentários
            ],
          )
        ],
      )
    );
  }
}
