import 'package:flutter/material.dart';
import 'package:travia/global/colors.dart';
import 'package:travia/presentation/screens/home/widgets/appbar.dart';
import 'package:travia/presentation/screens/home/widgets/custom_clipper.dart';
import 'package:travia/presentation/screens/home/widgets/driver-card-widget/driver_card_widget.dart';
import 'package:travia/presentation/screens/home/widgets/heading_find_vehicle.dart';
import 'package:travia/presentation/screens/home/widgets/home_searchfield_widget.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int initialIndex = 0;
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: HomeAppBarWidget(),
      ),
      body: Column(
        children: [
          ClipPath(
            clipper: CustomClipperWidget(),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              height: 125,
              color: GlobalColors.kWhite,
              child: const HomeSearchFieldWidget(),
            ),
          ),
          const HeadingFindVehicleWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    initialIndex = 0;
                    controller.animateToPage(initialIndex,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease);
                  });
                },
                child: Tab(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    alignment: Alignment.center,
                    width: 115,
                    height: 34,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: initialIndex == 0
                          ? GlobalColors.kWhite
                          : GlobalColors.kWhite.withOpacity(0.2),
                    ),
                    child: Text(
                      "Near",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: initialIndex == 0
                            ? GlobalColors.primaryColor
                            : GlobalColors.kWhite,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    initialIndex = 1;
                    controller.animateToPage(initialIndex,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease);
                  });
                },
                child: Tab(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    alignment: Alignment.center,
                    width: 115,
                    height: 34,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: initialIndex == 1
                          ? GlobalColors.kWhite
                          : GlobalColors.kWhite.withOpacity(0.2),
                    ),
                    child: Text(
                      "All",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: initialIndex == 1
                            ? GlobalColors.primaryColor
                            : GlobalColors.kWhite,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Flexible(
            child: PageView(
              controller: controller,
              onPageChanged: ((changedIndex) {
                setState(
                  () {
                    initialIndex = changedIndex;
                  },
                );
              }),
              children: [
                GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1 / 1.12,
                    mainAxisSpacing: 12,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: ((context, index) {
                    return const DriverCard();
                  }),
                  itemCount: 12,
                ),
                GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1 / 1.12,
                    mainAxisSpacing: 12,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: ((context, index) {
                    return const DriverCard();
                  }),
                  itemCount: 12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
