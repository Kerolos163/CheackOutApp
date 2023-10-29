class PaymentIntentInputModel {
  final String amount;
  final String currency;

  PaymentIntentInputModel({required this.amount, required this.currency});
  tojson() {
    return {
      'amount':(int.parse(amount)*100).toString(),
      'currency': currency,
    };
  }
}
