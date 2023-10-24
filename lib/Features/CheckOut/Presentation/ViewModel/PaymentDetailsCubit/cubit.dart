import 'package:bloc/bloc.dart';
import 'package:checkoutapp/Features/CheckOut/Presentation/ViewModel/PaymentDetailsCubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentDetailsCubit extends Cubit<PaymentDetailsState> {
  PaymentDetailsCubit() : super(PaymentDetailsInitState());
  static PaymentDetailsCubit get(context)=>BlocProvider.of(context);
  int selectedMethod = 0;
  changeMethod({required newMethod}) {
    selectedMethod = newMethod;
    emit(ChangePaymentMethodState());
  }
}
