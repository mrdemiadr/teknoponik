import 'package:flutter/material.dart';
import 'package:teknoponik/app/sign_in/sign_in_page.dart';
import 'package:teknoponik/constant.dart';
import 'package:teknoponik/common_widget/editable_textdata.dart';

class MyProfilePage extends StatelessWidget {
  final String? username;
  MyProfilePage(this.username);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => SignInPage()),
                  (Route<dynamic> route) => false);
              //MaterialPageRoute(builder: (context) => SignInPage()),
            },
            icon: Icon(Icons.logout_rounded),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 30.0, left: 20.0, right: 20.0),
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/img/justlogo.png'),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: kBlueTeknoponik,
                          blurRadius: 5.0,
                          spreadRadius: 5.0,
                        ),
                      ]),
                ),
              ),
            ),
            EditableTextData(
              editableTitle: 'Username',
              editableText: username,
              editButton: () {},
            ),
          ],
        ),
      ),
    );
  }
}
