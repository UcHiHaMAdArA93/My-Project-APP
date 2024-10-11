import 'package:flutter/material.dart';

class ConjurationPillarScreen extends StatelessWidget {
  const ConjurationPillarScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Conjuration Pillar"),
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
                children: [
                  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 300,
                      width: 250,
                      child: Image.network("https://steamuserimages-a.akamaihd.net/ugc/2295213908350352762/B692A69CDF6701F323DA52A158478A1BF8CC2891/"),
                      ),
                      const SizedBox(height: 10,),
                      const Text("With one of the corrupted souls, go to the Conjuration Room. It's beneath The Unnamed City and is entered through a grotto in the northwest part of the city. To enter, you'll need to carry an Acheronian Sigil Key in your Inventory, which falls into the loot of magical monsters (Bounties) and EEWA dungeon monsters. Enter the room and you will see the Conjuration Pillar in the center. Depending on the soul you put into it, you'll summon a different enemy that will unlock certain weapons"),
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