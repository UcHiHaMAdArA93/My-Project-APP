import 'package:conan_app/src/screens/mods/eewa_mod/presentation/dungeons_1/home_dungeons_screen.dart';
import 'package:conan_app/src/screens/mods/eewa_mod/presentation/dungeons_2/dungeons_2_home_screen.dart';
import 'package:conan_app/src/screens/mods/eewa_mod/presentation/introduction/eewa_introduction_screen.dart';
import 'package:flutter/material.dart';

class EewaHomeScreen extends StatelessWidget {
  const EewaHomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EEWA Guide"),
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
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(onPressed: (){
                  Navigator.push(
                   context,
                  MaterialPageRoute(builder: (context) => const EewaIntroductionScreen()),
                  );
                },
                style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      elevation: 10,
                      shadowColor: Colors.black,
                    ),
                child: const Text("Introduction",
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
                  MaterialPageRoute(builder: (context) => const Dungeons1Screen()),
                  );
                },
                style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      elevation: 10,
                      shadowColor: Colors.black,
                    ),
                child: const Text("Dungeons And Locations 1",
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
                  MaterialPageRoute(builder: (context) => const Dungeons2Screen()),
                  );
                },
                style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      elevation: 10,
                      shadowColor: Colors.black,
                    ),
                child: const Text("Dungeons And Locations 2",
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
          )
        ]
      )
    );
  }
}