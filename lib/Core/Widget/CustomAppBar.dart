import 'package:checkoutapp/Core/utlis/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar customAppBar({required String txt, void Function()? onTap}) {
  return AppBar(
    leading: GestureDetector(
      onTap: onTap,
      child: Center(
          child: SvgPicture.asset(
        "asset/image/Arrow.svg",
      )),
    ),
    centerTitle: true,
    title: Text(
      txt,
      style: Styles.style25,
    ),
  );
}
