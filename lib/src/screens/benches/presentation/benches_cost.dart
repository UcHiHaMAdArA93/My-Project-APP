import 'package:conan_app/src/screens/benches/data/benches_data.dart';
import 'package:flutter/material.dart';

class BenchesCosts extends StatelessWidget {
  final int index;

  const BenchesCosts({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final benchItem = benchCost[index];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 35,
          backgroundColor: Colors.lightBlue,
          title: const Text("Bench Recipe"),
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
                        if (benchItem.imagePath.isNotEmpty)
                          SizedBox(
                            height: 70,
                            width: 70,
                            child: Image.network(
                              benchItem.imagePath,
                              fit: BoxFit.contain,
                              filterQuality: FilterQuality.high,
                            ),
                          ),
                        const SizedBox(height: 16.0),
                        Text(
                          benchItem.cost,
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
