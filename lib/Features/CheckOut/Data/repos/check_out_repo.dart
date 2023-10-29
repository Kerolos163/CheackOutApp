import 'package:checkoutapp/Core/errors/failure.dart';
import 'package:checkoutapp/Features/CheckOut/Data/Models/Payment_Intent_Input_Model/PaymentIntentInputModel.dart';
import 'package:dartz/dartz.dart';

abstract class CheckOutRepo {
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel});
}
