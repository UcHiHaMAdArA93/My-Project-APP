import 'package:flutter/material.dart';

class AncientCaveScreen extends StatelessWidget {
  const AncientCaveScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ancient Cave"),
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
                      child: Image.network("https://steamuserimages-a.akamaihd.net/ugc/2295213908350351644/29ECC14531B14454D50782C11682D1E0357970B1/"),
                      ),
                      const SizedBox(height: 10,),
                      const Text("Recommended minimum level 120\nLocated in the Mounds of the Dead, between the King's Niche cave and the Riversend\nOutside there are some relic hunters guarding the entrance, among them the elite Door-mamu the Treasureseeker may appear. When you enter the cave you've a Note of a Treasurehunter to your left that says: Demons are wandering this cave, we must be careful with how we proceed, especially with this cave being surrounded by foul magic. We must retrieve the artifact, some kind of horn, one demon here must possess it. This horn is said to give even the most simple Cimmerian the knowledge to conquer sorcery. I say we look for the biggest, baddest demon and bring it down so we can tear the horn of the beast's corpse, surely that must be the right horn. Imagine the wealth we will accumilate! This already gives you the clue that you're going to encounter many demons and that the bigboss will teach you the magic of EEWA.\nIn this dungeon you can find the following important enemies:\nBefore reaching the back exit there will be an Awakened Giant (killing it will give you a Bounty) buried under the sand, which will come out for you when you get close enough. Going through the crystal cave and jumping from one platform to another you will find a magical barrier, behind which is the Molten Death (spider), which will drop a Lesser Bounty. In another place in the dungeon you'll see a closed Acheronian door, in order to go through it it will ask you to carry Scourge meat in your Inventory. You can extract it from the corpse of any of the demons around. As you go through the door there will be an arena with the magical demon, the Scourge Demon King. When you manage to kill him, extract the Demonic Horn of Secrets from his corpse, which is a Greater Bounty. In addition, you must consume it to unlock the use of EEWA magic, as well as mana, and to unlock the Meruvian, Varvarian and Oblivion weapons. Additionally, throughout the cave you'll find larvae, undead and scourge giants fighting some relic-hunting treasure hunters. Among humans, the enslavable human Valiant Relic Hunter Blacksmith may appear (for the Valiant Blacksmith's Bench). To exit the Ancient Cave you've three ways: the entrance itself, the grotto near the entrance to the arena where you fight the Scourge Demon King and the grotto inside the arena. If you go through one of these two grottoes, you'll come out west of the entrance to the Ancient Cave, in the desert area."),
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