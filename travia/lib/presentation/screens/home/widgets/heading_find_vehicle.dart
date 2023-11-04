import 'package:flutter/material.dart';
import 'package:travia/global/colors.dart';
import 'package:travia/global/dimensions.dart';

class HeadingFindVehicleWidget extends StatelessWidget {
  const HeadingFindVehicleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: GlobalDimensions.kHeight50,
      child: const Text(
        "Find your vehicle",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: GlobalColors.kWhite,
        ),
      ),
    );
  }
}
