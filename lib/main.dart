import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Esse widget é a raiz da sua aplicação e é herança da superclasse Statelesswidget
  @override
  // Aqui o parametro "widget" define que estavamos trabalhando dentro de um widget, e o método build() é o responsável por construir na tela nosso layout.
  Widget build(BuildContext context) {
    // Aqui nós retornamos o método MaterialApp que será responsável por definir caracteristicas básicas da nossa aplicação como titulo (não visivel ao usuário) e paleta de cores.
    return MaterialApp(
      // Remove a barra de debug da aplicação.
      debugShowCheckedModeBanner: false,
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
  @override
  Widget build(BuildContext context) {
    // Scaffold é à função responsável por implementar a estrutura base do layout Material Design, diferente do container que é responsável por ser uma forma conveniênte de alinhar tamanho e posicionamento de diferentes widgets.
    return Scaffold(
      // Utilizando o parametro backgroundcColor nós definimos uma cor de fundo para nossa aplicação e com o método Theme.of(context) nós requisitamos a utilização da paleta de cores primária definida no MyApp.
      backgroundColor: Theme.of(context).primaryColor,
    );
  }
}
