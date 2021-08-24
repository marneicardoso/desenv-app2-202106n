import 'package:agenda_contatos/Model/contato.dart';

class ContatoService {
  // Cria a lista de Contatos
  static List<Contato> contatos = [];

  // Método para Cadastrar Contatos na Agenda
  String cadastrarContato(Contato contato) {
    contatos.add(contato);
    
    return "Novo contato: ${contato.nome} ${contato.sobrenome}";
  }

  // Método para Buscar todos os Contatos registrados
  List listarContato() {

    /*contatos = [
      Contato(
        id: 1,
        nome: "Beatriz",
        sobrenome: "Kern",
        email: "bia.kern@gmail.com",
        fone: "(51) 99988-7766",
        foto: "img/fotos/1.png"
      ),

      Contato(
        id: 2,
        nome: "Ana",
        sobrenome: "Oliveira",
        email: "ana.oliveira83@gmail.com",
        fone: "(51) 99887-7665",
        foto: "img/fotos/2.png"
      ),

      Contato(
        id: 3,
        nome: "Luis Carlos",
        sobrenome: "Santos",
        email: "luiscsantos@bol.com",
        fone: "(51) 98877-6655",
        foto: "img/fotos/3.png"
      ),

      Contato(
        id: 4,
        nome: "Stella",
        sobrenome: "Schneider",
        email: "schneider.stella@hotmail.com",
        fone: "(51) 98776-6554",
        foto: "img/fotos/4.png"
      ),

      Contato(
        id: 5,
        nome: "Luciano",
        sobrenome: "Andrade",
        email: "luandrade10@gmail.com",
        fone: "(51) 97766-5544",
        foto: "img/fotos/5.png"
      ),

      Contato(
        id: 6,
        nome: "Adalberto",
        sobrenome: "Cunha",
        email: "cunhaadalberto@gmail.com",
        fone: "(51) 97665-5443",
        foto: "img/fotos/6.png"
      ),

      Contato(
        id: 7,
        nome: "Fabiane",
        sobrenome: "Torres",
        email: "fabinha.torres@hotmail.com",
        fone: "(51) 96655-4433",
        foto: "img/fotos/7.png"
      ),

      Contato(
        id: 8,
        nome: "William",
        sobrenome: "de Souza",
        email: "will.i.am.souza@gmail.com",
        fone: "(51) 96554-4332",
        foto: "img/fotos/8.png"
      ),
    ];*/

    return contatos;
  }
}