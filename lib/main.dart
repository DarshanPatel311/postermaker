import 'package:flutter/material.dart';
import 'package:postermaker/Screens/Home%20Screen/HomeScreen.dart';

import 'Screens/EditingScreen/EditScreen.dart';
import 'Screens/SplashScrenn.dart';
import 'Screens/ViewScreen/ViewScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    // initialRoute: 'home',
    routes: {
      '/':(context) => SplashScren(),
      'home':(context) => HomeScreen(),
      'Edit':(context) => EditScreen(),
      'View':(context) => ViewScreen(),
    },
    );
  }
}
