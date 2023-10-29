import 'package:checkoutapp/Core/utlis/DioHelper.dart';
import 'package:checkoutapp/Core/utlis/api_keys.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import 'Features/CheckOut/Presentation/ViewModel/PaymentDetailsCubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Features/CheckOut/Presentation/View/MyCardView.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  Stripe.publishableKey = ApiKeys.publishkey;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PaymentDetailsCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyCardView(),
      ),
    );
  }
}
