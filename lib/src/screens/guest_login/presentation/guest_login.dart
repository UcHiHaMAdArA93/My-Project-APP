import 'package:conan_app/src/screens/building_costs/presentation/building_costs.dart';
import 'package:conan_app/src/screens/recipes/presentation/recipes.dart';
import 'package:flutter/material.dart';

class GuestLogin extends StatefulWidget{
  const GuestLogin({super.key});
  
  @override
  State<GuestLogin> createState() =>  _GuestLogin();
  
}

class _GuestLogin extends State<GuestLogin> {
int currentIndex = 0;

final List<Widget> screens =[
const Recipes(),
const BuildingCosts(),
];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    bottomNavigationBar: BottomNavigationBar(
    currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
    items:  [
      BottomNavigationBarItem(icon: Icon(Icons.construction, color: currentIndex == 0 ? Colors.white : Colors.grey), label: "Recipes"),
      BottomNavigationBarItem(icon: Icon(Icons.account_balance, color: currentIndex == 1 ? Colors.white : Colors.grey), label: "Building Costs"),
    ],
    backgroundColor: const Color(0xff603813),
    ),
    body: Center(
      child: screens[currentIndex],
    ),
  );
  }
}