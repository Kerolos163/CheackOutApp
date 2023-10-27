import '../../../../../Core/Widget/CustomButton.dart';
import 'PaymentmethodsListView.dart';
import 'package:flutter/material.dart';

class PaymentBottomSheet extends StatelessWidget {
  const PaymentBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 10,
          ),
          PaymentmethodsListView(),
          SizedBox(
            height: 16,
          ),
          CustomButton(txt: "Continue")
        ],
      ),
    );
  }
}
