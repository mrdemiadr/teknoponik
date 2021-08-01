import 'package:flutter/material.dart';
import 'package:teknoponik/app/sign_in/sign_in_page.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    loadingDelayed();
    super.initState();
  }

  void loadingDelayed() {
    Future.delayed(
        const Duration(seconds: 2),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignInPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Image.asset('assets/img/fulllogo.png'),
        ),
      ),
    );
  }
}
