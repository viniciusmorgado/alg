import 'package:alg/widgets/input.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'loading.button.widget.dart';

class SubmitForm extends StatefulWidget {
  var gasCtrl = new MoneyMaskedTextController();
  var alcCtrl = new MoneyMaskedTextController();
  var busy = false;
  Function submitFunc;

  SubmitForm({
    @required this.gasCtrl,
    @required this.alcCtrl,
    @required this.busy,
    @required this.submitFunc,
  });

  @override
  _SubmitFormState createState() => _SubmitFormState();
}

class _SubmitFormState extends State<SubmitForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            label: "Gasolina",
            ctrl: widget.gasCtrl,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            label: "Álcool",
            ctrl: widget.alcCtrl,
          ),
        ),
        LoadingButton(
          busy: widget.busy,
          func: widget.submitFunc,
          text: "CALCULAR",
          invert: false,
        ),
      ],
    );
  }
}
