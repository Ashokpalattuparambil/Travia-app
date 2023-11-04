import 'package:flutter/material.dart';
import 'package:travia/global/colors.dart';

class TextButtonWidget extends StatelessWidget {
  final String text;
  const TextButtonWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          color: GlobalColors.kWhite.withOpacity(0.8),
        ),
      ),
    );
  }
}
