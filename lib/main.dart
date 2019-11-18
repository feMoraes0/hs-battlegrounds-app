import 'package:flutter/material.dart';

import 'package:battlegrounds/dashboard/dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Nunito",
        brightness: Brightness.light,
        backgroundColor: Color.fromRGBO(250, 250, 250, 1.0),
        disabledColor: Colors.grey[200],
        primaryColor: Colors.red,
      ),
      darkTheme: ThemeData(
        fontFamily: "Nunito",
        brightness: Brightness.dark,
        backgroundColor: Color.fromRGBO(48, 48, 48, 1.0),
        primaryColor: Colors.redAccent,
        disabledColor: Color.fromRGBO(255, 255, 255, 0.1),
      ),
      home: Dashboard()
    );
  }
}