import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Detalhe extends StatelessWidget {
  // Dados vindos do Banco de Dados (DB)
  final String foto = "img/bolo_milho.jpg";
  final String nomeReceita = "BOLO DE MILHO CREMOSO";
  final String tempoPreparo = "40 Minutos";
  final String rendimento = "12 Porções";
  final String numeroFavoritos = "1.123";
  final String numeroComentarios = "289";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Foto
        new Image.asset(foto),

        // Título e Informações
        new Container(
          color: Colors.orange.shade700,
          padding: new EdgeInsets.all(25),
          child: new Column(
            children: [
              // Título da Receita
              new Text(
                nomeReceita,
                style: new TextStyle(color: Colors.white, fontSize: 24),
              ),

              SizedBox(height: 20),

              // Ícones
              new Row(
                // Distribui os elementos (colunas)
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Preparo
                  new Column(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.solidClock,
                        color: Colors.white,
                        size: 32,
                      ),
                      SizedBox(height: 10),
                      new Text(
                        "PREPARO",
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 10),
                      new Text(
                        tempoPreparo,
                        style: new TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),

                  // Rendimento
                  new Column(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.cheese,
                        color: Colors.white,
                        size: 32,
                      ),
                      SizedBox(height: 10),
                      new Text(
                        "RENDIMENTO",
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 10),
                      new Text(
                        rendimento,
                        style: new TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),

                  // Favoritos
                  new Column(
                    children: [
                      new FaIcon(
                        FontAwesomeIcons.solidHeart,
                        color: Colors.white,
                        size: 32,
                      ),
                      SizedBox(height: 10),
                      new Text(
                        "FAVORITOS",
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 10),
                      new Text(
                        numeroFavoritos,
                        style: new TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),

                  // Comentários
                  new Column(
                    children: [
                      new FaIcon(
                        FontAwesomeIcons.solidComment,
                        color: Colors.white,
                        size: 32,
                      ),
                      SizedBox(height: 10),
                      new Text(
                        "COMENTÁRIOS",
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 10),
                      new Text(
                        numeroComentarios,
                        style: new TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),

        new SizedBox(height: 10), // Espaçamento

        // Ingredientes
        new Container(
            child: new Column(
          children: [
            // Ícone e Ingredientes
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.bookOpen,
                  color: Colors.orange.shade700,
                ),
                new SizedBox(width: 10),
                new Text(
                  "INGREDIENTES",
                  style: new TextStyle(
                      color: Colors.orange.shade700,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                )
              ]
            ),

            // Lista de Ingredientes
            new Container(
              padding: EdgeInsets.all(20),
              child: new Text(
                "- 4 ovos\n" +
                "- 1 lata de milho verde\n" +
                "- 1/2 lata (de milho) de óleo de soja\n" +
                "- 3 colheres de sopa de coco ralado\n" +
                "- 2 colheres de sopa de queijo ralado (opcional)\n" +
                "- 2 xícaras de açúcar\n" +
                "- 7 colheres de sopa de milharina\n" +
                "- 1 colher de fermento em pó",
                style: new TextStyle(
                  fontSize: 18
                ),
              )
            ),

            // Ícone e Modo de Preparo
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.bookOpen,
                  color: Colors.orange.shade700,
                ),

                new SizedBox(width: 10),

                new Text(
                  "MODO DE PREPARO",
                  style: new TextStyle(
                      color: Colors.orange.shade700,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ]
            ),

            // Modo de Preparo
            new Container(
              padding: EdgeInsets.all(20),
              child: new Text(
                "1. Bata no liquidificador os ovos, o leite e o óleo por 1 minuto.\n" +
                "2. Acrescente o milho e bata por mais uns 2 minutos.\n" +
                "3. Adicione toda parte seca e bata até agregar os ingredientes.\n" +
                "4. Unte uma forma de buraco no meio e leve ao forno preaquecido a 180ºC por 45 minutos.",
                style: new TextStyle(
                  fontSize: 18
                ),
              )
            )
          ],
        )
      ),

      new SizedBox(height: 50), // Espaçamento
      ],
    );
  }
}
