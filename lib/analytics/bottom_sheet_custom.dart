import "package:flutter/material.dart";

class BottomSheetCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData localColors = Theme.of(context);
    return Container(
      height: size.height * 0.85,
      width: size.width,
      decoration: BoxDecoration(
        color: localColors.backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 5.0,
            offset: Offset(0, 0),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              print("close");
            },
            child: Container(
              child: Icon(
                Icons.arrow_drop_down,
                size: 35.0,
                color: localColors.primaryColor,
              ),
            ),
          ),
          Container(
            height: size.height * 0.80,
            child: GridView.count(
                crossAxisCount: 3,
                children: List.generate(99, (index) {
                  return Center(
                    child: Text(
                      'Item $index',
                    ),
                  );
                }),
              ),
            
          )
        ],
      ),
    );
  }
}
