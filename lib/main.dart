import 'package:expenz_application/screens/onboarding_screen.dart';
import 'package:expenz_application/services/user_service.dart';
import 'package:expenz_application/widgets/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: UserService.CheckUser(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else {
          bool hasUserName = snapshot.data ?? false;
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Expenz",
            theme: ThemeData(fontFamily: "Inter"),
            home: Wrapper(showMainScreen: hasUserName),
          );
        }
      },
    );
  }
}
