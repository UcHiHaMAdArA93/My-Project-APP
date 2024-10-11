import 'package:conan_app/src/screens/weapons/presentation/bows_screen.dart';
import 'package:conan_app/src/screens/weapons/presentation/one_handed_axes.dart';
import 'package:conan_app/src/screens/weapons/presentation/one_handed_maces.dart';
import 'package:conan_app/src/screens/weapons/presentation/one_handed_swords.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 35,
          title: const Text("Weapon Categories"),
        backgroundColor: const Color(0xffb29f94),
      ),
      body:  Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
          colors: [Color(0xff603813), Color(0xffb29f94)],
          stops: [0.2, 1],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () => Navigator.of(context).push( MaterialPageRoute(
                    builder: (BuildContext context) => const OneHandedAxes()
                    ),
                    ),
                          child: Card(
                          child: Column(
                          children: [
                            Image.network("https://static.wikia.nocookie.net/conanexiles_gamepedia/images/f/fb/Icon_cimmerian_battleaxe.png/revision/latest/scale-to-width-down/54?cb=20180507204731"),
                            const Text("One Handed Axes"),
                          ],
                          ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () => Navigator.of(context).push( MaterialPageRoute(
                    builder: (BuildContext context) => const OneHandedMaces()
                    ),
                    ),
                          child: Card(
                          child: Column(
                            children: [
                              Image.network("https://static.wikia.nocookie.net/conanexiles_gamepedia/images/d/d8/Icon_steel_mace.png/revision/latest/scale-to-width-down/54?cb=20180507215940"),
                              const Text("One Handed Maces")
                            ],
                          ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () => Navigator.of(context).push( MaterialPageRoute(
                    builder: (BuildContext context) => const OneHandedSwords()
                    ),
                    ),
                          child: Card(
                          child: Column(
                          children: [
                            Image.network("https://static.wikia.nocookie.net/conanexiles_gamepedia/images/e/e6/Icon_legendary_derketo_sword.png/revision/latest/scale-to-width-down/54?cb=20180507212410"),
                            const Text("One Handed Swords"),
                          ],
                          ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () => Navigator.of(context).push( MaterialPageRoute(
                    builder: (BuildContext context) => const Bows()
                    ),
                    ),
                          child: Card(
                          child: Column(
                            children: [
                              Image.network("https://static.wikia.nocookie.net/conanexiles_gamepedia/images/4/4e/Icon_composite_bow.png/revision/latest/scale-to-width-down/54?cb=20180507204807"),
                              const Text("Bows")
                            ],
                          ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
          ),
        ),
    ); 
  }
}