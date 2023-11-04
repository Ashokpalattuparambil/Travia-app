import 'package:flutter/material.dart';
import 'package:travia/global/colors.dart';

class HomeSearchFieldWidget extends StatelessWidget {
  const HomeSearchFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      cursorColor: GlobalColors.kGrey,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none),
        filled: true,
        fillColor: GlobalColors.primaryColor.withOpacity(0.1),
        hintText: "search",
        suffixIcon: IconButton(
          onPressed: (() {}),
          icon: const Icon(
            Icons.search,
            color: GlobalColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
