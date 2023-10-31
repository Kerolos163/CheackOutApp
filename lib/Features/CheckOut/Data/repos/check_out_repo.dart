import 'package:dartz/dartz.dart';

import '../../../../Core/errors/failure.dart';
import '../Models/Payment_Intent_Input_Model/PaymentIntentInputModel.dart';

abstract class CheckOutRepo {
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel});
}
