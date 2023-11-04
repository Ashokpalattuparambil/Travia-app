import 'package:flutter/material.dart';
import 'package:travia/global/colors.dart';
import 'package:travia/global/dimensions.dart';

class FlatCardAll extends StatelessWidget {
  const FlatCardAll({super.key});

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
              height: size.width - 160,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: (size.width / 10) - 6,
                            height: size.width / 6 - 10,
                            decoration: BoxDecoration(
                              color: GlobalColors.primaryColor,
                              borderRadius: BorderRadius.circular(9),
                            ),
                          ),
                          const SizedBox(
                            height: GlobalDimensions.kHeight,
                          ),
                          Container(
                            width: (size.width / 10) - 6,
                            height: size.width / 6 - 10,
                            decoration: BoxDecoration(
                              color: GlobalColors.ratingColor,
                              borderRadius: BorderRadius.circular(9),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: size.width / 3,
                        height: size.width / 3,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1600121848594-d8644e57abab?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(14),
                            bottomRight: Radius.circular(14),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Column(
                      children: const [
                        Icon(Icons.gps_fixed),
                        Text(
                          "jayanagar",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
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
