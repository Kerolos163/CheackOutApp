import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utlis/style.dart';

AppBar customAppBar({String? txt, void Function()? onTap}) {
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
      txt??"",
      style: Styles.style25,
    ),
  );
}
