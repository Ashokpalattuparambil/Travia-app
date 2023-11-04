import 'package:flutter/material.dart';
import 'package:travia/global/colors.dart';
import 'package:travia/global/dimensions.dart';

class SocialMediaLoginButtonWidget extends StatelessWidget {
  final Color color;
  final Widget icon;
  final String text;
  const SocialMediaLoginButtonWidget(
      {super.key, required this.color, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/navigationwidget");
      },
      child: Container(
        width: 300,
        height: 40,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: GlobalDimensions.kWidth20,
            ),
            icon,
            const SizedBox(
              width: GlobalDimensions.kWidth40,
            ),
            Text(
              text,
              style: const TextStyle(color: GlobalColors.kWhite),
            ),
          ],
        ),
      ),
    );
  }
}
