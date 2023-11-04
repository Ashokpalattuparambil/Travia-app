import 'package:flutter/material.dart';
import 'package:travia/global/page_heading.dart';
import 'package:travia/presentation/screens/flat/widgets/flat_card_all.dart';
import 'package:travia/presentation/screens/flat/widgets/flat_card_popular.dart';
import 'package:travia/presentation/screens/flat/widgets/flat_category_heading_widget.dart';

class FlatWidget extends StatelessWidget {
  const FlatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ListView(
      children: [
        const PageHeadingWidget(
          text: "Find the right place to stay",
          top: 50,
          bottom: 16,
        ),
        const Align(
          alignment: Alignment.topLeft,
          child: UnconstrainedBox(
            child: FlatCategoryHeadingWidget(
              heading: "Popular",
            ),
          ),
        ),
        SizedBox(
          height: size.width - 70,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: ((context, index) {
              return const FlatPopularCard();
            }),
            itemCount: 10,
          ),
        ),
        const Align(
          alignment: Alignment.topLeft,
          child: UnconstrainedBox(
            child: FlatCategoryHeadingWidget(
              heading: "All",
            ),
          ),
        ),
        SizedBox(
          height: size.width - 130,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: ((context, index) {
              return const FlatCardAll();
            }),
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
