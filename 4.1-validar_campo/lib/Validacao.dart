import 'package:flutter/material.dart';

class Validacao extends StatefulWidget {
  @override
  State createState() => new ValidacaoState();
}

class ValidacaoState extends State<Validacao> {
  
  // Atributo de controle de estado: válido ou não
  final chave = GlobalKey<FormState>();

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
        body: new Form(
          key: chave,
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Campo input
              new TextFormField(
                // validator recebe o valor informado pelo usuário
                validator: (value) {
                  // Verifica se está vazio ou é nulo
                  if (value == null || value.isEmpty) {
                    return "Por favor preencha os campos";
                  }

                  return null;
                }
              ),

              new Padding(
                padding: new EdgeInsets.symmetric(vertical: 16),
                child: new ElevatedButton(
                  child: new Text("Enviar"),
                  onPressed: () {
                    // Verifica a validação do campo (validator: (value))
                    if (chave.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        new SnackBar(
                          content: Text("Processando o pedido"),
                          duration: new Duration(milliseconds: 2500),
                          behavior: SnackBarBehavior.floating,
                        )
                      );
                    }
                  }
                )
              )
            ]
          )
        ),

        bottomNavigationBar: BottomNavigationBar(
          items: [
            // Ícone Home
            BottomNavigationBarItem(label: "Home", icon: new Icon(Icons.home)),

            // Ícone Sair
            BottomNavigationBarItem(label: "Sair", icon: new Icon(Icons.logout))
          ],
        ),
      )
    );
  }
}
