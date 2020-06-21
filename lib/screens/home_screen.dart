import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String userName;
  final String userPassword;
  HomeScreen({this.userName, this.userPassword});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(userName),
      ),
      backgroundColor: Colors.white,
    );
  }
}
