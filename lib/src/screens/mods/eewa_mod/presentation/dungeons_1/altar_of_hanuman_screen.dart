import 'package:flutter/material.dart';

class HanumanAltarScreen extends StatelessWidget {
  const HanumanAltarScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hanuman Altar"),
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
                children:[ 
                  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 300,
                      width: 250,
                      child: Image.network("https://steamuserimages-a.akamaihd.net/ugc/2295213908350352735/8B5F32697B020F1AC3FDBA120DD4068B9A4CEA69/"),
                      ),
                      const SizedBox(height: 10,),
                      const Text("Go to this altar, which is south of The Passage. You won't be able to access it without having the Eyes of Hanuman in your Inventory (you will get them from the Hanuman Devotees around it and from the Gray Apes in the jungle). Furthermore, it needs fuel to function; its fuel is Blood Sacrifice. To obtain it you must knock out some NPCs and take them with your restraints to the statue. While still holding them, interact with the altar and they'll turn into Blood Sacrifice.Once you've the Eyes of Hanuman and the Blood Sacrifice, you must enter the Keystone, one of the Artefacts that I'm going to indicate to you and you must also activate the altar (hit the button play in the altar interface):If you introduce the Tear of Two Races, you'll create the Corrupted Kingscourge Soul. If you introduce the Mask of the Witch Queen, you'll create the Corrupted Witch Queen Soul. If you introduce the Diadem of the Giant-kings, you'll create the Corrupted Priestking Soul. Finally, if you introduce the three souls above (without The Keystone), you'll create the United Soul. Approximately three Bloods Sacrifice will be consumed for each soul created", style: TextStyle(color: Color(0xFFD7CCC8)),),
                  ],
                ),
                ],
              ),
            ),
          )
        ]
      )
    );
  }
}