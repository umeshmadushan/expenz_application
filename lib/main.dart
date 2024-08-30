import 'package:expenz_application/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Expenz",
      theme: ThemeData(fontFamily: "Inter"),
      home: OnboardingScreen()
    );
  }
}
