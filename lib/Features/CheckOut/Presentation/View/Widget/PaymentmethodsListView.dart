import 'package:checkoutapp/Features/CheckOut/Presentation/View/Widget/PaymentMethodItem.dart';
import 'package:flutter/material.dart';

class PaymentmethodsListView extends StatelessWidget {
  const PaymentmethodsListView({super.key});
  final List paymentImage = const [
    'asset/image/TopEconBank.svg',
    'asset/image/PayPal.svg',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) =>
          PaymentMethodItem(img: paymentImage[index]),
      separatorBuilder: (context, index) => const SizedBox(
        width: 20,
      ),
      itemCount: paymentImage.length,
      scrollDirection: Axis.horizontal,
    );
  }
}