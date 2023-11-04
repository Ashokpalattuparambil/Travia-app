import 'package:flutter/material.dart';
import 'package:travia/global/colors.dart';
import 'package:travia/global/page_heading.dart';
import 'package:travia/presentation/screens/post/widgets/posts.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PageHeadingWidget(
              text: "Posts",
              top: 45,
              bottom: 0,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: ((context, index) {
                return const PostLayoutWidget();
              }),
              itemCount: 5,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: GlobalColors.kWhite,
      ),
    );
  }
}
