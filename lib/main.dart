import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_integration/core/api_keys.dart';

import 'features/checkout/presentation/views/my_cart_view.dart';

void main() async {
  Stripe.publishableKey = ApiKeys.publishableKey;
  runApp(const PaymentIntegration());
}

class PaymentIntegration extends StatelessWidget {
  const PaymentIntegration({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyCartView());
  }
}
