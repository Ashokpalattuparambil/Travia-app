import 'package:flutter/material.dart';
import 'package:travia/global/page_heading.dart';
import 'package:travia/presentation/screens/paymenthistory/widgets/payment_history_widget.dart';
import 'package:travia/presentation/screens/paymenthistory/widgets/pending_payment_widget.dart';

class PaymentHistory extends StatelessWidget {
  const PaymentHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PageHeadingWidget(
              text: "Pending payments",
              top: 30,
              bottom: 26,
            ),
            SizedBox(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: ((context, index) {
                  return const PendingPaymentWidget();
                }),
                itemCount: 2,
              ),
            ),
            const PageHeadingWidget(
              text: "Payment history",
              top: 30,
              bottom: 26,
            ),
            SizedBox(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: ((context, index) {
                  return const PaymentHistoryWidget();
                }),
                itemCount: 7,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
