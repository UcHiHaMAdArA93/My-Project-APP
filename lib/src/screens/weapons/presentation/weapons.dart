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
                    colors: [Color(0xFF5C9A91), Colors.white],
                  ),
                ),
              ),
            ),
              Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    DecoratedBox(
                      decoration:  const BoxDecoration(color: Colors.blue, shape: BoxShape.rectangle, borderRadius: BorderRadius.all(Radius.circular(16))),
                      child: Row(
                        children: [
                        const Expanded(child: Text("Abyssal Bow", 
                        style: TextStyle(fontSize: 20,
                        ),
                        ),
                        ),
                        Expanded(child: Image.network("https://static.wikia.nocookie.net/conanexiles_gamepedia/images/a/ab/Icon_demon_bow.png/revision/latest?cb=20220910212053", 
                        height: 60, width: 60,),
                        ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 2,),
                     DecoratedBox(
                      decoration:  const BoxDecoration(color: Colors.blue, shape: BoxShape.rectangle, borderRadius: BorderRadius.all(Radius.circular(16))),
                      child: Row(
                        children: [
                        const Expanded(child: Text("Sword of Champions", 
                        style: TextStyle(fontSize: 20,
                        ),
                        ),
                        ),
                        Expanded(child: Image.network("https://static.wikia.nocookie.net/conanexiles_gamepedia/images/e/e9/Icon_elder_shortsword.png/revision/latest?cb=20230625205931", 
                        height: 60, width: 60,),
                        ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 2,),
                     DecoratedBox(
                      decoration:  const BoxDecoration(color: Colors.blue, shape: BoxShape.rectangle, borderRadius: BorderRadius.all(Radius.circular(16))),
                      child: Row(
                        children: [
                        const Expanded(child: Text("Bow Of The Grey One", 
                        style: TextStyle(fontSize: 20,
                        ),
                        ),
                        ),
                        Expanded(
                          child: Image.asset("assets/images/bow_grey_ones.png", 
                        height: 60, width: 60,),
                        ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
        ),
      );
  }
}