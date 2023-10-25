import 'package:checkoutapp/Core/Widget/CustomButton.dart';
import 'package:checkoutapp/Features/CheckOut/Presentation/View/ThankYou.dart';

import 'CustomCreditCard.dart';
import 'PaymentmethodsListView.dart';
import 'package:flutter/material.dart';

class PaymentDetailsBody extends StatefulWidget {
  const PaymentDetailsBody({super.key});

  @override
  State<PaymentDetailsBody> createState() => _PaymentDetailsBodyState();
}

class _PaymentDetailsBodyState extends State<PaymentDetailsBody> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: PaymentmethodsListView(),
          ),
          SliverToBoxAdapter(
            child: CustomCreditCard(
                formKey: formKey, autovalidateMode: autovalidateMode),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomButton(
                txt: "Pay",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ThankYouView(),
                  ));
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
