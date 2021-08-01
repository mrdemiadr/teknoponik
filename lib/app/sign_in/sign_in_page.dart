import 'package:flutter/material.dart';
import 'package:teknoponik/app/home_page.dart';
import 'package:teknoponik/app/sign_in/sign_in_button.dart';
import 'package:teknoponik/constant.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  String? username, password;
  bool _secureText = true;

  final _formKey = GlobalKey<FormState>();

  void _checkForm() {
    final _formCurrentState = _formKey.currentState;
    if (_formCurrentState!.validate()) {
      _formCurrentState.save();
      print(username);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => HomePage(
                    username,
                  )));
    }
  }

  void showHideText() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: ListView(
              children: [
                Container(
                  child: Image.asset('assets/img/fulllogo.png'),
                ),
                Text(
                  'Welcome \n Sign In to Continue',
                  style: TextStyle(
                    color: kBlueTeknoponik,
                    fontSize: 18.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Masukan username anda';
                          }
                          return null;
                        },
                        onSaved: (value) => username = value,
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Username',
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        obscureText: _secureText,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Masukan password anda';
                          }
                          return null;
                        },
                        onSaved: (value) => password = value,
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Password',
                          suffixIcon: IconButton(
                            onPressed: showHideText,
                            icon: Icon(_secureText
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      SignInButton(
                          getPressed: () {
                            _checkForm();
                          },
                          textButton: 'Sign In'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
