import 'package:conan_app/src/screens/weapons/data/weapons_data.dart';
import 'package:flutter/material.dart';

class Weapons extends StatelessWidget {
  const Weapons ({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 35,
          backgroundColor: Colors.lightBlue,
          title: const Text("Weapons Recipes"),
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
              child:  GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, 
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0, 
        childAspectRatio: 2 / 1, 
      ),
      itemCount: weaponDatabase.length,
      itemBuilder: (context, index) {
        return Card(
          child: GridTile(
            header: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                weaponDatabase[index].title,
                style: const TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Uncomment and adjust the following line if you have image paths
                // weaponDatabase[index].imagePath.isNotEmpty
                //     ? Image.network(weaponDatabase[index].imagePath)
                //     : Container(),
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