import '../../../../Core/Widget/CustomAppBar.dart';

import 'Widget/MyCardViewBody.dart';
import 'package:flutter/material.dart';

class MyCardView extends StatelessWidget {
  const MyCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(txt: "My Cart"),
      body: const MyCardViewBody(),
    );
  }
}
