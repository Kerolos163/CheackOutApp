import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem(
      {super.key, required this.img, this.isActive = false});
  final String img;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      width: 103,
      height: 62,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border:
            Border.all(color: isActive ? const Color(0xff34A853) : Colors.grey),
        boxShadow: isActive
            ? const [
                BoxShadow(
                  color: Color(0xff34A853),
                  spreadRadius: .05,
                  blurRadius: 5,
                  offset: Offset(0, 0),
                ),
              ]
            : null,
      ),
      child: SvgPicture.asset(
        img,
        width: 100,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
