import 'package:conan_app/src/screens/armor/presentation/heavy_armor_screen.dart';
import 'package:conan_app/src/screens/armor/presentation/light_armor_screen.dart';
import 'package:conan_app/src/screens/armor/presentation/medium_armor_screen.dart';
import 'package:flutter/material.dart';

class Armor extends StatelessWidget {
  const Armor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 35,
          backgroundColor: const Color(0xffb29f94),
          title: const Text("Categories"),
        ),
        body: Stack(
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
             Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).push( MaterialPageRoute(
                    builder: (BuildContext context) => const LightArmor()
                    ),
                    ),
                      child: Card(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network("https://static.wikia.nocookie.net/conanexiles_gamepedia/images/3/30/Model_Light.png/revision/latest/scale-to-width-down/250?cb=20200101031500",
                              height: 150,
                              width: 150,
                              ),
                            ),
                            const Text("Light Armor",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                   SizedBox(
                    height: 200,
                    width: 200,
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).push( MaterialPageRoute(
                    builder: (BuildContext context) => const MediumArmor()
                    ),
                    ),
                      child: Card(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network("https://static.wikia.nocookie.net/conanexiles_gamepedia/images/2/22/Model_Medium.png/revision/latest?cb=20200101032144",
                              height: 150,
                              width: 150,
                              ),
                            ),
                            const Text("Medium Armor",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            ),
                          ],
                        )
                      ),
                    ),
                  ),
                   SizedBox(
                    height: 200,
                    width: 200,
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).push( MaterialPageRoute(
                    builder: (BuildContext context) => const HeavyArmor()
                    ),
                    ),
                      child: Card(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network("https://static.wikia.nocookie.net/conanexiles_gamepedia/images/9/99/Model_Heavy.png/revision/latest/scale-to-width-down/250?cb=20200101032738",
                              height: 150,
                              width: 150,
                              ),
                            ),
                            const Text("Heavy Armor",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            ),
                          ],
                        )
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
  }
}