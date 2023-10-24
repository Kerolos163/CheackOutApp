import 'package:flutter/material.dart';

import '../../../../../Core/utlis/style.dart';

class TotalPriceWidget extends StatelessWidget {
  const TotalPriceWidget({super.key, required this.txt, required this.price});
  final String txt;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          txt,
          style: Styles.style24,
        ),
        const Spacer(),
        Text(
          "\$$price",
          style: Styles.style24,
        ),
      ],
    );
  }
}
