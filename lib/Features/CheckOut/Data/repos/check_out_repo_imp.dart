import 'package:dartz/dartz.dart';

import '../../../../Core/errors/failure.dart';
import '../../../../Core/utlis/StripeService.dart';
import '../Models/Payment_Intent_Input_Model/PaymentIntentInputModel.dart';
import 'check_out_repo.dart';

class CheckOutRepoImp extends CheckOutRepo {
  StripeService stripe = StripeService();
  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      await stripe.makePayment(
          paymentIntentInputModel: paymentIntentInputModel);
      return right(null);
    } catch (e) {
      return left(ServerFailure(errmessage: e.toString()));
    }
  }
}
