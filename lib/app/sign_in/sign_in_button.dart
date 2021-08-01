import 'package:flutter/material.dart';
import 'package:teknoponik/constant.dart';

class SignInButton extends StatelessWidget {
  final String textButton;
  final VoidCallback getPressed;
  SignInButton({required this.getPressed, required this.textButton});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: kBlueTeknoponik,
      padding: EdgeInsets.symmetric(vertical: 18.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(30.0),
        ),
      ),
      onPressed: getPressed,
      child: Text(
        textButton,
        style: TextStyle(fontSize: 18.0, color: Colors.white),
      ),
    );
  }
}
