import 'package:checkoutapp/Core/errors/failure.dart';
import 'package:checkoutapp/Core/utlis/StripeService.dart';
import 'package:checkoutapp/Features/CheckOut/Data/Models/Payment_Intent_Input_Model/PaymentIntentInputModel.dart';
import 'package:checkoutapp/Features/CheckOut/Data/repos/check_out_repo.dart';
import 'package:dartz/dartz.dart';

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
