import 'package:flutter/material.dart';
import 'package:travia/global/colors.dart';

class PageHeadingWidget extends StatelessWidget {
  final String text;
  final double top;
  final double bottom;
  const PageHeadingWidget(
      {super.key, required this.text, required this.top, required this.bottom});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: top,
        left: 22,
        bottom: bottom,
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: GlobalColors.kWhite,
          fontSize: 24,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
