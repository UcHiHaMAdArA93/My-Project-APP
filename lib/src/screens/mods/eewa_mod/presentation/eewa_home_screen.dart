import 'package:conan_app/src/screens/mods/eewa_mod/presentation/eewa_introduction_screen.dart';
import 'package:flutter/material.dart';

class EewaHomeScreen extends StatelessWidget {
  const EewaHomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EEWA Guide"),
        backgroundColor: Colors.lightBlue,
      ),
      body:  Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-0.30, -0.95),
                  end: Alignment(0.3, 0.95),
                  colors: [Color(0xFF4FACFE), Color(0xFF00F2FE)]
                ),
              ),
            )
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(onPressed: (){
                  Navigator.push(
                   context,
                  MaterialPageRoute(builder: (context) => const EewaIntroductionScreen()),
                  );
                },
                style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      elevation: 10,
                      shadowColor: Colors.black,
                    ),
                child: const Text("Introduction",
                style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w700,
                      ),
                ),
                ),
              ],
            ),
          )
        ]
      )
    );
  }
}