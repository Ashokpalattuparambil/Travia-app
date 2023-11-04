import 'package:flutter/material.dart';
import 'package:travia/global/colors.dart';

class TextInputFieldWidget extends StatelessWidget {
  final String hintText;
  const TextInputFieldWidget({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          filled: true,
          fillColor: GlobalColors.kWhite.withOpacity(0.1),
          hintText: hintText,
          hintStyle: TextStyle(
            color: GlobalColors.kWhite.withOpacity(0.4),
          ),
        ),
        cursorColor: GlobalColors.kWhite,
      ),
    );
  }
}
