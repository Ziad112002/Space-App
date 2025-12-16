import 'package:flutter/material.dart';
import 'package:space/screens/home_screen.dart';
import 'package:space/screens/login_screen.dart';
import 'package:space/screens/planet_info_screen.dart';

void main() {
  runApp(const SpaceApp());
}

class SpaceApp extends StatelessWidget {
  const SpaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LoginScreen.routeName:(context)=>const  LoginScreen(),
        HomeScreen.routeName:(context)=> const HomeScreen(),
        PlanetInfoScreen.routeName:(context)=> const PlanetInfoScreen()
      },
      initialRoute: LoginScreen.routeName,
    );
  }
}

