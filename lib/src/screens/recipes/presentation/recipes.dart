import 'package:conan_app/src/screens/armor/presentation/armor.dart';
import 'package:conan_app/src/screens/benches/presentation/benches.dart';
import 'package:conan_app/src/screens/weapons/presentation/categories.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ionicons/ionicons.dart';

class Recipes extends StatelessWidget {
  const Recipes({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight:35,
          backgroundColor: Colors.lightBlue,
          title: const Text("Recipes"),
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
               Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Container(
                margin: const EdgeInsets.all(36),
                child: OutlinedButton(onPressed: (){
                  Navigator.push(
                     context,
                    MaterialPageRoute(builder: (context) => const Benches()),
                  );
                }, 
                 style: OutlinedButton.styleFrom(
                 backgroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                elevation: 10,
                shadowColor: Colors.black,
                          ),
                child:  const Row(
                  children: [
                  Expanded(child: Text("Benches Recipes",
                  style: TextStyle(fontSize: 16, fontFamily: "Roboto", fontWeight: FontWeight.w700, color: Colors.black),
                  ),
                  ),
                  Expanded(child: Icon(Icons.table_bar, size: 32, color: Colors.blueGrey,),
                  ),
                ],
                ),
                ),
              ),
                            Container(
                margin: const EdgeInsets.all(36),
                child: OutlinedButton(onPressed: (){
                  Navigator.push(
                     context,
                    MaterialPageRoute(builder: (context) => const Categories()),
                  );
                }, 
                 style: OutlinedButton.styleFrom(
                 backgroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                elevation: 10,
                shadowColor: Colors.black,
                          ),
                child:  Row(
                  children: [
                  const Expanded(child: Text("Weapons Recipes",
                  style: TextStyle(fontSize: 16, fontFamily: "Roboto", fontWeight: FontWeight.w700, color: Colors.black),
                  ),
                  ),
                  Expanded(child: Icon(MdiIcons.swordCross, size: 32, color: Colors.blueGrey,),
                  ),
                ],
                ),
                ),
              ),
                            Container(
                margin: const EdgeInsets.all(36),
                child: OutlinedButton(onPressed: (){
                  Navigator.push(
                     context,
                    MaterialPageRoute(builder: (context) => const Armor()),
                  );
                }, 
                 style: OutlinedButton.styleFrom(
                 backgroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                elevation: 10,
                shadowColor: Colors.black
                          ),
                child:  const Row(
                  children: [
                  Expanded(child: Text("Armor Recipes",
                  style: TextStyle(fontSize: 16, fontFamily: "Roboto", fontWeight: FontWeight.w700, color: Colors.black),
                  ),
                  ),
                  Expanded(child: Icon(Ionicons.shirt_sharp, size: 32, color: Colors.blueGrey,),
                  ),
                ],
                ),
                ),
              ),
          ],
          ),
          ],
        ),
      ),
    );
      
  }
}