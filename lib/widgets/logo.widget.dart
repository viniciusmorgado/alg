import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // O método column é utilizado para uma coluna estática, enquanto o Listview para uma lista que possa ser feito scroll, dessa forma o column é mais adequado em nosso widget logo.
    return Column(
      children: <Widget>[
        // Método SizedBoz define um tamanho para o widget Listview.
        SizedBox(height: 60),
        // Método Image está utilizando a função asset para acessar uma imagem especifica dentro do diretório do projeto e imprimi-lo na tela, nessa caso a imagem da nossa logo.
        Image.asset(
          "assets/images/aog-white.png",
          // parametro height define o tamanho da imagem.
          height: 80,
        ),
        SizedBox(height: 10),
        // Método Text está criando o texto "Àlcool e Gasoline" e utilizando parametros já vistos anteriormente definindo as propriedades desse widget de texto como fonte, cor etc.
        Text(
          "Álcool ou Gasolina",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            //fontFamily: "BigShouldersDisplay"
          ),
          // textAlign o parametro está alinhando o widget de texto que foi definido anteriormente incluindo todas suas propriedades.
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
