import "package:flutter/material.dart";

class AppBarCustom extends StatelessWidget {
  String text;

  AppBarCustom({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: Text(
        this.text,
        style: TextStyle(
          fontSize: 35.0,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
