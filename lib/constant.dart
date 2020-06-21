import 'package:flutter/material.dart';

const kTextFieldDecoration = InputDecoration(
  filled: true,
  fillColor: Color.fromRGBO(255, 255, 255, 0.3),
  focusColor: Color.fromRGBO(211, 211, 211, 1.0),
  hintText: '',
  hintStyle: TextStyle(
    color: Colors.white,
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent, width: 0),
    borderRadius: BorderRadius.all(Radius.circular(30.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.green, width: 3.0),
    borderRadius: BorderRadius.all(Radius.circular(30.0)),
  ),
);
