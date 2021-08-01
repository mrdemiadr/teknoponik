import 'package:flutter/material.dart';
import 'package:teknoponik/common_widget/nutrition_card.dart';
// import 'package:teknoponik/common_widget/drawer_menu.dart';
import 'myprofile_page.dart';
import 'package:teknoponik/constant.dart';

class HomePage extends StatefulWidget {
  final String? username;
  HomePage(this.username);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      //endDrawer: DrawerMenu(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 30.0, left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hi, ${widget.username}',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  InkWell(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/img/justlogo.png'),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MyProfilePage(widget.username)));

                      //_scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),
                ],
              ),
            ),
            Container(
              height: 200.0,
              width: 200.0,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1515356956468-873dd257f911?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1526&q=80'),
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
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                'Lettuce',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NutritionCard(
                      nuritionName: 'TDS',
                      nuritionValue: 1000,
                      nutritionStatus: 'Normal',
                    ),
                    NutritionCard(
                      nuritionName: 'pH',
                      nuritionValue: 3,
                      nutritionStatus: 'Low',
                    ),
                    NutritionCard(
                      nuritionName: 'Nutrition Temperature',
                      nuritionValue: 27,
                      nutritionStatus: 'Normal',
                    ),
                    NutritionCard(
                      nuritionName: 'Humidity',
                      nuritionValue: 25,
                      nutritionStatus: 'Normal',
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
