import 'package:flutter/material.dart';
import 'package:teknoponik/screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TeknoPonik',
      theme: ThemeData(
          primaryColor: Color(0xFFB2DBBF),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          appBarTheme: AppBarTheme(
            textTheme: TextTheme(
              headline6: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
            iconTheme: IconThemeData(color: Colors.white),
          )),
      home: LoginScreen(),
      // initialRoute: LoginScreen.id,
      // routes: {
      //   LoginScreen.id: (context) => LoginScreen(),
      // },
    );
  }
}
