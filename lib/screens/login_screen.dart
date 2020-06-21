import 'package:flutter/material.dart';
import 'package:teknoponik/constant.dart';
import 'package:teknoponik/round_button.dart';
import 'package:teknoponik/screens/register_screen.dart';
import 'home_screen.dart';
import 'forgotpassword_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB2DBBF),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Welcome',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32.0,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Login to continue',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
              decoration: kTextFieldDecoration.copyWith(hintText: 'Username'),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
              decoration: kTextFieldDecoration.copyWith(hintText: 'Password'),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              margin: EdgeInsets.only(left: 150.0, bottom: 10.0),
              child: FlatButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return ForgotPasswordScreen();
                    }),
                  );
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
            FullWidthRoundButton(
              getPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return HomeScreen();
                  }),
                );
              },
              textButton: 'Login',
            ),
            SizedBox(
              height: 20.0,
            ),
            FullWidthRoundButton(
              getPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return RegisterScreen();
                  }),
                );
              },
              textButton: 'Register',
            ),
          ],
        ),
      ),
    );
  }
}
