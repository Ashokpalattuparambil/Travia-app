import 'package:flutter/material.dart';
import 'package:travia/global/colors.dart';

class PaymentHistoryWidget extends StatelessWidget {
  const PaymentHistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 4.3,
        horizontal: 14,
      ),
      child: Container(
        width: size.width,
        height: 102,
        decoration: BoxDecoration(
          color: GlobalColors.kWhite,
          borderRadius: BorderRadius.circular(
            30,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 27, bottom: 9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "paid",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: const BoxDecoration(
                      color: GlobalColors.successColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.done,
                      color: GlobalColors.kWhite,
                      size: 14,
                    ),
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.currency_rupee_outlined,
                        color: GlobalColors.primaryColor,
                        size: 25,
                      ),
                      Text(
                        "400",
                        style: TextStyle(
                            color: GlobalColors.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ],
                  ),
                  Text(
                    "to",
                    style: TextStyle(
                      color: GlobalColors.kBlack.withOpacity(0.7),
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  const Text(
                    "Sam",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1622426141446-5148b6fa1115?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 78),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Text(
                        "send from",
                        style: TextStyle(
                          color: GlobalColors.kBlack.withOpacity(0.6),
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      const Icon(Icons.circle_outlined),
                    ],
                  ),
                  const Text(
                    "6:22 PM",
                    style: TextStyle(
                      color: GlobalColors.kGrey,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                  const Text(
                    "2 Sep 2022",
                    style: TextStyle(
                      color: GlobalColors.kGrey,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
