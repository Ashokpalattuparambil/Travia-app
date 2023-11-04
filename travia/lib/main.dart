import 'package:flutter/material.dart';
import 'package:travia/global/colors.dart';
import 'package:travia/presentation/screens/navigationpage/navigation.dart';
import 'package:travia/presentation/screens/signup%20or%20login/signup.dart';
import 'package:travia/presentation/screens/splashscreen/splashscreen.dart';
import 'package:travia/presentation/screens/welcomescreen/welcomescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travia',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalColors.primaryColor,
        appBarTheme: const AppBarTheme(backgroundColor: GlobalColors.kWhite),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(GlobalColors.kWhite),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        iconTheme: const IconThemeData(color: GlobalColors.primaryColor),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        "/welcomescreen": (context) => const WelcomeScreen(),
        "/signup": (context) => const Signup(),
        "/navigationwidget": (context) => const NavigationWidget(),
      },
    );
  }
}
