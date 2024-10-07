import 'package:conan_app/src/screens/weapons/data/weapons_data.dart';
import 'package:flutter/material.dart';

class Handed1HSwordsCosts extends StatelessWidget {
  final int index;

  const Handed1HSwordsCosts({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final swordItem = swords1H[index];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 35,
          backgroundColor: Colors.lightBlue,
          title: const Text("1 Handed Swords"),
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(-0.30, -0.95),
                    end: Alignment(0.3, 0.95),
                    colors: [Color(0xFF4FACFE), Color(0xFF00F2FE)],
                  ),
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
      ),
    );
  }
}