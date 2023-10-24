import '../../../../Core/utlis/Style.dart';
import 'Widget/MyCardViewBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCardView extends StatelessWidget {
  const MyCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
            child: SvgPicture.asset(
          "asset/image/Arrow.svg",
        )),
        centerTitle: true,
        title: const Text(
          "My Cart",
          style: Styles.style25,
        ),
      ),
      body: const MyCardViewBody(),
    );
  }
}
