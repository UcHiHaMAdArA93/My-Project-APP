import 'package:conan_app/src/screens/building_costs/presentation/building_costs.dart';
import 'package:conan_app/src/screens/recipes/presentation/recipes.dart';
import 'package:conan_app/src/screens/map/presentation/map.dart';
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
const Map(),
];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    bottomNavigationBar: NavigationBar(
    onDestinationSelected: (int index) {
      setState(() {
        currentIndex = index;
      });
    },
    indicatorColor: Colors.white,
    selectedIndex: currentIndex,
    destinations: const [
      NavigationDestination(icon: Icon(Icons.construction, color: Colors.black), label: "Recipes"),
      NavigationDestination(icon: Icon(Icons.account_balance, color: Colors.black), label: "Building Costs"),
      NavigationDestination(icon: Icon(Icons.map, color: Colors.black), label: "Interactive Map"),
    ],
    backgroundColor: Colors.lightBlue,
    ),
    body: Center(
      child: screens[currentIndex],
    ),
  );
  }
}