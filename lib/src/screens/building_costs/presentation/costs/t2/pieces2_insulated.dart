import 'package:conan_app/src/screens/building_costs/data/building_costs_data.dart';
import 'package:flutter/material.dart';

class Tier2BuildingPiecesInsulated  extends StatelessWidget {
  const Tier2BuildingPiecesInsulated({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 35,
          backgroundColor: Colors.lightBlue,
          title: const Text("Insulated Wood",),
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
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 1, 
                ),
                itemCount: insulatedWoodT2Building.length,
                itemBuilder: (context, index) {
                  return Card(
                      elevation: 10,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: insulatedWoodT2Building[index].imagePath.isNotEmpty
                                  ? SizedBox(
                                    height: 50,
                                    width: 50,
                                    child: Image.network(
                                        insulatedWoodT2Building[index].imagePath,
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
                              insulatedWoodT2Building[index].costs,
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