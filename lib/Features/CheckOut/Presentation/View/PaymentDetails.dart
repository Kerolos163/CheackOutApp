import 'package:flutter/material.dart';

import '../../../../Core/Widget/CustomAppBar.dart';

import 'Widget/PaymentDetailsBody.dart';

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
