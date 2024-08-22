import 'package:flutter/material.dart';

class Armor extends StatelessWidget {
  const Armor({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 35,
          backgroundColor: Colors.lightBlue,
          title: const Text("Armor Recipes"),
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
             Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: Card(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network("https://static.wikia.nocookie.net/conanexiles_gamepedia/images/3/30/Model_Light.png/revision/latest/scale-to-width-down/250?cb=20200101031500",
                            height: 150,
                            width: 150,
                            ),
                          ),
                          const Text("Light Armor",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          ),
                        ],
                      ),
                    ),
                  ),
                   SizedBox(
                    height: 200,
                    width: 200,
                    child: Card(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network("https://static.wikia.nocookie.net/conanexiles_gamepedia/images/2/22/Model_Medium.png/revision/latest?cb=20200101032144",
                            height: 150,
                            width: 150,
                            ),
                          ),
                          const Text("Medium Armor",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          ),
                        ],
                      )
                    ),
                  ),
                   SizedBox(
                    height: 200,
                    width: 200,
                    child: Card(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network("https://static.wikia.nocookie.net/conanexiles_gamepedia/images/9/99/Model_Heavy.png/revision/latest/scale-to-width-down/250?cb=20200101032738",
                            height: 150,
                            width: 150,
                            ),
                          ),
                          const Text("Heavy Armor",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          ),
                        ],
                      )
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        ),
      );
  }
}