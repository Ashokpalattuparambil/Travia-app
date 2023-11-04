import 'package:flutter/material.dart';
import 'package:travia/global/colors.dart';
import 'package:travia/presentation/screens/flat/flat.dart';

import 'package:travia/presentation/screens/home/widgets/home.dart';
import 'package:travia/presentation/screens/paymenthistory/payment_history.dart';
import 'package:travia/presentation/screens/post/post.dart';

class NavigationWidget extends StatefulWidget {
  const NavigationWidget({super.key});

  @override
  State<NavigationWidget> createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget> {
  int pageIndex = 0;
  List<Widget> screens = [
    const HomeWidget(),
    const PaymentHistory(),
    const PostWidget(),
    const FlatWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[pageIndex],
      bottomNavigationBar: BottomAppBar(
        notchMargin: 0,
        elevation: 0,
        clipBehavior: Clip.none,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          child: Container(
            height: 72,
            decoration: BoxDecoration(
              color: GlobalColors.kWhite.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                  icon: pageIndex == 0
                      ? Icon(
                          Icons.home_filled,
                          color: GlobalColors.kWhite.withOpacity(0.8),
                        )
                      : Icon(
                          Icons.home_filled,
                          color: GlobalColors.kWhite.withOpacity(0.3),
                        ),
                ),
                IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {
                    setState(() {
                      pageIndex = 1;
                    });
                  },
                  icon: pageIndex == 1
                      ? Icon(
                          Icons.money_outlined,
                          color: GlobalColors.kWhite.withOpacity(0.8),
                        )
                      : Icon(
                          Icons.money_outlined,
                          color: GlobalColors.kWhite.withOpacity(0.3),
                        ),
                ),
                IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        pageIndex = 2;
                      });
                    },
                    icon: pageIndex == 2
                        ? Icon(
                            Icons.post_add,
                            color: GlobalColors.kWhite.withOpacity(0.8),
                          )
                        : Icon(
                            Icons.post_add,
                            color: GlobalColors.kWhite.withOpacity(0.3),
                          )),
                IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        pageIndex = 3;
                      });
                    },
                    icon: pageIndex == 3
                        ? Icon(
                            Icons.factory_outlined,
                            color: GlobalColors.kWhite.withOpacity(0.8),
                          )
                        : Icon(
                            Icons.factory_outlined,
                            color: GlobalColors.kWhite.withOpacity(0.3),
                          )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
