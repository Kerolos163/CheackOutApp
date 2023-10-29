import 'package:flutter/material.dart';

import '../utlis/style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.txt, this.onTap, this.isLoading = false});
  final String txt;
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 65,
        decoration: BoxDecoration(
          color: const Color(0xff34a853),
          borderRadius: BorderRadius.circular(15),
        ),
        alignment: Alignment.center,
        child: isLoading
            ? const CircularProgressIndicator(
                color: Colors.white,
              )
            : Text(
                txt,
                style: Styles.style22,
              ),
      ),
    );
  }
}
