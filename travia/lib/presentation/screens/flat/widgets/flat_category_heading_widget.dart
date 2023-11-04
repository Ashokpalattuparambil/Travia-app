import 'package:flutter/material.dart';
import 'package:travia/global/colors.dart';

class FlatCategoryHeadingWidget extends StatelessWidget {
  final String heading;
  const FlatCategoryHeadingWidget({
    Key? key,
    required this.heading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        left: 22,
        bottom: 22,
      ),
      child: Container(
        alignment: Alignment.center,
        width: 150,
        height: 40,
        decoration: BoxDecoration(
          color: GlobalColors.kWhite,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          heading,
          style: const TextStyle(
            color: GlobalColors.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
