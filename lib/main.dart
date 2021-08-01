import 'package:flutter/material.dart';
import 'package:teknoponik/app/landing_page.dart';
import 'package:teknoponik/constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: kBlueTeknoponik),
      ),
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}
