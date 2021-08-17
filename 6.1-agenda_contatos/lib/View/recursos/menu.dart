import 'package:agenda_contatos/View/home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuDrawer extends StatelessWidget {
  // Dados vindos do Banco de Dados (simulação)
  final String usuario = "Marnei Cardoso";
  final String email = "prof.marneicardoso@gmail.com";
  final String fotoPerfil = "img/perfil.jpg";

  Text mostrarTitulo(String texto) {
    return Text(
      texto,
      style: TextStyle(
        fontSize: 18
      )
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // Foto e Informações do usuário
          new UserAccountsDrawerHeader(
            accountName: Text(usuario),
            accountEmail: Text(email),
            currentAccountPicture: CircleAvatar(
              child: ClipRRect(
                child: Image.asset(fotoPerfil),
                borderRadius: BorderRadius.circular(50)
              )
            )
          ),

          // Home
          new ListTile(
            title: mostrarTitulo("Home"),
            subtitle: Text("Página incial"),
            trailing: FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(
              FontAwesomeIcons.home,
              color: Colors.orange.shade400,
              // color: Colors.orange[400],
              // color: Color(0xffffa726),
              size: 32
            ),
            
            // Vai para a página Busca
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home()
                )
              );
            }
          ),

          // Contato
          new ListTile(
            title: mostrarTitulo("Contatos"),
            subtitle: Text("Gerenciar contatos"),
            trailing: FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(
              FontAwesomeIcons.userFriends,
              color: Colors.blue.shade400,
              size: 32
            ),
            
            // Vai para a página Configurações
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home() // Configurações
                )
              );
            }
          ),

          // Configurações
          new ListTile(
            title: mostrarTitulo("Configurações"),
            subtitle: Text("Ajustes no Sistema"),
            trailing: FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(
              FontAwesomeIcons.cog,
              color: Colors.teal.shade400,
              size: 32
            ),
            
            // Vai para a página Home
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home() // Busca
                )
              );
            }
          ),

          // Logout
          new ListTile(
            title: mostrarTitulo("Logout"),
            subtitle: Text("Sair do Sistema"),
            trailing: FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(
              FontAwesomeIcons.signOutAlt,
              color: Colors.grey,
              size: 32
            ),
            
            // Vai para a página Logout
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home() // Logout
                )
              );
            }
          ),
        ]
      )
    );
  }
}
