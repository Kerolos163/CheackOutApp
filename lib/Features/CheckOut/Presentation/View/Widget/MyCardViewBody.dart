import 'package:flutter/material.dart';

import 'OrderInfoItem.dart';
import 'TotalPriceWidget.dart';

class MyCardViewBody extends StatelessWidget {
  const MyCardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Image.asset("asset/image/PasketImage.png"),
          const SizedBox(
            height: 20,
          ),
          const OrderInfoItem(txt: "Order Subtotal", price: 42.97),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(txt: "Discount", price: 0),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(txt: "Shipping", price: 0),
          const SizedBox(
            height: 17,
          ),
          const Divider(
            thickness: 3,
            color: Color(0xffC7C7C7),
          ),
          const SizedBox(
            height: 15,
          ),
          const TotalPriceWidget(txt: "Total", price: 50.97)
        ],
      ),
    );
  }
}
