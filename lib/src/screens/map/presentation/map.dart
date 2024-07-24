import 'package:flutter/material.dart';

class Map extends StatelessWidget {
  const Map({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 35,
          backgroundColor: Colors.lightBlue,
          title: const Text("Interactive Map"),
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
          ],
          ),
        ),
    );
      
  }
}