import 'package:flutter/material.dart';

class EewaIntroductionScreen extends StatelessWidget {
  const EewaIntroductionScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EEWA Introduction"),
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
                children: const [
                  Text("The EEWA is a mod that expands the user experience and lengthens the end of the game. This guide is for the Exiled Lands map (not Siptah)."),
                  SizedBox(height: 6,),
                  Divider(height: 6,
                  color: Colors.black,
                  thickness: 2,
                  ),
                  SizedBox(height: 6,),
                  Text("How to use the Altar of Hanuman, the Chaosmouth Altar and the Conjuration Pillar. New dungeons that will help you advance from level 60, new NPCs, items and keys."),
                ],
              ),
            ),
          )
        ]
      )
    );
  }
}