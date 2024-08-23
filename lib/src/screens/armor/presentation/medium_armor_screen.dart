import 'package:conan_app/src/screens/armor/data/armor_data.dart';
import 'package:flutter/material.dart';

class MediumArmor extends StatelessWidget {
  const MediumArmor({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 35,
          backgroundColor: Colors.lightBlue,
          title: const Text("Light Armor"),
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
              child: ListView.builder(
                itemCount: mediumArmor.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        armorPart(mediumArmor[index].title1, mediumArmor[index].imagePath1),
                        armorPart(mediumArmor[index].title2, mediumArmor[index].imagePath2),
                        armorPart(mediumArmor[index].title3, mediumArmor[index].imagePath3),
                        armorPart(mediumArmor[index].title4, mediumArmor[index].imagePath4),
                        armorPart(mediumArmor[index].title5, mediumArmor[index].imagePath5),
                      ],
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
  Widget armorPart(String title, String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          imagePath.isNotEmpty
              ? SizedBox(
                  height: 50,
                  width: 50,
                  child: Image.network(
                    imagePath,
                    fit: BoxFit.contain,
                    filterQuality: FilterQuality.high,
                  ),
                )
              : Container(),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}