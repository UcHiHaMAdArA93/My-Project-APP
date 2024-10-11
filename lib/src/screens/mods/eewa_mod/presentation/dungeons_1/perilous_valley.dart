import 'package:flutter/material.dart';

class PerilousValleyScreen extends StatelessWidget {
  const PerilousValleyScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perilous Valley"),
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
                      child: Image.network("https://steamuserimages-a.akamaihd.net/ugc/2295213908350352783/F7063D847210E746521F5F023CEC97CAE2296CA1/"),
                      ),
                      const SizedBox(height: 10,),
                      const Text("The most important NPCs are in the Perilous Valley, since if you complete their quests they'll reward you with feats and EEWA recipes. Two of them are on your left as soon as you enter: Elrond the blacksmith and Egor the hunter. The Scrim Collector will be attached to the vault on Saturdays and Sundays. If upon entering the Perilous Valley you move to your right you'll end up seeing Bastille, the translator. Finally there is Hosav, Shadow Legion Commander, among some Lemurian buildings. But to get to him you'll have to go through part of this dungeon, so you may not be prepared from the beginning.\nIn the crystal cave before Hosav, there is a tablet that will teach you the Crystalbreaker Armor feat\nIn this dungeon you can find the following important enemies:\nTo the north is the Daughter of the Devourer arena, behind a magical barrier. After killing her, extract the Slithering Tentacle from hers corpse, which is a Greater Bounty. Additionally, consuming it'll unlock the Bloody Sanction feat. To leave this arena you must go through the portal, which will return you to the entrance of the Valley.\nNear the Shadow Legion Commander is the Un-Ild boar and a Black Yeti, both of which will give you Lesser Bounties (Molten Shards and Black Yeti Head, respectively). Near the entrance is a Decayed Dragon along with a pair of Silent Advocants (humans). Additionally, scattered throughout the dungeon are boars, humans, decayed and rock formations (they'll likely spawn with a tablet on their back, and killing them will give you many Fragments of Power).\nTo leave Perilous Valley you must return through the entrance."),
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