import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {

  var busy = false;
  var invert = false;
  Function func;
  var text = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.all(30),
      width: double.infinity,
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