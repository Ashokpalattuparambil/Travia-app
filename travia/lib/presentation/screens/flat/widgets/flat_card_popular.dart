import 'package:flutter/material.dart';
import 'package:travia/global/colors.dart';

class FlatPopularCard extends StatelessWidget {
  const FlatPopularCard({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            right: 10,
            left: 14,
          ),
          child: UnconstrainedBox(
            child: Container(
              width: size.width / 1.8,
              height: size.width - 100,
              decoration: const BoxDecoration(
                color: GlobalColors.kWhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: size.width / 2.1,
                    height: size.width / 2.5,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1586023492125-27b2c045efd7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=958&q=80"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        )),
                  ),
                  Container(
                    width: size.width / 2.1,
                    height: 40,
                    decoration: BoxDecoration(
                      color: GlobalColors.ratingColor,
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                  Column(
                    children: const [
                      Icon(Icons.gps_fixed),
                      Text(
                        "jayanagar",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
