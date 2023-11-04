import 'package:flutter/material.dart';
import 'package:travia/global/colors.dart';

class DriverCard extends StatelessWidget {
  const DriverCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: GlobalColors.kWhite,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 77,
                          height: 53,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1593035013811-2db9b3c36980?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80"),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const Text(
                          "Mike",
                          style: TextStyle(
                            color: GlobalColors.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          Icons.location_history,
                        ),
                        Text(
                          "Indira nagar",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2,
                    horizontal: 7,
                  ),
                  decoration: BoxDecoration(
                    color: GlobalColors.primaryColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text(
                    "Available",
                    style: TextStyle(
                      color: GlobalColors.kWhite,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.star_border,
                      color: GlobalColors.starRatingColor,
                      size: 19,
                    ),
                    Icon(
                      Icons.star_border,
                      color: GlobalColors.starRatingColor,
                      size: 19,
                    ),
                    Icon(
                      Icons.star_border,
                      color: GlobalColors.starRatingColor,
                      size: 19,
                    ),
                    Icon(
                      Icons.star_border,
                      color: GlobalColors.starRatingColor,
                      size: 19,
                    ),
                    Icon(
                      Icons.star_border,
                      color: GlobalColors.starRatingColor,
                      size: 19,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 70,
          bottom: 0,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: GlobalColors.primaryColor,
                shape: BoxShape.circle,
                border: Border.all(color: GlobalColors.kWhite, width: 3),
                boxShadow: const [
                  BoxShadow(),
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.currency_rupee,
                  color: GlobalColors.kWhite,
                  size: 16,
                ),
                Text(
                  "100",
                  style: TextStyle(
                      color: GlobalColors.kWhite, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 70,
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
                color: GlobalColors.kWhite, shape: BoxShape.circle),
            child: Container(
              width: 32,
              height: 32,
              decoration: const BoxDecoration(
                  color: GlobalColors.primaryColor,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.car_rental_outlined,
                    color: GlobalColors.kWhite,
                    size: 25,
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
