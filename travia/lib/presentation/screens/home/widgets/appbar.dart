import 'package:flutter/material.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      leading: InkWell(
        onTap: () {},
        child: UnconstrainedBox(
          child: Image.asset(
            "images/moreicon.png",
            width: 50,
            height: 35,
          ),
        ),
      ),
      title: Align(
        alignment: Alignment.center,
        child: UnconstrainedBox(
          child: Image.asset(
            "images/homeheader.png",
            width: 85,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1570158268183-d296b2892211?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
          ),
        ),
      ],
    );
  }
}
