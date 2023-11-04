import 'package:flutter/material.dart';
import 'package:travia/global/colors.dart';
import 'package:travia/presentation/screens/welcomescreen/welcomescreen1.dart';
import 'package:travia/presentation/screens/welcomescreen/welcomescreen2.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  List<Widget> welcomePages = [
    const WelcomeScreen1(),
    const WelcomeScreen2(),
  ];
  late final TabController _tabController;
  int index = 0;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: welcomePages.length,
      initialIndex: index,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          TabBarView(
            controller: _tabController,
            children: welcomePages,
          ),
          Positioned(
            bottom: 100,
            left: width / 2.4,
            child: TabPageSelector(
              controller: _tabController,
              color: GlobalColors.kWhite.withOpacity(.2),
              selectedColor: GlobalColors.kWhite,
            ),
          ),
        ],
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          _tabController.index != _tabController.length - 1
              ? _tabController.index++
              : Navigator.pushNamed(context, "/signup");
        },
        child: const Icon(
          Icons.skip_next,
          color: GlobalColors.kBlack,
        ),
      ),
    );
  }
}
