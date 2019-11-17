import 'package:battlegrounds/components/app_bar_custom.dart';
import 'package:battlegrounds/components/circular_percent.dart';
import "package:flutter/material.dart";

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AppBarCustom(text: "Dashboard"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircularPercent(
                    size: size.width / 2 - 40,
                    percent: 1.0,
                    primaryColor: primaryColor,
                    mainText: "10",
                    labelText: "All",
                  ),
                  CircularPercent(
                    size: size.width / 2 - 40,
                    percent: 0.4,
                    primaryColor: primaryColor,
                    mainText: "4",
                    labelText: "Top #1",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularPercent(
                    size: size.width / 2 - 40,
                    percent: 0.3,
                    primaryColor: primaryColor,
                    mainText: "3",
                    labelText: "Top #4",
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: size.width - 40,
                    padding: const EdgeInsets.all(30.0),
                    margin: const EdgeInsets.only(top: 25.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    child: Column(
                      children: <Widget>[
                        Image(
                          image: AssetImage("assets/images/heroes.png"), 
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Hero Analytics",
                            style: TextStyle(
                              fontSize: 24.0,
                              color: Colors.grey[500],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.add, size: 30.0),
      ),
    );
  }
}
