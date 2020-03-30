// Classe principal que constroe o corpo da nossa aplicação sobre um widget Stateless.
import 'package:alg/widgets/logo.widget.dart';
import 'package:alg/widgets/submit-form.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePage extends StatelessWidget {
  var _gasCtrl = new MoneyMaskedTextController();
  var _alcCtrl = new MoneyMaskedTextController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Logo(),
          SubmitForm(
            alcCtrl: _alcCtrl,
            gasCtrl: _gasCtrl,
            submitFunc: () {},
            busy: false,
          ),
        ],
      ),
    );
  }
}
