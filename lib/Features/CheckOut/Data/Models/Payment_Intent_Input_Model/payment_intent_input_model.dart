class PaymentIntentInputModel {
  final String amount;
  final String currency;
  final String customerId;

  PaymentIntentInputModel({
    required this.amount,
    required this.currency,
    required this.customerId,
  });
  tojson() {
    return {
      'amount': (int.parse(amount) * 100).toString(),
      'currency': currency,
      'customer': customerId
    };
  }
}
