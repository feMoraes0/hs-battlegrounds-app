import "package:flutter/material.dart";

class BottomSheetCustom extends StatelessWidget {
  final List<Map<String, String>> listHeroes = [
    {"name": "A. F. Kay", "image": "assets/images/heroes/a_f_kay.png"},
    {"name": "Bartendotron", "image": "assets/images/heroes/bartendotron.png"},
    {"name": "Bran", "image": "assets/images/heroes/bran_bronzebeard.png"},
    {"name": "Dancin Deryl", "image": "assets/images/heroes/dancin_deryl.png"},
    {"name": "Elise", "image": "assets/images/heroes/elise_starseeker.png"},
    {"name": "George", "image": "assets/images/heroes/george_the_fallen.png"},
    {"name": "Infinite Toki", "image": "assets/images/heroes/infinite_toki.png"},
    {"name": "Jaraxxus", "image": "assets/images/heroes/lord_jaraxxus.png"},
    {"name": "Nefarian", "image": "assets/images/heroes/nefarian.png"},
    {"name": "Patches", "image": "assets/images/heroes/patches_the_pirate.png"},
    {"name": "Patchwerk", "image": "assets/images/heroes/patchwerk.png"},
    {"name": "Putricide", "image": "assets/images/heroes/professor_putricide.png"},
    {"name": "Pyramad", "image": "assets/images/heroes/pyramad.png"},
    {"name": "Wagtoggle", "image": "assets/images/heroes/queen_wagtoggle.png"},
    {"name": "Ragnaros", "image": "assets/images/heroes/ragnaros.png"},
    {"name": "Shudderwock", "image": "assets/images/heroes/shudderwock.png"},
    {"name": "Sindragosa", "image": "assets/images/heroes/sindragosa.png"},
    {"name": "Sir Finley", "image": "assets/images/heroes/sir_finley_mrrgglton.png"},
    {"name": "The Curator", "image": "assets/images/heroes/curator.png"},
    {"name": "The Akamzarak", "image": "assets/images/heroes/the_great_akazamzarak.png"},
    {"name": "The Lich King", "image": "assets/images/heroes/the_lich_king.png"},
    {"name": "The Rat King", "image": "assets/images/heroes/the_rat_king.png"},
    {"name": "Prince Gallywix", "image": "assets/images/heroes/trade_prince_gallywix.png"},
    {"name": "Yogg Saron", "image": "assets/images/heroes/yogg_saron.png"},
  ];

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
              children: List.generate(listHeroes.length, (index) {
                Map<String, String> element = listHeroes[index];
                return Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 110,
                        child: Image(
                          image: AssetImage(element["image"]),
                        ),
                      ),
                      Text(element["name"].toString(), style: TextStyle(fontSize: 18.0),)
                    ],
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
