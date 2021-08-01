import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        children: [
          DrawerHeader(
            child: Text('Menu'),
          ),
          Text('My Profile'),
          Text('Settings'),
        ],
      ),
    );
  }
}
