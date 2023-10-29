import 'package:checkoutapp/Core/utlis/DioHelper.dart';
import 'package:checkoutapp/Core/utlis/EndPoint.dart';
import 'package:checkoutapp/Core/utlis/api_keys.dart';
import 'package:checkoutapp/Features/CheckOut/Data/Models/Payment_Intent_Input_Model/PaymentIntentInputModel.dart';
import 'package:checkoutapp/Features/CheckOut/Data/Models/payment_intent_model/payment_intent_model.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeService {
  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await DioHelper.postData(
        url: paymentIntents,
        data: paymentIntentInputModel.tojson(),
        authorization: ApiKeys.secretkey);

    PaymentIntentModel paymentIntentModel =
        PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }

  Future initPaymentSheet({required String paymentIntentClientSecret}) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
      merchantDisplayName: "Kerolos Essa",
      paymentIntentClientSecret: paymentIntentClientSecret,
    ));
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    PaymentIntentModel paymentIntentModel =
        await createPaymentIntent(paymentIntentInputModel);
    await initPaymentSheet(
        paymentIntentClientSecret: paymentIntentModel.clientSecret!);
    await displayPaymentSheet();
  }
}
