import 'package:flutter/material.dart';

class FullWidthRoundButton extends StatelessWidget {
  FullWidthRoundButton({this.getPressed, this.textButton});

  final String textButton;
  final Function getPressed;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Color(0xFF70C1B3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(30.0),
        ),
      ),
      padding: EdgeInsets.all(18.0),
      onPressed: getPressed,
      child: Text(
        textButton,
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
