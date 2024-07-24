import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Stack(
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
                    child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "https://i.ibb.co/Lg4jw6W/conan-logo2.png",
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 30),
                const Text(
                  "Steam Login",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 30,),
                const Text("Guest Login",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w700, 
                ),
                ),
              ],
           ),
          ),
        ),
      ],
    );
  }
}