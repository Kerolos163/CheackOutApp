import 'package:flutter/material.dart';

import '../../../../../Core/utlis/style.dart';
import 'bar_code_row.dart';
import 'CreditCardWidget.dart';
import 'ThankYouPaymentItem.dart';
import 'TotalPriceWidget.dart';

class ThankYouCart extends StatelessWidget {
  const ThankYouCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffEDEDED),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 66, right: 22, left: 22),
        child: Column(
          children: [
            const Text(
              "Thank you!",
              style: Styles.style25,
            ),
            const Text(
              "Your transaction was successful",
              style: Styles.style20,
            ),
            const SizedBox(height: 42),
            const ThankYouPaymentItem(
              txt1: "Date",
              txt2: "01/24/2023",
            ),
            const SizedBox(height: 20),
            const ThankYouPaymentItem(
              txt1: "Time",
              txt2: "10:15 AM",
            ),
            const SizedBox(height: 20),
            const ThankYouPaymentItem(
              txt1: "To",
              txt2: "Sam Louis",
            ),
            const Divider(
              height: 60,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            const TotalPriceWidget(txt: "Total", price: 50.97),
            const SizedBox(height: 30),
            const CreditCardWidget(),
            const Spacer(),
            const BarCodeRow(),
            SizedBox(
              height: (MediaQuery.of(context).size.height) -
                  ((MediaQuery.of(context).size.height / 1.5) + 240),
            )
          ],
        ),
      ),
    );
  }
}

