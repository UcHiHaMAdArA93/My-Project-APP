import 'package:conan_app/src/screens/mods/eewa_mod/presentation/dungeons_2/council_camps_screen.dart';
import 'package:flutter/material.dart';

class Dungeons2Screen extends StatelessWidget {
  const Dungeons2Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dungeons And Locations 2"),
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
                  MaterialPageRoute(builder: (context) => const SmallCouncilCamps()),
                  );
                },
                style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      elevation: 10,
                      shadowColor: Colors.black,
                    ),
                child: const Text("Council Camps",
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