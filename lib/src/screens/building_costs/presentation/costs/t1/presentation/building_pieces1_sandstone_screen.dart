import 'package:conan_app/src/screens/building_costs/data/building_costs_data.dart';
import 'package:flutter/material.dart';

class Tier1BuildingPieces  extends StatelessWidget {
  const Tier1BuildingPieces({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 35,
          backgroundColor: const Color(0xffb29f94),
          title: const Text("Sandstone",),
        ),
        body: Stack(
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
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 1, 
                ),
                itemCount: sandstoneT1Building.length,
                itemBuilder: (context, index) {
                  return Card(
                      elevation: 10,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: sandstoneT1Building[index].imagePath.isNotEmpty
                                  ? SizedBox(
                                    height: 50,
                                    width: 50,
                                    child: Image.network(
                                        sandstoneT1Building[index].imagePath,
                                        fit: BoxFit.contain,
                                        filterQuality: FilterQuality.high,
                                      ),
                                  )
                                  : Container(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              sandstoneT1Building[index].costs,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      );
                },
              ),
            ),
          ],
        ),
      )
    );   
  }
}