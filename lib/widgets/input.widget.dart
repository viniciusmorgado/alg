import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Input extends StatefulWidget {
  var label = "";
  var ctrl = new MoneyMaskedTextController();

  Input({
    @required this.label,
    @required this.ctrl,
  });

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 90,
          alignment: Alignment.centerRight,
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).primaryColor)),
          child: Text(
            widget.label,
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
              controller: widget.ctrl,
              keyboardType: TextInputType.number,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: "OpenSans",
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
              )),
        ),
      ],
    );
  }
}
