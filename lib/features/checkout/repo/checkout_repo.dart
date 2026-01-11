import 'package:dartz/dartz.dart';
import 'package:payment_integration/core/errors/failures.dart';

import '../../../core/models/payment_intent_input_model.dart';

abstract class CheckoutRepo {
  Future<Either<Failures, void>> makePayment({
    required PaymentIntentInputModel paymentIntentInputModel,
  });
}
