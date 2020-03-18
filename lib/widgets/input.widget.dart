import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 100,
          alignment: Alignment.centerRight,
          margin: const EdgeInsets.all(15.0),
          padding: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).primaryColor)),
          child: Text(
            "Álcool",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontFamily: 'BigShouldersDisplay',
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: TextFormField(
              controller: _gasCtrl,
              keyboardType: TextInputType.number,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
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
