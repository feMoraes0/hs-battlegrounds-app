import "package:flutter/material.dart";

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Dashboard",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
