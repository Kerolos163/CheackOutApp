import 'package:checkoutapp/Features/CheckOut/Presentation/View/Widget/OrderInfoItem.dart';
import 'package:flutter/material.dart';

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
        ],
      ),
    );
  }
}
