import 'package:checkoutapp/Core/utlis/style.dart';
import 'package:flutter/material.dart';

class ThankYouPaymentItem extends StatelessWidget {
  const ThankYouPaymentItem(
      {super.key, required this.txt1, required this.txt2});
  final String txt1, txt2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            txt1,
            style: Styles.style18,
          ),
          Text(
            txt2,
            style: Styles.style18.copyWith(
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
