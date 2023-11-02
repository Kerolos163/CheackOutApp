import 'package:dartz/dartz.dart';

import '../../../../Core/errors/failure.dart';
import '../Models/Payment_Intent_Input_Model/payment_intent_input_model.dart';

abstract class CheckOutRepo {
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel});
}
