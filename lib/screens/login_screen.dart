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
  var userName = 'root';
  var userPassowrd = 'root';
  var userNameInput;
  var userPassowrdInput;
  InputDecoration userTextField = kTextFieldDecoration;
  InputDecoration passwordTextField = kTextFieldDecoration;
  InputDecoration noInputTextField = kTextFieldDecoration.copyWith(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 3.0),
      borderRadius: BorderRadius.all(Radius.circular(30.0)),
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: 3.0),
        borderRadius: BorderRadius.all(Radius.circular(30.0))),
  );
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
              onChanged: (value) {
                userNameInput = value;
              },
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
              decoration: userTextField.copyWith(hintText: 'Username'),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              obscureText: true,
              onChanged: (value) {
                userPassowrdInput = value;
              },
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
              decoration: passwordTextField.copyWith(hintText: 'Password'),
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
                if (userNameInput != userName ||
                    userPassowrdInput != userPassowrd) {
                  showDialog(
                    context: context,
                    barrierDismissible: false, // user must tap button!
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Error'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: <Widget>[
                              Text('Periksa Kembali Username dan Password'),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('OK'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomeScreen(
                      userName: userName,
                      userPassword: userPassowrd,
                    );
                  }));
                }
//                if (userName.isNotEmpty == true &&
//                    userPassowrd.isNotEmpty == true) {
//                  Navigator.push(
//                    context,
//                    MaterialPageRoute(builder: (context) {
//                      return HomeScreen(
//                        userName: userName,
//                        userPassword: userPassowrd,
//                      );
//                    }),
//                  );
//                }
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
