import 'package:checkoutapp/Core/Widget/CustomAppBar.dart';
import 'package:checkoutapp/Features/CheckOut/Presentation/View/Widget/PaymentDetailsBody.dart';
import 'package:flutter/material.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        txt: "Payment Details",
        onTap: () {
          Navigator.pop(context);
        },
      ),
      body: const PaymentDetailsBody(),
    );
  }
}
