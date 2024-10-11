import 'package:conan_app/src/screens/weapons/data/weapons_data.dart';
import 'package:flutter/material.dart';

class Handed1HSwordsCosts extends StatelessWidget {
  final int index;

  const Handed1HSwordsCosts({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final swordItem = swords1H[index];

    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 35,
          title: const Text("1 Handed Swords"),
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(  
                child: SizedBox(
                  height: 250,
                  width: 300,
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center, 
                      children: [
                        if (swordItem.imagePath.isNotEmpty)
                          SizedBox(
                            height: 70,
                            width: 70,
                            child: Image.network(
                              swordItem.imagePath,
                              fit: BoxFit.contain,
                              filterQuality: FilterQuality.high,
                            ),
                          ),
                        const SizedBox(height: 16.0),
                        Text(
                          swordItem.cost,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}