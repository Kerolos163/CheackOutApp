import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../Core/utlis/style.dart';

class BarCodeRow extends StatelessWidget {
  const BarCodeRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset("asset/image/barCode.svg"),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xff34A853), width: 2),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 14),
          child: Text(
            "PAID",
            style: Styles.style24.copyWith(
              color: const Color(0xff34A853),
            ),
          ),
        )
      ],
    );
  }
}
