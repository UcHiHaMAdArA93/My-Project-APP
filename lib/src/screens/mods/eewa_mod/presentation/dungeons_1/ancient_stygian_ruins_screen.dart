import 'package:flutter/material.dart';

class AncientStygianRuinsScreen extends StatelessWidget {
  const AncientStygianRuinsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ancient Stygian Ruins"),
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
                    SizedBox(
                      height: 300,
                      width: 250,
                      child: Image.network("https://steamuserimages-a.akamaihd.net/ugc/2295213908350353519/1AA37B32F44C3E456E5EF737F51F352A9A4A784F/"),
                      ),
                      const SizedBox(height: 10,),
                      const Text("Recommended minimum level 100\nLocated in the desert, between the Sandswept Ruins and The Broken Highway further east in the desert.\nThis area doesn't have a loading screen. In it you'll find several Stygian Remnant elites and the boss Feh'un K'hrom. The Stygian Remnants will be able to drop the item Guard's ???, you must take it to Bastille, the translator, and during his quest chain he'll translate it for you. Until he translates it to you, you won't be able to kill the boss because A curse prevents you from damaging Fehun Khrom.\nA little ways away from the enemies is a small stash chest between a bush and a collapsed golden dome."),
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