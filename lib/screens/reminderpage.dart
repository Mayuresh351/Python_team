import 'package:flutter/material.dart';
import 'package:elderlyapp/components.dart';

class ReminderPage extends StatefulWidget {

  static String id = 'ReminderPage';
  @override
  _ReminderPageState createState() => _ReminderPageState();
}

class _ReminderPageState extends State<ReminderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset('images/ComingSoon.jpg'),
            BottomTabBar(),
          ],
        ),
      ),
    );
  }
}


