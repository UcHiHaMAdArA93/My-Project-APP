import 'package:conan_app/src/screens/armor/data/armor_data.dart';
import 'package:conan_app/src/screens/armor/presentation/costs/khari_light_cost.dart';
import 'package:conan_app/src/screens/armor/presentation/costs/silent_legion_cost.dart';
import 'package:flutter/material.dart';

class LightArmor extends StatelessWidget {
  const LightArmor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 35,
          backgroundColor: const Color(0xffb29f94),
          title: const Text("Light Armor"),
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
              child: ListView.builder(
                itemCount: lightArmor.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){ 
                       if (index % 2 == 0) {
                       Navigator.push(
                        context,
                      MaterialPageRoute(builder: (context) => const SilentLegion()),
                       );
                      } 
                      else {
                   Navigator.push(
                     context,
                   MaterialPageRoute(builder: (context) => const KhariLight()), 
                  );
                 }
                    },
                    child: Card(
                      child: Column(
                        children: [
                          armorPart(lightArmor[index].title1, lightArmor[index].imagePath1),
                          armorPart(lightArmor[index].title2, lightArmor[index].imagePath2),
                          armorPart(lightArmor[index].title3, lightArmor[index].imagePath3),
                          armorPart(lightArmor[index].title4, lightArmor[index].imagePath4),
                          armorPart(lightArmor[index].title5, lightArmor[index].imagePath5),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
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
