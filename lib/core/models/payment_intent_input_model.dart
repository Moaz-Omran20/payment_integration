class PaymentIntentInputModel {
  String amount;
  String currency;

  PaymentIntentInputModel({required this.amount, required this.currency});

  Map<String, String> toJson() {
    return {"amount": amount, "currency": currency};
  }
}
