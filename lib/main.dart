import 'package:alg/widgets/input.widget.dart';
import 'package:alg/widgets/logo.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'widgets/button.widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Esse widget é a raiz da sua aplicação e é herança da superclasse Statelesswidget
  @override
  // Aqui o parametro "widget" define que estavamos trabalhando dentro de um widget, e o método build() é o responsável por construir na tela nosso layout.
  Widget build(BuildContext context) {
    // Aqui nós retornamos o método MaterialApp que será responsável por definir caracteristicas básicas da nossa aplicação como titulo (não visivel ao usuário) e paleta de cores.
    return MaterialApp(
      // Remove a barra de debug da aplicação.
      // Title é o parametro que nosso método MaterialApp usa para definir o titulo da aplicação em seu core, o mesmo não é visivel para o usuário mais é definido por um questão semântica.
      title: 'Álcool ou Gasolina',
      // theme é o parametro dentro de nosso método MaterialApp que é capaz de receber métodos para personalização geral da nossa aplicação, como por exemplo alteração  a paleta de cores, no exemplo abaixo ele recebe o método ThemeData() que possui parametros como o primarySwtch: que nos permite alterar a paleta de cores geral que será usada por toda a aplicação.
      theme: ThemeData(
        // Aletra a paleta de cores de acordo com a definida.
        primarySwatch: Colors.deepPurple,
      ),
      // Invoca a função principal HomePage que será construida logo abaixo com a nossa tela principal.
      home: HomePage(),
    );
  }
}

// Classe principal que constroe o corpo da nossa aplicação sobre um widget Stateless.
class HomePage extends StatelessWidget {
  var _gasCtrl = new MoneyMaskedTextController();
  var _alcCtrl = new MoneyMaskedTextController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          // Importa o logo do arquivo lib/widget/logo.widget.dart
          Logo(),
          Container(
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          // Container utilizado apenas para separar em 50px o logo dos inputs
          Container(height: 50),
          // Importa o TextFormField do arquivo lib;widget/input.widget.dart
          Input(
            label: "Álcool",
            ctrl: _alcCtrl,
          ),
          // Importa o TextFormField do arquivo lib/widget/input.widget.dart
          Input(
            label: "Gasolina",
            ctrl: _gasCtrl,
          ),
          // Importa o TextFormField do arquivo lib/widget/button.widget.dart
          Button(),
        ],
      ),
    );
  }
}
