import 'package:flutter/material.dart';

class ChaosMouthAltarScreen extends StatelessWidget {
  const ChaosMouthAltarScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chaosmouth Altar"),
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
                    child: Image.network("https://steamuserimages-a.akamaihd.net/ugc/2295213908350352717/852E8F0B0AB1A73D826010A9C2B770360EA2FC97/"),
                    ),
                    const SizedBox(height: 10,),
                    const Text("The Chaosmouth, it's south of New Asagarth (climbing the Acheronian wall). The Chaosmouth Altar is part of the Acheronian ruins of the wall. Insert either the six Artifacts or the three Corrupted Keystone Shards into it. A Keystone will immediately be created. DO NOT CONSUME IT, because the game will end."),
                ],
              ),
            ),
          )
        ]
      )
    );
  }
}