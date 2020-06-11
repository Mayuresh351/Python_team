import 'package:elderlyapp/screens/accountsettings.dart';
import 'package:elderlyapp/screens/doctornotespage.dart';
import 'package:elderlyapp/screens/medicationpage.dart';
import 'package:elderlyapp/screens/profilesettings.dart';
import 'package:elderlyapp/screens/reminderpage.dart';
import 'package:elderlyapp/screens/schedulepage.dart';
import 'package:flutter/material.dart';
import 'package:elderlyapp/constants.dart';
import 'package:flutter/rendering.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'screens/homepage.dart';

class BottomTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;
    return Container(
      height: (orientation == Orientation.landscape)
          ? size.width * 0.08
          : size.height * 0.08,
      width: size.width,
      child: Hero(
        tag: 'Drawer',
        child: Material(
          color: kWidgetColor,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TabWidget(
                    tabIcon: Icons.home,
                    tabContent: 'Home',
                    ontap: () {
                      Navigator.pushNamed(context, HomePage.id);
                      kChosenTab = 0;
                    },
                    color: (kChosenTab == 0)?kWidgetColorlite:kWidgetColor,
                  ),
                  SizedBox(
                    height: (orientation == Orientation.landscape)
                        ? size.width * 0.02
                        : size.height * 0.02,
                    width: 10.0,
                  ),
                  TabWidget(
                    tabIcon: Icons.alarm,
                    tabContent: 'Alarm',
                    ontap: () {
                      Navigator.pushNamed(context, ReminderPage.id);
                      kChosenTab = 1;
                    },
                    color: (kChosenTab == 1)?kWidgetColorlite:kWidgetColor,
                  ),
                  SizedBox(
                    height: (orientation == Orientation.landscape)
                        ? size.width * 0.02
                        : size.height * 0.02,
                    width: 10.0,
                  ),
                  TabWidget(
                    tabIcon: Icons.local_pharmacy,
                    tabContent: 'Pharmacy',
                    ontap: () {
                        kChosenTab = 2;
                    },
                    color: (kChosenTab == 2)?kWidgetColorlite:kWidgetColor,
                  ),
                  SizedBox(
                    height: (orientation == Orientation.landscape)
                        ? size.width * 0.02
                        : size.height * 0.02,
                    width: 10.0,
                  ),
                  TabWidget(
                    tabIcon: Icons.calendar_today,
                    tabContent: 'Schedule',
                    ontap: () {
                      Navigator.pushNamed(context, SchedulePage.id);
                      kChosenTab = 3;
                    },
                    color: (kChosenTab == 3)?kWidgetColorlite:kWidgetColor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
