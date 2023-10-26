import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Core/Widget/CustomAppBar.dart';
import '../ViewModel/PaymentDetailsCubit/cubit.dart';
import 'Widget/PaymentDetailsBody.dart';

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
