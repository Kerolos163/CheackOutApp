import 'CreditCardWidget.dart';

import '../../../../../Core/utlis/style.dart';
import 'ThankYouPaymentItem.dart';
import 'TotalPriceWidget.dart';
import 'package:flutter/material.dart';

class ThankYouCart extends StatelessWidget {
  const ThankYouCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffd9d9d9),
      ),
      child: const Padding(
        padding: EdgeInsets.only(top: 66, right: 22, left: 22),
        child: Column(
          children: [
            Text(
              "Thank you!",
              style: Styles.style25,
            ),
            Text(
              "Your transaction was successful",
              style: Styles.style20,
            ),
            SizedBox(height: 42),
            ThankYouPaymentItem(
              txt1: "Date",
              txt2: "01/24/2023",
            ),
            SizedBox(height: 20),
            ThankYouPaymentItem(
              txt1: "Time",
              txt2: "10:15 AM",
            ),
            SizedBox(height: 20),
            ThankYouPaymentItem(
              txt1: "To",
              txt2: "Sam Louis",
            ),
            Divider(
              height: 60,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            TotalPriceWidget(txt: "Total", price: 50.97),
            SizedBox(height: 30),
            CreditCardWidget()
          ],
        ),
      ),
    );
  }
}

