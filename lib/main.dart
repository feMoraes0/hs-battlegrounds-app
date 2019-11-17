import 'package:flutter/material.dart';

import 'package:battlegrounds/dashboard/dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Nunito",
        brightness: Brightness.light,
        backgroundColor: Color.fromRGBO(250, 250, 250, 1.0),
        primaryColor: Colors.redAccent,
      ),
      home: Dashboard()
    );
  }
}