import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travia/global/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushNamed(context, "/welcomescreen"),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Image.asset(
                "images/logo.png",
                width: 70,
                height: 70,
              ),
            ),
            UnconstrainedBox(
              child: SizedBox(
                width: 60,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: LinearProgressIndicator(
                    minHeight: 8,
                    backgroundColor: GlobalColors.kWhite.withOpacity(0.1),
                    valueColor: const AlwaysStoppedAnimation<Color>(
                        GlobalColors.kWhite),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
