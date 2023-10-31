import 'package:checkoutapp/Core/utlis/endpoint.dart';
import 'package:checkoutapp/Features/CheckOut/Data/Models/ephemeral/ephemeral.key.mode.dart';

import 'DioHelper.dart';
import 'api_keys.dart';
import '../../Features/CheckOut/Data/Models/Payment_Intent_Input_Model/PaymentIntentInputModel.dart';
import '../../Features/CheckOut/Data/Models/payment_intent_model/payment_intent_model.dart';
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

  Future<Ephemeral> createEphemeral({required String customerID}) async {
    var response = await DioHelper.postData(
        url: ephemeralKeys,
        authorization: ApiKeys.secretkey,
        stripeService: "2023-10-16",
        data: {"customer": customerID});
    var ephemeralKey = Ephemeral.fromJson(response.data);
    return ephemeralKey;
  }
}
