import 'dart:developer';

import 'package:checkoutapp/Features/CheckOut/Data/Models/Payment_Intent_Input_Model/PaymentIntentInputModel.dart';
import 'package:checkoutapp/Features/CheckOut/Data/repos/check_out_repo.dart';
import 'package:checkoutapp/Features/CheckOut/Presentation/ViewModel/StribeCubit/stribe_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StribeCubit extends Cubit<StribeState> {
  StribeCubit(this.checkOutRepo) : super(StribeInitial());
  static StribeCubit get(context) => BlocProvider.of(context);
  final CheckOutRepo checkOutRepo;
  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    emit(StribeLoading());
    var data = await checkOutRepo.makePayment(
        paymentIntentInputModel: paymentIntentInputModel);
    data.fold((err) => emit(StribeFailure(error: err.errmessage)),
        (r) => emit(StribeSuccess()));
  }

  @override
  void onChange(Change<StribeState> change) {
    log(change.toString());
    super.onChange(change);
  }
}
