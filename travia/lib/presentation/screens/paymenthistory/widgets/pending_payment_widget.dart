import 'package:flutter/material.dart';
import 'package:travia/global/colors.dart';

class PendingPaymentWidget extends StatelessWidget {
  const PendingPaymentWidget({super.key});

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
        height: 52,
        decoration: BoxDecoration(
          color: GlobalColors.kWhite,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1551825687-f9de1603ed8b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80"),
              radius: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.currency_rupee_outlined,
                  color: GlobalColors.primaryColor,
                  size: 15,
                ),
                Text(
                  "400",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: GlobalColors.primaryColor,
                  ),
                ),
              ],
            ),
            Text(
              "request pending from",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: GlobalColors.kRed.withOpacity(0.8),
              ),
            ),
            const Icon(Icons.circle_outlined),
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1622426141446-5148b6fa1115?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
              radius: 15,
            ),
          ],
        ),
      ),
    );
  }
}
