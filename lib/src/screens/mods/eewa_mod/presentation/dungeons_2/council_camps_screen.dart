import 'package:flutter/material.dart';

class SmallCouncilCamps extends StatelessWidget {
  const SmallCouncilCamps({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Small Council Camps"),
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 300,
                    width: 250,
                    child: Image.network("https://steamuserimages-a.akamaihd.net/ugc/2295213908350353461/5B76C8563A5FEF3761A3401F587BFB2C72031067/"),
                    ),
                    const SizedBox(height: 10,),
                    const Text("Recommended minimum level 200\nLocated in the snowy mountains, north of the Frostneedle Forest\nIn the image above you can see the two camps, one of them in the foreground and the other in the distance. Both these small camps and the Council of Wolves are on the edge of different precipices of the snowy mountains. In these camps you'll find a couple of Council of Wolves fighters (humans).", style: TextStyle(color: Color(0xFFD7CCC8)),),
                ],
              ),
            ),
          )
        ]
      )
    );
  }
}