import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Input extends StatelessWidget {
  // O trecho a seguir serve para repassarmos informações para nossos widgets.
  var label = "";
  // Variavel control que recebe como valor o nosso método MoneyMaskedTextController() para gasolina
  var ctrl = new MoneyMaskedTextController();

  // Consultor da classe input, o parametro @required é o que definira as informações que devem ser passadas a função sempre que ele foi requisitado, ex: Input(Label: "Álcool", ctrl:"_gasCtrl");
  Input({
    @required this.label,
    @required this.ctrl,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 100,
          alignment: Alignment.centerRight,
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).primaryColor)),
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: "OpenSans",
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: TextFormField(
              controller: ctrl,
              keyboardType: TextInputType.number,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: "OpenSans",
              ),
              decoration: InputDecoration(
                // A propriedade InputBorder.none serve para remover bordas de widgets, nesse caso estamos utilizando para remover a linha que aparece na borda do TextFormField.
                border: InputBorder.none,
              )),
        ),
      ],
    );
  }
}
