import 'package:conan_app/src/screens/mods/eewa_mod/presentation/dungeons_1/altar_of_hanuman_screen.dart';
import 'package:conan_app/src/screens/mods/eewa_mod/presentation/dungeons_1/ancient_cave_screen.dart';
import 'package:conan_app/src/screens/mods/eewa_mod/presentation/dungeons_1/ancient_stygian_ruins_screen.dart';
import 'package:conan_app/src/screens/mods/eewa_mod/presentation/dungeons_1/chaos_mouth_altar_screen.dart';
import 'package:conan_app/src/screens/mods/eewa_mod/presentation/dungeons_1/conjuration_pillar_screen.dart';
import 'package:conan_app/src/screens/mods/eewa_mod/presentation/dungeons_1/meruvian_camp_screen.dart';
import 'package:conan_app/src/screens/mods/eewa_mod/presentation/dungeons_1/perilous_valley.dart';

import 'package:flutter/material.dart';

class Dungeons1Screen extends StatelessWidget {
  const Dungeons1Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dungeons And Locations 1"),
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
            )
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: ListView(
                children: [Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10,),
                OutlinedButton(onPressed: (){
                  Navigator.push(
                   context,
                  MaterialPageRoute(builder: (context) => const ChaosMouthAltarScreen()),
                  );
                },
                style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      elevation: 10,
                      shadowColor: Colors.black,
                    ),
                child: const Text("Chaosmouth Altar",
                style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w700,
                      ),
                ),
                ),
                const SizedBox(height: 10,),
                    OutlinedButton(onPressed: (){
                  Navigator.push(
                   context,
                  MaterialPageRoute(builder: (context) => const HanumanAltarScreen()),
                  );
                },
                style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      elevation: 10,
                      shadowColor: Colors.black,
                    ),
                child: const Text("Hanuman Altar",
                style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w700,
                      ),
                ),
                ),
                const SizedBox(height: 10,),
                OutlinedButton(onPressed: (){
                  Navigator.push(
                   context,
                  MaterialPageRoute(builder: (context) => const ConjurationPillarScreen()),
                  );
                },
                style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      elevation: 10,
                      shadowColor: Colors.black,
                    ),
                child: const Text("Conjuration Pillar",
                style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w700,
                      ),
                ),
                ),
                const SizedBox(height: 10,),
                OutlinedButton(onPressed: (){
                  Navigator.push(
                   context,
                  MaterialPageRoute(builder: (context) => const PerilousValleyScreen()),
                  );
                },
                style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      elevation: 10,
                      shadowColor: Colors.black,
                    ),
                child: const Text("Perilous Valley",
                style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w700,
                      ),
                ),
                ),
                const SizedBox(height: 10,),
                OutlinedButton(onPressed: (){
                  Navigator.push(
                   context,
                  MaterialPageRoute(builder: (context) => const AncientStygianRuinsScreen()),
                  );
                },
                style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      elevation: 10,
                      shadowColor: Colors.black,
                    ),
                child: const Text("Ancient Stygian Ruins",
                style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w700,
                      ),
                ),
                ),
                const SizedBox(height: 10,),
                OutlinedButton(onPressed: (){
                  Navigator.push(
                   context,
                  MaterialPageRoute(builder: (context) => const AncientCaveScreen()),
                  );
                },
                style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      elevation: 10,
                      shadowColor: Colors.black,
                    ),
                child: const Text("Ancient Cave",
                style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w700,
                      ),
                ),
                ),
                const SizedBox(height: 10,),
                OutlinedButton(onPressed: (){
                  Navigator.push(
                   context,
                  MaterialPageRoute(builder: (context) => const MeruvianCampScreen()),
                  );
                },
                style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      elevation: 10,
                      shadowColor: Colors.black,
                    ),
                child: const Text("Meruvian Camp",
                style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w700,
                      ),
                ),
                ),
                  ],
                ),
                ]
              ),
            ),
          )
        ]
      )
    );
  }
}