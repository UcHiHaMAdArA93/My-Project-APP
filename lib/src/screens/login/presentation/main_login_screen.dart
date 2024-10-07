import 'package:conan_app/src/screens/guest_login/presentation/guest_login.dart';
import 'package:conan_app/src/screens/mods/presentation/mods_list.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/conan_logo2.png",
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 30),
                  OutlinedButton(
                   onPressed:() {
                     Navigator.push(
                   context,
                  MaterialPageRoute(builder: (context) => const GuestLogin()),
                  );
                   },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      elevation: 10,
                      shadowColor: Colors.black,
                    ),
                    child: const Text(
                      "Guest Login",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  OutlinedButton(
                    onPressed: (){
                      Navigator.push(
                   context,
                  MaterialPageRoute(builder: (context) => const ModsList()),
                  );
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white, 
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      elevation: 10,
                      shadowColor: Colors.black
                    ),
                    child: const Text(
                      "Mods Guides",
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
            ),
          ),
        ],
      ),
    );
  }
}

      