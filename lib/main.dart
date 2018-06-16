import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Basic Calculator',
      theme: new ThemeData(
        primarySwatch: Colors.teal,
        primaryColor: Colors.teal,
        brightness: Brightness.dark,
        accentColor: Colors.limeAccent,
      ),
      home: new HomePage(),
    );
  }
}