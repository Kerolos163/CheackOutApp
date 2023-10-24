import 'package:checkoutapp/Core/Widget/CustomAppBar.dart';
import 'package:checkoutapp/Features/CheckOut/Presentation/View/Widget/PaymentDetailsBody.dart';
import 'package:checkoutapp/Features/CheckOut/Presentation/ViewModel/PaymentDetailsCubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PaymentDetailsCubit(),
      child: Scaffold(
        appBar: customAppBar(
          txt: "Payment Details",
          onTap: () {
            Navigator.pop(context);
          },
        ),
        body: const PaymentDetailsBody(),
      ),
    );
  }
}
