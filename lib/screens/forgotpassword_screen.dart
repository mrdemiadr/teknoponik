import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  String textUserInfo = '';

  void onClicked() {
    if (textUserInfo == '') {
      setState(() {
        textUserInfo = '"root"';
      });
    } else {
      print(textUserInfo);
      setState(() {
        textUserInfo = '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(30.0),
            child: Text(
              'Tap button dibawah untuk menampilkan username dan password',
              style: TextStyle(fontSize: 30.0),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          RaisedButton(
            onPressed: onClicked,
            child: Text(
              'Show Default Username and Passwod',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.green,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            textUserInfo,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
