import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Core/Widget/CustomButton.dart';
import '../../../../../Core/utlis/api_keys.dart';
import '../../../Data/Models/Payment_Intent_Input_Model/PaymentIntentInputModel.dart';
import '../../ViewModel/StribeCubit/stribe_cubit.dart';
import '../../ViewModel/StribeCubit/stribe_state.dart';
import '../ThankYou.dart';
import 'PaymentmethodsListView.dart';

class PaymentBottomSheet extends StatelessWidget {
  const PaymentBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 10,
          ),
          const PaymentmethodsListView(),
          const SizedBox(
            height: 16,
          ),
          BlocConsumer<StribeCubit, StribeState>(
            listener: (context, state) {
              if (state is StribeSuccess) {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const ThankYouView(),
                ));
              } else if (state is StribeFailure) {
                log(state.error);
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.error),
                  ),
                );
              }
            },
            builder: (context, state) {
              return CustomButton(
                txt: "Continue",
                isLoading: state is StribeLoading ? true : false,
                onTap: () {
                  PaymentIntentInputModel paymentIntentInputModel =
                      PaymentIntentInputModel(
                    amount: "10",
                    currency: "USD",
                    customerId:
                        customerId, //come from Account Object Should Create when Create Account
                  );
                  StribeCubit.get(context).makePayment(
                      paymentIntentInputModel: paymentIntentInputModel);
                },
              );
            },
          )
        ],
      ),
    );
  }
}
