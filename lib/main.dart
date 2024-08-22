
import 'package:conan_app/src/screens/login/presentation/main_login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: HomeScreen()
            ),
          ),
      ),
      );
  }
}




//themes - config folder
// nav bar - widget folder