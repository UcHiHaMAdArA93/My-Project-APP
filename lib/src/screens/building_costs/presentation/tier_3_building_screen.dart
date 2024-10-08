
import 'package:conan_app/src/screens/building_costs/data/building_costs_data.dart';
import 'package:conan_app/src/screens/building_costs/presentation/costs/t3/pieces3_black_ice.dart';
import 'package:conan_app/src/screens/building_costs/presentation/costs/t3/pieces3_reinforced_s.dart';
import 'package:flutter/material.dart';

class Tier3Buildings extends StatelessWidget {
  const Tier3Buildings({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 35,
          backgroundColor: Colors.lightBlue,
          title: const Text("Tier 3 Buildings"),
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
                itemCount: tier3Buildings.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                      if (index % 2 == 0) {
                       Navigator.push(
                        context,
                      MaterialPageRoute(builder: (context) => const Tier3BuildingPiecesRS()),
                       );
                      } else {
                   Navigator.push(
                     context,
                   MaterialPageRoute(builder: (context) => const Tier3BuildingPiecesBI()), 
    );
  }
                    },
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: tier3Buildings[index].imagePath.isNotEmpty
                                  ? SizedBox(
                                    height: 50,
                                    width: 50,
                                    child: Image.network(
                                        tier3Buildings[index].imagePath,
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
                              tier3Buildings[index].title,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}