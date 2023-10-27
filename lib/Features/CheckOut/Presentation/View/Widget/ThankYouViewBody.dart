import 'package:flutter/material.dart';

import 'CustomCheckIcon.dart';
import 'CustomDashedLine.dart';
import 'ThankYouCart.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            const ThankYouCart(),
            circleWidget(context, right: -20),
            circleWidget(context, left: -20),
            Positioned(
              top: MediaQuery.of(context).size.height / 1.5 + 20,
              left: 20 + 5,
              right: 20 + 5,
              child: const CustomDashedLine(),
            ),
            const CustomCheckIcon()
          ],
        ),
      ),
    );
  }

  Positioned circleWidget(BuildContext context, {double? right, double? left}) {
    return Positioned(
      right: right,
      left: left,
      top: MediaQuery.of(context).size.height / 1.5,
      child: const CircleAvatar(
        backgroundColor: Colors.white,
      ),
    );
  }
}
