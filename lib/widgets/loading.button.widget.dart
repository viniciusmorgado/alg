import 'package:flutter/material.dart';

class LoadingButton extends StatefulWidget {
  var busy = false;
  var invert = false;
  Function func;
  var text = "";

  LoadingButton({
    @required this.busy,
    @required this.func,
    @required this.invert,
    @required this.text,
  });

  @override
  _LoadingButtonState createState() => _LoadingButtonState();
}

class _LoadingButtonState extends State<LoadingButton> {
  @override
  Widget build(BuildContext context) {
    return widget.busy
        ? Container(
            alignment: Alignment.center,
            height: 50,
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            height: 60,
            margin: EdgeInsets.all(30),
            width: double.infinity,
            decoration: BoxDecoration(
              color: widget.invert
                  ? Theme.of(context).primaryColor
                  : Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(50),
            ),
            child: FlatButton(
              child: Text(
                widget.text,
                style: TextStyle(
                  color: widget.invert ? Colors.white : Theme.of(context).primaryColor,
                  fontSize: 15,
                  fontFamily: "OpenSans",
                ),
              ),
              onPressed: widget.func,
            ),
          );
  }
}
