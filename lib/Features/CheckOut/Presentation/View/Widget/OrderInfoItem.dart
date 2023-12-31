import 'package:flutter/material.dart';

import '../../../../../Core/utlis/style.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({super.key, required this.txt, required this.price});
  final String txt;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          txt,
          style: Styles.style18,
        ),
        const Spacer(),
        Text(
          "\$$price",
          style: Styles.style18,
        )
      ],
    );
  }
}
