import 'package:flutter/material.dart';
import 'package:testing_app01/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : HomePage(),
    );
  }
}
