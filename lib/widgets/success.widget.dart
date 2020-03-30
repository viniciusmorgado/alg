import 'package:flutter/material.dart';
import 'loading.button.widget.dart';

class Success extends StatefulWidget {
  var result = "";
  Function reset;

  Success({
    @required this.reset,
    @required this.result,
  });

  @override
  _SuccessState createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Text(
            widget.result,
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 20,
                fontFamily: "OpenSans"),
            textAlign: TextAlign.center,
          ),
          LoadingButton(
            busy: false,
            func: widget.reset,
            text: "CALCULAR NOVAMENTE",
            invert: true,
          ),
        ],
      ),
    );
  }
}
