import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: FlatButton(
        child: Text(
          "CALCULAR",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 25,
            fontFamily: "OpenSans",
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
