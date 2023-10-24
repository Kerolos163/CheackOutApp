import 'package:checkoutapp/Features/CheckOut/Presentation/View/Widget/PaymentmethodsListView.dart';
import 'package:flutter/material.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(
            height: 62,
            child: PaymentmethodsListView(),
          ),
        ],
      ),
    );
  }
}
