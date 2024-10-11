import 'package:flutter/material.dart';

class MeruvianCampScreen extends StatelessWidget {
  const MeruvianCampScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meruvian Camp"),
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
                      child: Image.network("https://steamuserimages-a.akamaihd.net/ugc/2295213908350352788/3A4FEC0458622F8AB45E84B09FE463F410492636/"),
                      ),
                      const SizedBox(height: 10,),
                      const Text("Recommended minimum level 200\nLocated in the Highlands, in an Acheronian building east of The Great Dam. You will see the entrance on its east face.\nThis area doesn't have a loading screen. In addition to some Meruvian Sentinels (human), you'll find an elite Afflicted Being (corrupted colossal shaleback) inside. Everyone will drop EEWA materials. Meruvian Sentry (fighter or archer) enslavable humans may appear."),
                  ],
                ),
            ),
          )
        ]
      )
    );
  }
}