import 'package:flutter/material.dart';
import 'package:game_greedy/pages/Home/homepage.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      showPerformanceOverlay: false,
      debugShowCheckedModeBanner: false,
      title: 'Game Greedy',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: "pop",
      ),
      home: Homepage(),
    );
  }
}

