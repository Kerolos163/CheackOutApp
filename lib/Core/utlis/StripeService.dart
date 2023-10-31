import 'endpoint.dart';
import '../../Features/CheckOut/Data/Models/ephemeral/ephemeral.key.mode.dart';
import '../../Features/CheckOut/Data/Models/initpaymentSheetInputModel/init_payment_sheet_input_model.dart';

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

  Future initPaymentSheet(
      {required InitpaymentSheetInputModel initpaymentSheetInputModel}) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
            merchantDisplayName: "Kerolos Essa",
            paymentIntentClientSecret:
                initpaymentSheetInputModel.paymentIntentClientSecret,
            customerEphemeralKeySecret:
                initpaymentSheetInputModel.customerEphemeralKeySecret,
            customerId: initpaymentSheetInputModel.customerId));
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    PaymentIntentModel paymentIntentModel =
        await createPaymentIntent(paymentIntentInputModel);
    Ephemeral ephemeralKeyModel =
        await createEphemeral(customerID: paymentIntentInputModel.customerId);
    await initPaymentSheet(
        initpaymentSheetInputModel: InitpaymentSheetInputModel(
      customerId: paymentIntentInputModel.customerId,
      paymentIntentClientSecret: paymentIntentModel.clientSecret!,
      customerEphemeralKeySecret: ephemeralKeyModel.secret!,
    ));
    await displayPaymentSheet();
  }

  Future<Ephemeral> createEphemeral({required String customerID}) async {
    var response = await DioHelper.postData(
        url: ephemeralKeys,
        authorization: ApiKeys.secretkey,
        stripeService: "2023-10-16",
        data: {"customer": customerID});
    var ephemeralKeyModel = Ephemeral.fromJson(response.data);
    return ephemeralKeyModel;
  }
}
