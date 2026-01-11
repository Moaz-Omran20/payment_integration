import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_integration/core/api_keys.dart';
import 'package:payment_integration/core/models/payment_intent_input_model.dart';
import 'package:payment_integration/core/models/payment_intent_model.dart';
import 'package:payment_integration/core/utils/api_service.dart';

class StripeService {
  ApiService apiService = ApiService();

  Future<PaymentIntentModel> createPaymentIntent(
    PaymentIntentInputModel paymentIntentInputModel,
  ) async {
    var response = await apiService.post(
      body: paymentIntentInputModel.toJson(),
      url: "https://api.stripe.com/v1/payment_intents",
      token: ApiKeys.secretKey,
      contentType: '',
    );
    PaymentIntentModel paymentIntentModel = PaymentIntentModel.fromJson(
      response.data,
    );
    return paymentIntentModel;
  }

  Future<void> initPaymentSheet(String paymentIntentClientSecret) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: paymentIntentClientSecret,
        merchantDisplayName: "Moaz Omran",
      ),
    );
  }
}
