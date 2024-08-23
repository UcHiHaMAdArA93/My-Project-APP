
import 'package:conan_app/src/screens/building_costs/presentation/tier_1_building_screen.dart';
import 'package:conan_app/src/screens/building_costs/presentation/tier_2_building_screen.dart';
import 'package:conan_app/src/screens/building_costs/presentation/tier_3_building_screen.dart';
import 'package:flutter/material.dart';

class BuildingCosts extends StatelessWidget {
  const BuildingCosts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 35,
          backgroundColor: Colors.lightBlue,
          title: const Text("Categories"),
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(-0.30, -0.95),
                    end: Alignment(0.3, 0.95),
                    colors: [Color(0xFF4FACFE), Color(0xFF00F2FE)],
                  ),
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
                    builder: (BuildContext context) => const Tier1Buildings ()
                    ),
                    ),
                      child: Card(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network("https://static.wikia.nocookie.net/conanexiles_gamepedia/images/6/68/Icon_Foundation-1.png/revision/latest?cb=20170201232220",
                              height: 150,
                              width: 150,
                              ),
                            ),
                            const Text("Tier 1 Buildings",
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
                    builder: (BuildContext context) => const Tier2Buildings()
                    ),
                    ),
                      child: Card(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network("https://static.wikia.nocookie.net/conanexiles_gamepedia/images/e/e2/Icon_t2_foundation.png/revision/latest?cb=20180507221438",
                              height: 150,
                              width: 150,
                              ),
                            ),
                            const Text("Tier 2 Buildings",
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
                    builder: (BuildContext context) => const Tier3Buildings ()
                    ),
                    ),
                      child: Card(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network("https://static.wikia.nocookie.net/conanexiles_gamepedia/images/2/2e/Icon_tier3_foundation_highlands.png/revision/latest?cb=20180507221746",
                              height: 150,
                              width: 150,
                              ),
                            ),
                            const Text("Tier 3 Buildings",
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