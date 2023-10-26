import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../ViewModel/PaymentDetailsCubit/cubit.dart';
import '../../ViewModel/PaymentDetailsCubit/state.dart';
import 'PaymentMethodItem.dart';

class PaymentmethodsListView extends StatelessWidget {
  const PaymentmethodsListView({super.key});
  final List paymentImage = const [
    'asset/image/TopEconBank.svg',
    'asset/image/PayPal.svg',
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentDetailsCubit, PaymentDetailsState>(
      builder: (context, state) {
        return SizedBox(
          height: 62,
          child: ListView.separated(
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                PaymentDetailsCubit.get(context).changeMethod(newMethod: index);
              },
              child: PaymentMethodItem(
                img: paymentImage[index],
                isActive:
                    index == PaymentDetailsCubit.get(context).selectedMethod,
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(
              width: 20,
            ),
            itemCount: paymentImage.length,
            scrollDirection: Axis.horizontal,
          ),
        );
      },
    );
  }
}
