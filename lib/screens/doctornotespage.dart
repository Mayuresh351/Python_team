import 'package:flutter/material.dart';

class NotesPage extends StatefulWidget {
  static String id = 'NotesPage';
  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('images/ComingSoon.jpg'),
      ),
    );
  }
}
