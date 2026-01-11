import 'package:dartz/dartz.dart';

import 'package:payment_integration/core/errors/failures.dart';

import 'package:payment_integration/core/models/payment_intent_input_model.dart';
import 'package:payment_integration/core/utils/stripe_service.dart';

import 'checkout_repo.dart';

class CheckoutRepoImplementation extends CheckoutRepo {
  StripeService stripeService = StripeService();

  @override
  Future<Either<Failures, void>> makePayment({
    required PaymentIntentInputModel paymentIntentInputModel,
  }) async {
    try {
      await stripeService.makePayment(
        paymentIntentInputModel: paymentIntentInputModel,
      );
      return right(null);
    } catch (e) {
      return left(ServerFailures(errorMessage: e.toString()));
    }
  }
}
