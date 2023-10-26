import '../../../../../Core/utlis/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Row(
        children: [
          SvgPicture.asset("asset/image/credit_card.svg"),
          const SizedBox(width: 22),
          const Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Credit Card",
                style: Styles.style20,
              ),
              Text(
                "Mastercard **78",
                style: Styles.style18,
              ),
            ],
          )
        ],
      ),
    );
  }
}
